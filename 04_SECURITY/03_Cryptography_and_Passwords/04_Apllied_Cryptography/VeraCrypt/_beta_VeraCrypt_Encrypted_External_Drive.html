<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VeraCrypt Encrypted External Drive</title>
<style>
  /* Generic style */
  body {
       font-family: Arial, sans-serif;
       line-height: 1.6;
       margin: 1em;
       max-width: 800px;
      /* Limit screen maximum width */
       margin-left: auto;
       margin-right: auto;
  }
   h1, h2, h3, h4, h5, h6 {
       font-weight: bold;
       margin-bottom: 0.5em;
  }
   h1 {
       font-size: 2.5em;
       line-height: 1.2;
  }
   h2 {
       font-size: 2em;
       line-height: 1.3;
  }
   h3 {
       font-size: 1.8em;
       line-height: 1.4;
  }
   p {
       margin: 1em 0;
       text-align: justify;
      /* Justify text for better readability */
  }
   a {
       color: #007bff;
       text-decoration: none;
  }
   a:hover {
       text-decoration: underline;
  }
   blockquote {
       margin: 1em 0;
       padding: 0 1em;
       border-left: 3px solid #ccc;
  }
   blockquote cite {
       font-style: italic;
  }
   img {
       max-width: 100%;
       height: auto;
       display: block;
       margin: 1em 0;
  }
   pre {
       background-color: #f8f9fa;
       border: 1px solid #ccc;
       padding: 1em;
       overflow: auto;
       white-space: pre-wrap;
      /* Wrap long lines in preformatted text */
  }
   code {
       font-family: Consolas, Monaco, 'Andale Mono', monospace;
       font-size: 0.9em;
  }
  /* Tables */
   table {
       width: 100%;
       border-collapse: collapse;
       margin-bottom: 1em;
  }
   th, td {
       border: 1px solid #ccc;
       padding: 0.8em;
  }
   th {
       background-color: #f2f2f2;
  }
  /* Lists */
   ul, ol {
       margin: 1em 0;
       padding-left: 2em;
  }
  /* Miscellaneous */
   sup {
       vertical-align: super;
       font-size: smaller;
  }
   sub {
       vertical-align: sub;
       font-size: smaller;
  }
   @media screen and (max-width: 600px) {
      /* Adjustments for smaller screens */
       body {
           font-size: 16px;
          /* Decrease font size for better readability */
           line-height: 1.5;
           margin: 0.5em;
      }
       h1 {
           font-size: 2em;
      }
       h2 {
           font-size: 1.8em;
      }
       h3 {
           font-size: 1.6em;
      }
       th, td {
           padding: 0.6em;
      }
       pre {
           padding: 0.5em;
      }
  }
</style>
</head>
<body>

<h1>VeraCrypt Encrypted External Drive</h1>

 <p>Why VeraCrypt is a good choice for encryption: open-source, cross-platform support, strong encryption algorithms and deniable encription support.</p>

<h3>Considerations about Reliability in Encrypted Devices</h3>

<ul>
  <li>Choose reliable hardware: Use high-quality hardware for storing valuable encrypted data to minimize the risk of failures.</li>
  <li>Verify password accuracy: Implement a method to confirm that the password is correct, such as using mnemonic techniques, password manager or a secure password storage solution.</li>
  <li>Backup VeraCrypt volume header: Ensure you have a secure backup of the VeraCrypt header to recover the volume if needed.</li>
  <li>If possible, backup technical details about the volume:
  <ul>
   <li>System version used to create the volumes</li>
   <li>Software version used to create the volumes</li>
   <li>Partition table</li>
   <li>Filesystem</li>
   <li>Encryption algorithms</li>
   <li>Key derivation function</li>
   <li>Volume Offset Address</li>
   </ul>
   </li>
  <li>Keep software updated: Regularly update encryption software to protect against vulnerabilities and ensure compatibility with new systems.</li>
  <li>Plan for disaster recovery: Develop a comprehensive disaster recovery plan and avoid taking imprudent actions in context of a failure.</li>
  <li>Document pre-disaster events:</li>
   <ul>
   <li>Maintain a log of actions and changes made</li>
   <li>Determine the version of the system</li>
   <li>Determine the version of the software</li>
   <li>Discard basic errors, such as checking that the letters of units used are reserved or typos</li>
   </ul>
   </li>
  <li>Regularly test backups: Periodically test your backups to ensure they can be restored successfully and that the data is intact.</li>
  <li>Monitor hardware health: Regularly check the health of storage devices to detect potential failures early.</li>
</ul>

<h3>Cautions during the procedure</h3>

<ul>
  <li>Make sure to replace <code>/dev/sdX</code> and <code>/dev/sdX1</code> with the actual device names.</li>
  <li>Be careful when working with disk partitions and encryption, as mistakes can result in data loss.</li>
  <li>For Windows compatibility, consider using NTFS or exFAT as the filesystem.</li>
</ul>

<h2>Creating a VeraCrypt Encrypted External Drive in Linux</h2>

<ol>
  <li>Download the Debian .deb file from VeraCrypt's website https://veracrypt.fr/en/Downloads.html</li>
  <li>Install VeraCrypt: and install it using the following command:
  <pre>$ sudo apt install -f ./veracrypt-XX-Debian-XX-amd64.deb</pre>
  </li>
  <li>Plug in and identify the correct USB device
  <pre><code>lsblk</code></pre>
  <p>or</p>
  <pre><code>sudo fdisk -l</code></pre>
  </li>
  <li>If mounted, unmount USB stick
  <pre>$ sudo umount /dev/sdX</pre>
  </li>
  <li>Erase the entire USB stick with zeros to ensure no residual data remains on the drive using
  <pre>$ sudo dd if=/dev/zero of=/dev/sdX bs=4k</pre>
  </li>
  <li>Create a partition with <code>fdisk</code>:
  <pre>$ sudo fdisk /dev/sdX</pre>
  </li>
  <li>Single command option
<pre><code>
(
echo o # Create a new empty DOS (MBR) partition table
echo n # Add a new partition
echo p # Primary partition
echo 1 # Partition number
echo   # First sector (Accept default: 1)
echo   # Last sector (Accept default: varies)
echo w # Write changes and exit
) | sudo fdisk /dev/sdX
</code></pre>
  </li>
  <li>Create a VeraCrypt volume using <code>normal</code> encrypted volume with <code>ext4</code> suitable for Linux filesystem:
    <pre>$ veracrypt -t -c --volume-type=normal --filesystem=ext4 --random-source=/dev/urandom /dev/sdX1</pre>
    Follow the prompts to set up the volume, including the password and other options. Note: Ensure you specify the correct partition (e.g., /dev/sdX1). If you omit the partition number, VeraCrypt will write the filesystem directly to the block device, which may cause issues.
  </li>
  <li>Mount the VeraCrypt volume using the following command:
    <pre>$ veracrypt --mount /dev/sdX1 /media/veracrypt1</pre>
    Replace <code>/media/veracrypt1</code> with the desired mount point.
  </li>
</ol>

<h4>References</h4>

<p><a href="https://www.veracrypt.fr/en/Home.html">https://www.veracrypt.fr/en/Home.html</a></p>
<p><a href="https://www.veracrypt.fr/en/Documentation.html">https://www.veracrypt.fr/en/Documentation.html</a></p>
<p><a href="https://www.reddit.com/r/VeraCrypt">https://www.reddit.com/r/VeraCrypt</a></p>
<p><a href="https://sourceforge.net/p/veracrypt/discussion/technical/">https://sourceforge.net/p/veracrypt/discussion/technical/</a></p>

  
</body>
</html>
