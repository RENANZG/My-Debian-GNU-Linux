  # /srv/user_salt/work_policy/work_apps.sls
  install-work-tools:
    pkg.installed:
      - pkgs:
        - keepassxc
        - cherrytree
        - geany
