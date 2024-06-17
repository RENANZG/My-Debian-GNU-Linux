<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Debian Installation Guide with Encrypted LVM</title>
</head>
<body>
  <h1>Installing Debian GNU/Linux with Encrypted LVM using debootstrap</h1>

  <h2>Requirements</h2>
  <ul>
    <li>Debian installation ISO Live or DVD (e.g., Debian 12 "Bookworm")</li>
    <li>A bootable USB drive with the Debian ISO. In Windows, you could write the image with Balena Etcher, Ventoy or Rufus. In Android, with EtchDroid.</li>
    <li>Basic understanding of Linux command-line interface</li>
  </ul>

<p><small>Note: set BIOS to first boot from USB stick and maintain enable Secure Boot, however, if booting from the USB is failing, turn off Secure Boot in the BIOS.</small></p>
<p><small>Note: put a admin password in your BIOS and do not use the same for your disk encryption, do not reuse passwords. Strong password was at least 20 characters.</small></p>
<p><small>Note: disable usb at BIOS startup after installation, you could disable fast boot to avoid issues with Linux.</small></p>
<p><small>Note: disable usb at BIOS startup after installation, you could disable fast boot to avoid issues with Linux.</small></p>
<p><small>Note: if you want to adopt secure measures, read about password entropy, device airgap, BIOS write-protection, Coreboot BIOS, tamper-proofing, kernel runtime guard, anti evil maid, multi-factor authentication, nuke password, custom secure boot keys, hidden encrypted volumes.</small></p>

  <h2>Steps</h2>

  <h3>1. Boot from the Debian Installation Media</h3>
  <p>Boot from your Debian installation media (USB).</p>
  <p>Select the "Advanced options" and then the "Rescue mode" to access a command-line interface.</p>
  <p>You could switch to a teletype (TTY) session pressing <code>Ctrl + Alt + F2</code>.</p>
  <p>You could use the Live that has sudo enabled by default.</p>

 <h3>2. Prepare the Disk</h3>
 <p>To find your devices:</p>
 <pre><code>lsblk</code></pre>
 <pre><code>blkid</code></pre>
  <p>Use <code>fdisk</code> or <code>parted</code> to create the necessary partitions:</p>
  <pre><code>fdisk /dev/sda</code></pre>
  
  <p>Create a small EFI system partition (ESP) and an encrypted partition for LVM:</p>
  
  <ul>
    <li><code>/dev/sda1</code>: EFI System Partition, 100 MiB, FAT32, <code>/boot/efi</code></li>
    <li><code>/dev/sda2</code>: Encrypted LVM partition</li>
  </ul>

  <h3>3. Encrypt the Partition</h3>
  <p>Encrypt the LVM partition (<code>/dev/sda2</code>):</p>
  <pre><code>cryptsetup luksFormat --type luks2 /dev/sda2</code></pre>

  <h3>4. Open the Encrypted Partition</h3>
  <p>Open the encrypted partition using a mapper device name (e.g., <code>cryptroot</code>):</p>
  <pre><code>cryptsetup open /dev/sda2 cryptroot</code></pre>

  <h3>5. Create LVM Volumes</h3>
  <p>Set up LVM on the opened partition (<code>/dev/mapper/cryptroot</code>):</p>
  <pre><code>
pvcreate /dev/mapper/cryptroot
vgcreate host-vg /dev/mapper/cryptroot
lvcreate -L 20G -n root host-vg
lvcreate -L 4G -n swap host-vg
lvcreate -L 16G -n home host-vg
</code></pre>

  <h3>6. Format Filesystems</h3>
  <p>Format the logical volumes:</p>
  <pre><code>
mkfs.ext4 /dev/host-vg/root    # Format root volume
mkfs.ext4 /dev/host-vg/home    # Format home volume
mkswap /dev/host-vg/swap       # Format swap volume
  </code></pre>

  <h3>7. Mount Filesystems</h3>
  <p>Mount the root filesystem (<code>/dev/host-vg/root</code>) to <code>/mnt</code>:</p>
  <pre><code>mount /dev/host-vg/root /mnt</code></pre>
  <p>Create and mount the home directory:</p>
  <pre><code>mkdir /mnt/home
mount /dev/host-vg/home /mnt/home</code></pre>
  <p>Mount the ESP (<code>/dev/sda1</code>):</p>
  <pre><code>mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi</code></pre>

  <h3>8. Install Base System with debootstrap</h3>
  <p>Install <code>debootstrap</code> if not already installed:</p>
  <pre><code>apt-get update
apt-get install debootstrap</code></pre>
  <p>Use <code>debootstrap</code> to install the base Debian system into <code>/mnt</code>:</p>
  <pre><code>debootstrap --arch amd64 bullseye /mnt</code></pre>
  <p>Replace <code>bullseye</code> with your Debian release codename (e.g., <code>buster</code>, <code>bookworm</code>).</p>

  <h3>9. Configure Installed System</h3>
  <p>Mount necessary filesystems for the chroot environment:</p>
  <pre><code>mount --bind /dev /mnt/dev
mount --bind /dev/pts /mnt/dev/pts
mount --bind /proc /mnt/proc
mount --bind /sys /mnt/sys</code></pre>
  <p>Chroot into the installed system:</p>
  <pre><code>chroot /mnt /bin/bash</code></pre>
  <p>Set the timezone:</p>
  <pre><code>ln -sf /usr/share/zoneinfo/Your/Timezone /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata</code></pre>
  <p>Set the locale:</p>
  <pre><code>echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf</code></pre>

  <h3>10. Install and Configure Bootloader</h3>
  <p>Install GRUB bootloader:</p>
  <pre><code>apt-get install grub-efi
grub-install /dev/sda
update-grub</code></pre>

  <h3>11. Set Root Password and Exit</h3>
  <p>Set the root password:</p>
  <pre><code>passwd</code></pre>
  <p>Exit the chroot environment and unmount filesystems:</p>
  <pre><code>exit
umount -R /mnt
cryptsetup close cryptroot</code></pre>

  <h3>12. Reboot and Finalize Installation</h3>
  <p>Reboot your system:</p>
  <pre><code>reboot</code></pre>
  <p>After rebooting, Debian GNU/Linux with encrypted LVM should be installed and ready to use.</p>

</body>
</html>
