# /srv/user_salt/dev_policy/dev_tools.sls
install-tools:
  pkg.installed:
    - pkgs:
      - git
      - curl