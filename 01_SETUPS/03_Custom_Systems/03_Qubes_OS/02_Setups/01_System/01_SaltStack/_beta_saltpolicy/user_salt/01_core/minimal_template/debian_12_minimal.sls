{% set debianver = salt['pillar.get']('debianver', 'debian-12') %}

{% if grains['id'] == 'dom0' %}

# Ensure the minimal Debian template is installed
ensure-{{ debianver }}-minimal-installed:
  qvm.template_installed:
    - name: {{ debianver }}-minimal
    - fromrepo: qubes-templates-itl

# Create a core template for customization
create-{{ debianver }}-core:
  qvm.clone:
    - name: {{ debianver }}-core
    - source: {{ debianver }}-minimal
    - require:
      - qvm: ensure-{{ debianver }}-minimal-installed

# Create the main core template VM
create-qubes-core-template:
  qvm.vm:
    - name: qubes-core-template
    - present:
      - template: {{ debianver }}-core
      - label: red
    - prefs:
      - virt_mode: pvh
      - template-for-dispvms: true
      - memory: 400
      - maxmem: 4000
      - vcpus: 2
    - require:
      - qvm: create-{{ debianver }}-core

# Resize volume for core template
resize-core-volume:
  cmd.run:
    - name: qvm-volume resize qubes-core-template:private 20000000000

# Create a client template for Split SSH
create-ssh-client-template:
  qvm.clone:
    - name: {{ debianver }}-ssh-client
    - source: {{ debianver }}-minimal
    - require:
      - qvm: ensure-{{ debianver }}-minimal-installed

# Create a vault template for Split SSH
create-ssh-vault-template:
  qvm.clone:
    - name: {{ debianver }}-ssh-vault
    - source: {{ debianver }}-minimal
    - require:
      - qvm: ensure-{{ debianver }}-minimal-installed

# Define core template policies
core-policy:
  file.managed:
    - name: /etc/qubes/policy.d/30-core-template.policy
    - contents: |
        admin.vm.CreateDisposable * qubes-core-template allow
        qubes.VMShell * qubes-core-template allow
    - require:
      - cmd: resize-core-volume

{% elif grains['id'] == [debianver, '-core']|join %}

# Install essential packages for the core template
update-core-template:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-passwordless-root
      - qubes-core-agent-thunar
      - xfce4-terminal
      - unzip
      - gnupg
      - gpg
      - openssl
      - curl
      - qubes-gpg-split
      - build-essential

{% elif grains['id'] == [debianver, '-ssh-client']|join %}

# Install necessary packages for the SSH client template
install-ssh-client-packages:
  pkg.installed:
    - pkgs:
      - openssh-client
      - socat

{% elif grains['id'] == [debianver, '-ssh-vault']|join %}

# Install necessary packages for the SSH vault template
install-ssh-vault-packages:
  pkg.installed:
    - pkgs:
      - ssh-askpass-gnome
      - socat
      - libnotify-bin
      - keepassxc

{% endif %}
