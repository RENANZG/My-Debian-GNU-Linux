# Cheatsheet
## Create a key pair
```
gpg --full-gen-key
...
Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
Your selection? 1
RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (2048) 
Requested keysize is 2048 bits
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 1y
...
GnuPG needs to construct a user ID to identify your key.

Real name: <name>
Email address: <email>
Comment: <comment>
...
```

## List keys
```
gpg -k
gpg --keyid-format long --list-keys
gpg --keyid-format long --list-keys <email>
```

## Export key
```
gpg --output pubkey.gpg --armor --export <email>
```

## Delete keys from keyring
```
gpg --delete-secret-and-public-key <keyid>
```

## Upload keys to keyservers
```
gpg --send-keys <keyid>
```

## Download keys from keyservers
```
gpg --recv-keys <keyid>
```

## Search keys on keyservers
```
gpg --search-keys <name or email>
```

## Import key
```
gpg --import key.asc
```

## Print key fingerprint
```
gpg fingerprint <keyid>
```

## Sign key
```
gpg --sign-key <keyid>
```

## List signatures
```
gpg --list-sigs <keyid>
```

## Export keys and trustdb for backup purposes
```
$ gpg -a --export <keyid> > public-gpg.key
$ gpg -a --export-secret-keys <keyid> > secret-gpg.key
$ gpg --export-ownertrust > ownertrust-gpg.txt
```

## Change expiration date of a key
```
gpg --edit-key <keyid>
gpg> expire
Changing expiration time for the primary key.
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 1y
...
gpg> save
gpg --send-keys <keyid>
```

## Symmetric encryption
```
gpg --symmetric --cipher-algo AES256 file.txt # encrypt
gpg -d file.txt.gpg # decrypt
```

## Force agent to forget passwords
```
gpgconf --reload gpg-agent
```

## Change ttl of cached keys
Add the following to $HOME/.gnupg/gpg-agent.conf:
```
default-cache-ttl 1800
max-cache-ttl 1800
```

Then reload the agent:
```
gpgconf --kill gpg-agent
```