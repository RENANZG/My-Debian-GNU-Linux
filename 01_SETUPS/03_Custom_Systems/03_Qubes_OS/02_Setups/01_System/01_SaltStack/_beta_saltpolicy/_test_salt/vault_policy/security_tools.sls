  # /srv/user_salt/vault_policy/security_tools.sls
  install-vault-tools:
    pkg.installed:
      - pkgs:
        - keepassxc
        - sirikali
