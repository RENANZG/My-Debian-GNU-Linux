https://github.com/QubesOS/qubes-issues/issues/8774

1. Set up `/srv/user_salt/` with sudo qubesctl state.sls qubes.user-dirs
2. Create `/srv/user_salt/fed-min-qubes-dev.sls` with content pasted.
3. Create `/srv/user_salt/fed-min-qubes-dev.top` with content pasted.
4. Run `sudo qubesctl top.enable fed-min-qubes-dev pillarenv=user saltenv=user` in dom0.
5. Run `sudo qubesctl state.highstate`, and qubes development environment should be ready.

A salt file to configure a Qubes OS minimal debian template


fed-min-qubes-dev.sls:


{% set fedoraver = salt['pillar.get']('fedoraver', 'fedora-38') %}

{% if grains['id'] == 'dom0' %}

ensure-{{ fedoraver }}-minimal-installed:
  qvm.template_installed:
    - name: {{ fedoraver }}-minimal
    - fromrepo: qubes-templates-itl

create-{{ fedoraver }}-builder:
  qvm.clone:
    - name: {{ fedoraver }}-builder
    - source: {{ fedoraver }}-minimal
    - require:
      - qvm: ensure-{{ fedoraver }}-minimal-installed

create-qubes-builder-dvm:
  qvm.vm:
    - name: qubes-builder-dvm
    - present:
      - template: {{ fedoraver }}-builder
      - label: red
    - prefs:
      - virt_mode: pvh
      - label: red
      - template-for-dispvms: true
      - memory: 800
      - maxmem: 8000
      - vcpus: 6
    - require:
      - qvm: create-{{ fedoraver }}-builder

create-qubes-work:
  qvm.vm:
    - name: qubes-work
    - present:
      - template: {{ fedoraver }}-builder
      - label: red
    - prefs:
      - virt_mode: pvh
      - label: red
      - memory: 400
      - maxmem: 1000
      - default-dispvm: qubes-builder-dvm
    - require:  
      - qvm: create-qubes-builder-dvm

resize-builder-volume:
  cmd.run:
    - name: qvm-volume resize qubes-builder-dvm:private 32212254720 ;qvm-volume resize qubes-work:private 32212254720

builder-policy:
  file.managed:
    - name: /etc/qubes/policy.d/30-qubesbuilder.policy
    - contents: |
        admin.vm.CreateDisposable * qubes-work qubes-builder-dvm allow target=dom0
        admin.vm.Start * qubes-work @tag:disp-created-by-qubes-work allow target=dom0
        admin.vm.Kill * qubes-work @tag:disp-created-by-qubes-work allow target=dom0
        qubesbuilder.FileCopyIn * qubes-work @tag:disp-created-by-qubes-work allow
        qubesbuilder.FileCopyOut * qubes-work @tag:disp-created-by-qubes-work allow
        qubes.Filecopy * qubes-work @tag:disp-created-by-qubes-work allow
        qubes.WaitForSession * qubes-work @tag:disp-created-by-qubes-work allow
        qubes.VMShell * qubes-work @tag:disp-created-by-qubes-work allow


{% elif grains['id'] == [fedoraver, '-builder']|join %}

update:
  cmd.run:
    - name: dnf install -y qubes-core-agent-networking qubes-core-agent-passwordless-root qubes-core-agent-thunar xfce4-terminal unzip wqy-microhei-fonts python3-packaging createrepo_c devscripts gpg python3-pyyaml rpm reprepro python3-pathspec mktorrent rpm-sign tree mock openssl python3-jinja2-cli m4 asciidoc rsync qubes-gpg-split dnf-plugins-core debootstrap dpkg-dev git mock pbuilder which perl-Digest-MD5 perl-Digest-SHA  python3-sh rpm-build rpmdevtools wget python3-debian python3-lxml systemd-udev python3-click qubes-gpg-split

{% elif grains['id'] == 'qubes-builder-dvm' %}
  
builderdirectory:
  cmd.run:
    - name: mkdir -p /rw/bind-dirs/builder /rw/config/qubes-bind-dirs.d ; echo "binds+=('/builder')" > /rw/config/qubes-bind-dirs.d/builder.conf ;

appendrc:
  file.append:
    - name: /rw/config/rc.local
    - text: mount /builder -o dev,suid,remount

{% elif grains['id'] == 'qubes-work' %}

git-fetch:
  cmd.run:
    - name: cd /home/user ; git clone https://github.com/QubesOS/qubes-infrastructure-mirrors ; git clone /https://github.com/QubesOS/qubes-builderv2
    - runas: user
install-infrastructure:
  cmd.run:
    - name: cd /home/user/qubes-infrastructure-mirrors ; python3 setup.py build ; python3 setup.py install

{% endif %}


fed-min-qubes-dev.top:


{% set fedoraver = salt['pillar.get']('fedoraver', 'fedora-38') %}

user:
  dom0 or {{ fedoraver }}-builder or qubes-builder-dvm or qubes-work:
    - fed-min-qubes-dev
  
  
  
builderv2:
  
  
  
{% elif grains['id'] == [fedoraver, '-builder']|join %}

update:
  cmd.run:
    - name: dnf install -y qubes-core-agent-networking qubes-core-agent-passwordless-root qubes-core-agent-thunar xfce4-terminal unzip wqy-microhei-fonts python3-packaging createrepo_c devscripts gpg python3-pyyaml rpm reprepro python3-pathspec mktorrent rpm-sign tree mock openssl python3-jinja2-cli m4 asciidoc rsync qubes-gpg-split dnf-plugins-core debootstrap dpkg-dev git mock pbuilder which perl-Digest-MD5 perl-Digest-SHA  python3-sh rpm-build rpmdevtools wget python3-debian python3-lxml systemd-udev python3-click qubes-gpg-split

{% elif grains['id'] == 'qubes-builder-dvm' %}

builderdirectory:
  cmd.run:
    - name: mkdir -p /rw/bind-dirs/builder /rw/config/qubes-bind-dirs.d ; echo "binds+=('/builder')" > /rw/config/qubes-bind-dirs.d/builder.conf ;

appendrc:
  file.append:
    - name: /rw/config/rc.local
    - text: mount /builder -o dev,suid,remount

{% elif grains['id'] == 'qubes-work' %}

git-fetch:
  cmd.run:
    - name: cd /home/user ; git clone https://github.com/QubesOS/qubes-infrastructure-mirrors ; git clone /https://github.com/QubesOS/qubes-builderv2
    - runas: user
install-infrastructure:
  cmd.run:
    - name: cd /home/user/qubes-infrastructure-mirrors ; python3 setup.py build ; python3 setup.py install

{% endif %}