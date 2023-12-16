# Create encrypted flash drive
```
$ sudo fdisk /dev/sdb
Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1): 1
First sector (2048-60555263, default 2048): 
Last sector, +sectors or +size{K,M,G,T,P} (2048-60555263, default 60555263): 

Created a new partition 1 of type 'Linux' and of size 28.9 GiB.

Command (m for help): p
Disk /dev/sdb: 28.9 GiB, 31004295168 bytes, 60555264 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x35265a64

Device     Boot Start      End  Sectors  Size Id Type
/dev/sdb1        2048 60555263 60553216 28.9G 83 Linux

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.

$ sudo cryptsetup luksFormat /dev/sdb1
$ sudo cryptsetup luksOpen /dev/sdb1 LUKS0001
$ sudo mkfs.ext4 /dev/mapper/LUKS0001 -L <label>
$ sudo cryptsetup luksClose LUKS0001

With the commands above the label is properly set once the LUKS container is opened. To have a proper label as soon as the flash drive is inserted use the following command:
$ sudo cryptsetup config /dev/sdb1 --label <label>

Finally you may want to change ownership of the filesystem. When the drive is mounted do:
$ sudo chown <user>:<user> -R /path/to/mounted/volume
```
# Manually mount encrypted LVM logical volume
## Identify the encrypted device
```
$ sudo lsblk -f /dev/sdb
NAME   FSTYPE      LABEL UUID                                 MOUNTPOINT
sdb                                                           
├─sdb1 ext2              763b1a31-0a41-453c-aebb-8f28e45b19db 
├─sdb2                                                        
└─sdb5 crypto_LUKS       92e4fc6c-eac0-434e-9d4c-316449a0f122 
$ sudo file -s /dev/sdb5
/dev/sdb5: LUKS encrypted file, ver 1 [aes, xts-plain64, sha1] UUID: 92e4fc6c-eac0-434e-9d4c-316449a0f122
```

## Open LUKS device
```
$ sudo cryptsetup luksOpen /dev/sdb5 encrypted_device
Enter passphrase for /dev/sdb5: ****************
```

## Identify volume group
```
$ sudo vgdisplay --short
  "alice-vg" <465.52 GiB [<465.52 GiB used / 0    free]
  "bob-vg" <1.82 TiB [<1.82 TiB used / 0    free]
```

## List logical volumes
```
$ sudo lvs -o lv_name,lv_size -S vg_name=bob-vg
  LV     LSize  
  root     1.80t
  swap_1 <15.73g
```

## Activate logical volumes
```
$ sudo lvchange -ay bob-vg/root
```

## Mount the filesystem
```
$ sudo mount /dev/bob-vg/root /mnt
```

## Unmount and deactivate
```
$ sudo umount /dev/bob-vg/root
$ sudo lvs -S "lv_active=active && vg_name=bob-vg"
$ sudo lvchange -an bob-vg/root
$ sudo cryptsetup luksClose encrypted_device
```

# Change the encryption passphrase
There are actually 8 passphrase slots with LUKS encryption. To check which slots are being used:
```
cryptsetup luksDump /dev/<encrypted device>
```
**Note:** in case you have a typical FDE setup (LVM+LUKS) the encrypted device will be the physical partition. Typically /dev/sda1 is boot, /dev/sda2 is a primary partition which contains secondary partition /dev/sda5, and /dev/sda5 is the actual encrypted device.

Add a new passphrase:
```
cryptsetup  luksAddKey /dev/<encrypted device>
```

Remove a passphrase:
```
cryptsetup  luksRemoveKey /dev/<encrypted device>
```

# Create an encrypted partition with a key file
In addition in a passphrase you can use a key file to open an encrypted container. This is convenient for additional encrypted containers, no need to enter multiple passphrases at boot.

**Important:** to avoid losing access if the key file is damaged or lost, always use a passphrase for the first LUKS key slot.

## Create the key file
```
sudo mkdir /etc/luks-keys/
sudo dd if=/dev/urandom of=/etc/luks-keys/mykey bs=512 count=8
sudo chmod 0600 /etc/luks-keys/mykey
```

## Create the encrypted container
```
# Format the device, you will have to enter a passphrase
sudo cryptsetup -y -v luksFormat --type luks /dev/sdb1

# Check the container can be opened with the passphrase
sudo cryptsetup open /dev/sdb1 mycrypt
sudo cryptsetup close mycrypt

# Add the key file in the second key slot
sudo cryptsetup -v luksAddKey /dev/sdb1 /etc/luks-keys/mykey

# Check the container can be opened with the key file
sudo cryptsetup open /dev/sdb1 mycrypt --key-file=/etc/luks-keys/mykey

# Format it and mount it
mkfs.ext4 /dev/mapper/mycrypt
mount /dev/mapper/mycrypt /mnt

# Get the container UUID and add it to /etc/crypttab to have it opened at boot
sudo cryptsetup luksDump /dev/sdb1 | grep "UUID"
echo 'mycrypt    UUID=__my_fancy_UUID__ /etc/luks-keys/mykey luks' >> /etc/crypttab

# Update /etc/fstab
/dev/mapper/mycrypt /mnt ext4 defaults 0 2
```
