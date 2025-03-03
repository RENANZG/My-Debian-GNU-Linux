<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Encryption for Linux and Multi-Device Compatibility</title>
</head>
<body>

<h1>Encryption for Linux and Multi-Device Compatibility</h1>

<p>Approach</p>
<ul>
  <li>Linux Only</li>
  <ul>
  <li>EXT4 + LUKS</li>
  </ul>
  <li>Multi-Device</li>
  <ul>
  <li>exFAT + VeraCrypt</li>
  </ul>
</ul>

<h2>Reliable Encryption for External Drive in Linux</h3>

<h3>Option 1: Using EXT4 and LUKS Encryption with GUI Tools</h3>

<h4>Step 1: Format Your Filesystem as EXT4</h4>

<p>EXT4 is a Linux-native filesystem that works well. Follow these steps:</p>

<ol>
  <li>
    <p>Install GParted:</p>
<pre><code>
sudo apt update
sudo apt install gparted
</code></pre>
  </li>
  <li>
    <p>Open GParted:</p>
    <ul>
      <li>Launch GParted from your application menu.</li>
      <li>Select your device from the dropdown menu in the top-right corner.</li>
    </ul>
  </li>
  <li>
    <p>Create a Partition Table:</p>
    <ul>
      <li>Click Device in the top menu &rarr; Create Partition Table&hellip;.</li>
      <li>Choose GPT from the dropdown menu and click Apply.</li>
    </ul>
  </li>
  <li>
    <p>Partition and Format as EXT4:</p>
    <ul>
      <li>Right-click on the unallocated space &rarr; New.</li>
      <li>Choose ext4 from the "File system" dropdown menu.</li>
      <li>Add a label (optional) and click Add.</li>
      <li>Click the green checkmark to Apply All Operations.</li>
    </ul>
  </li>
</ol>

<h4>Step 2: Encryption with LUKS</h4>

<p>*LUKS vs VeraCrypt</p>

<p>LUKS (Linux Unified Key Setup) provides disk encryption. Use the Gnome Disks GUI
  to configure it:</p>
<ol>
  <li>
    <p>Install Gnome Disks (if not already installed):</p>
<pre><code>sudo apt update
sudo apt install gnome-disk-utility
</code></pre>
  </li>
  <li>
    <p>Open Gnome Disks:</p>
    <ul>
      <li>Launch Gnome Disks from your application menu.</li>
      <li>Select your drive from the list on the left.</li>
    </ul>
  </li>
  <li>
    <p>Encrypt the Partition:</p>
    <ul>
      <li>Click the gear icon &rarr; Format Partition&hellip;.</li>
      <li>Choose Ext4 (LUKS Encrypted) from the "Type" dropdown menu.</li>
      <li>Set a passphrase and click Next &rarr; Format.</li>
    </ul>
  </li>
  <li>
    <p>Mount the Encrypted Drive:</p>
    <ul>
      <li>After formatting, unlock the drive by entering your passphrase when prompted.</li>
    </ul>
  </li>
</ol>

<hr>

<h2>Reliable Encryption for External Drive for Multi-Device Compatibility with GUI Tools</h2>

<h3>For Multi-Device Compatibility Using exFAT</h3>

<p>*exFAT vs NTFS</p>

<p>To share files between Linux, Android, Windows, and Mac, use the exFAT
filesystem.</p>

<h4>Step 1: Prepare Your Drive</h4>

<ol>
  <li>
    <p>Open GParted:</p>
    <ul>
      <li>Launch GParted and select your device.</li>
    </ul>
  </li>
  <li>
    <p>Create a GPT Partition Table:</p>
    <ul>
      <li>Click Device &rarr; Create Partition Table&hellip;
      &rarr; Choose GPT &rarr; Click Apply.</li>
    </ul>
  </li>
  <li>
    <p>Partition the Disk:</p>
    <ul>
      <li>Right-click on the unallocated space &rarr; New.</li>
      <li>Choose fat32 (temporary) from the "File system" dropdown menu.</li>
      <li>Add a label (optional) and click Add.</li>
      <li>Click the green checkmark to Apply All Operations.</li>
    </ul>
  </li>
</ol>

<h4>Step 2: Format as exFAT via Command Line</h4>

<p>GParted cannot format to exFAT, so we need to use CLI:</p>
<ol>
  <li>
    <p>Unmount the Drive:</p>
<pre><code>
sudo umount /media/your_name/your_disk
</code></pre>
  </li>
  <li>
    <p>Install exFAT Tools:</p>
<pre><code>
sudo apt update
sudo apt install exfat-fuse exfat-utils exfatprogs
</code></pre>
  </li>
  <li>
    <p>Format the Partition as exFAT: Replace <code>/dev/sdX1</code>
    with your partition (e.g., <code>/dev/sdb1</code>):</p>
<pre><code>
sudo mkexfatfs -n "External" /dev/sdX1
</code></pre>
    <ul>
      <li><code>-n "External"</code>: Sets the volume label.</li>
    </ul>
  </li>
  <li>
    <p>Verify the Format:</p>
    <ul>
      <li>Reconnect the drive and check if it mounts correctly.</li>
    </ul>
  </li>
</ol>

<h4>Step 3: Install VereCrypt</h4>

</body>
</html>