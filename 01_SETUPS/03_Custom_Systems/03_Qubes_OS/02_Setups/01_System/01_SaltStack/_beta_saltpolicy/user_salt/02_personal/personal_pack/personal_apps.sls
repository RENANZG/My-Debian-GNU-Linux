# /srv/user_salt/personal_policy/personal_apps.sls
install-personal-tools:
  pkg.installed:
    - pkgs:
      - keepassxc
      - mpv
      - evice
      - xournal