<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cryptsetup Encrypted Flash Drive</title>
<style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      border: 1px solid #000;
      padding: 8px;
      text-align: left;
    }
    th {
      background-color: #f2f2f2;
    }
    pre, code {
      background-color: #f4f4f4;
      padding: 10px;
      border-radius: 5px;
      display: block;
      margin: 2px 0;
      overflow-x: auto;
    }
    button {
      margin-top: 5px;
      padding: 5px 10px;
      font-size: 1em;
      cursor: pointer;
    }
    hr {
      margin: 20px 0;
      border: 0;
      border-top: 1px solid #ccc;
    }
</style>
</head>
<body>

  <h1>Cryptsetup Encrypted Flash Drive</h1>

  <h2>Creating a Partition</h2>
  <p>Use <code>fdisk</code> to create a new partition on your flash drive:</p>
  <pre><code>$ sudo fdisk /dev/sdb</code></pre>
  <p>Follow the prompts to create a new partition:</p>
  <pre>
Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1): 1
First sector (2048-60555263, default 2048):
Last sector, +sectors or +size{K,M,G,T,P} (2048-60555263, default 60555263):
  </pre>
  <p>After creating the partition, write the changes to disk:</p>
  <pre>
Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
  </pre>

  <h2>Setting Up LUKS Encryption</h2>
  <p>Format the partition with LUKS encryption:</p>
  <pre><code>$ sudo cryptsetup luksFormat /dev/sdb1</code></pre>
  <p>Open the LUKS container and create a filesystem:</p>
  <pre>
$ sudo cryptsetup luksOpen /dev/sdb1 LUKS0001
$ sudo mkfs.ext4 /dev/mapper/LUKS0001 -L &lt;label&gt;
$ sudo cryptsetup luksClose LUKS0001
  </pre>
  <p>Set the label for the LUKS container:</p>
  <pre><code>$ sudo cryptsetup config /dev/sdb1 --label &lt;label&gt;</code></pre>
  <p>Change ownership of the filesystem after mounting:</p>
  <pre><code>$ sudo chown &lt;user&gt;:&lt;user&gt; -R /path/to/mounted/volume</code></pre>

  <hr>

  <h2>Manually Mount Encrypted LVM Logical Volume</h2>
  <h3>Identify the Encrypted Device</h3>
  <pre>
$ sudo lsblk -f /dev/sdb
NAME   FSTYPE    LABEL UUID                 MOUNTPOINT
sdb  
├─sdb1 ext2        12345678-9abc-def0-1234-56789abcdef0
├─sdb2  
└─sdb5 crypto_LUKS     abcdef12-3456-789a-bcde-f0123456789a
$ sudo file -s /dev/sdb5
/dev/sdb5: LUKS encrypted file, ver 1 [aes, xts-plain64, sha1] UUID: abcdef12-3456-789a-bcde-f0123456789a
  </pre>

  <h3>Open LUKS Device</h3>
  <pre>
$ sudo cryptsetup luksOpen /dev/sdb5 encrypted_device
Enter passphrase for /dev/sdb5: ****************
  </pre>

  <h3>Identify Volume Group</h3>
  <pre>
$ sudo vgdisplay --short
  "alice-vg" &lt;466 GiB [&lt;466 GiB used / 0 free]
  "bob-vg" &lt;1.82 TiB [&lt;1.82 TiB used / 0 free]
  </pre>

  <h3>List Logical Volumes</h3>
  <pre>
$ sudo lvs -o lv_name,lv_size -S vg_name=bob-vg
  LV    LSize  
  root  1.8T
  swap_1  16G
  </pre>

  <h3>Activate Logical Volumes</h3>
  <pre><code>$ sudo lvchange -ay bob-vg/root</code></pre>

  <h3>Mount the Filesystem</h3>
  <pre><code>$ sudo mount /dev/bob-vg/root /mnt</code></pre>

  <h3>Unmount and Deactivate</h3>
  <pre>
$ sudo umount /mnt
$ sudo lvchange -an bob-vg/root
$ sudo cryptsetup luksClose encrypted_device
  </pre>

  <hr>

  <h2>Change the Encryption Passphrase</h2>
  <p>LUKS supports up to 8 passphrase slots. To check which slots are in use:</p>
  <pre><code>$ sudo cryptsetup luksDump /dev/[encrypted_device]</code></pre>
  <p>Add a new passphrase:</p>
  <pre><code>$ sudo cryptsetup luksAddKey /dev/&lt;encrypted_device&gt;</code></pre>
  <p>Remove a passphrase:</p>
  <pre><code>$ sudo cryptsetup luksRemoveKey /dev/&lt;encrypted_device&gt;</code></pre>

</body>
</html>