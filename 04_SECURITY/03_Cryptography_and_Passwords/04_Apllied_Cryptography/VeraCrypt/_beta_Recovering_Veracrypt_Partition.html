<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Recovering Veracrypt Partition</title>
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

  <h1>Recovering Veracrypt Partition</h1>

  <h2>Recovering Veracrypt Missing Partition Table in Encrypted Disk or Partition in Linux</h2>

  <h4>Preliminary Notes</h4>
  <ul>
    <li>VeraCrypt related errors:</li>
    <ul>
      <li>Error 8899: This typically indicates a corrupted volume header, which can prevent
        VeraCrypt from mounting the volume.</li>
      <li>Error 11243: This may indicate issues with the partition table or disk structure,
        making it difficult for VeraCrypt to recognize the encrypted partition.</li>
    </ul>
    <li>The backup file created by dd will be the same size as the disk or partition
      being backed up. Ensure that you have enough storage space on the destination
      device.</li>
    <li>The process may take many hours.</li>
  </ul>

  <h2>Backup "bit-by-bit" The Storage Device</h2>

  <p><strong>Important</strong>: Always work on a copy or an image of the disk to avoid
    data loss.11</p>

  <h3>Verify Device Names</h3>

  <p>Use the following commands to verify device names:</p>
  <pre><code>lsblk</code></pre>
  <p>or</p>
  <pre><code>sudo fdisk -l</code></pre>

  <h3>Check SMART status of the disk</h3>

  <h3>Install smartmontools</h3>

<pre><code>
sudo apt update
sudo apt install smartmontools
</code></pre>

  <h3>Run a hardware test</h3>
<pre><code>
sudo smartctl -a /dev/sdX
</code></pre>

  <p>SMART attributes like reallocated sectors and pending sectors are bad signals.</p>

  <h3>Device Backup</h3>

  <h4>Option 1: Backup "bit-by-bit" the Entire Disk Block without Mounting the VeraCrypt Volume</h4>

  <pre><code>
sudo dd if=/dev/sdX of=/path/to/backup.img bs=4M status=progress conv=fsync
</code></pre>

  <h4>Option 2: Backup "bit-by-bit" the Partition by Mounting the VeraCrypt Volume</h4>

  <ol>
    <li><strong>Mount the VeraCrypt Volume</strong>:
<pre><code>
sudo veracrypt --text --mount /dev/sdX1 /media/veracrypt1  --readonly --verbose
</code></pre>
    </li>
    <li><strong>Backup the Partition</strong>:
<pre><code>
sudo dd if=/dev/sdX1 of=/path/to/backup_partition.img bs=4M status=progress conv=fsync
</code></pre>
    </li>
  </ol>

  <h3>Get the backup volume header using a hex tool</h3>

<pre><code>
sudo apt update
sudo apt install wxhexeditor
</code></pre>

  <h4>Procedure for Recovering Data from a Lost Partition</h4>

  <ol>
    <li>Data Recovery Using Hex Editor: Utilize a hex editor such as wxHexEditor to remove
      the corrupted partition segment and recover the encrypted data from the partition,
      specifically from byte offset 1,048,576 (1 MB in binary) to the end of the
      disk. The specified byte offset is a common starting point for many disk recovery
      tasks, but users should adjust this based on their specific situation.</li>
    <li>Correcting the Offset Address: Remove the corrupted partition segment at the
      appropriate offset address corresponding to the start of the copied block.
      For reference on volume format specifications, consult the VeraCrypt documentation
      <a href="https://www.veracrypt.fr/en/VeraCrypt%20Volume%20Format%20Specification.html">here</a>.</li>
    <li>Identify the last byte in the image typically corresponds to the last occurrence
      of a zero byte (00). See the steps:
      <ol>
        <li>Open the backup image in wxHexEditor.</li>
        <li>Navigate to the byte offset 1,048,576 (1 MB).</li>
        <li>Identify and remove the corrupted segment (e.g., look for unusual patterns
          or corrupted data).</li>
        <li>Save the modified image and proceed with mounting it in VeraCrypt.</li>
        <li>See this example video:
          <a href="https://www.youtube.com/watch?v=lDxCSybS8A8">
            <img src="https://markdown-videos-api.jorgenkh.no/url?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DlDxCSybS8A8"
            alt="Extracting VeraCrypt container header and backup header" title="Extracting VeraCrypt container header and backup header"/></a>
        </li>
      </ol>
    </li>
    <li>Backing up the data: After successfully removing the corrupted segment, use the
      hex editor to preserve the remaining encrypted data. Be prepared for this process
      to take several hours. Copy this data as a file to an external storage medium.
    </li>
  </ol>

  <h4>Mount the Recovered VeraCrypt Volume</h4>

  <p>After removing the corrupted segment, mount the VeraCrypt volume by using VeraCrypt
    to access the newly created file containing the partition data, which represents
    the encrypted disk without the corrupted header. You will need to use the correct
    password.</p>

<pre><code>
sudo veracrypt --text --mount /dev/sdX1 /media/veracrypt1 --verbose
</code></pre>

  <p><a href="https://www.wilderssecurity.com/threads/truecrypt-missing-partition-table.336671/page-2">https://www.wilderssecurity.com/threads/truecrypt-missing-partition-table.336671/page-2</a></p>

  <h4>References</h4>

  <p><a href="https://sourceforge.net/p/veracrypt/discussion/general/thread/88db2de70f/?page=1">https://sourceforge.net/p/veracrypt/discussion/general/thread/88db2de70f/?page=1</a></p>

  <p>Notes: A backup of the volume header is stored at the end of the partition, but
    if the partition is reconstructed using a different offset, locating this backup
    can be difficult. To address this, export the absolute offset values for the
    volume header and its backup. This allows for easier recreation of the partition
    at the original position if needed.</p>

  <h2>Others Recovering Tools</h2>

  <h3>TestDisk</h3>

  <p>TestDisk is a powerful open-source tool for data recovery and partition management.
    It can analyze disk structures and recover lost partitions.</p>
  <p>It provides detailed information about partitions, including their offsets.Follow
    the link for a detailed guide:</p>

  <p><a href="https://www.cgsecurity.org/wiki/TestDisk_Step_By_Step">https://www.cgsecurity.org/wiki/TestDisk_Step_By_Step</a></p>

  <h3>PhotoRec</h3>

  <p>PhotoRec is a companion program to TestDisk, and it is specifically designed for
    file recovery rather than partition analysis.</p>
  <p>If necessary for file recovery, you can use PhotoRec. Follow the link for a detailed
    guide:</p>

  <p><a href="https://www.cgsecurity.org/wiki/PhotoRec_Step_By_Step">https://www.cgsecurity.org/wiki/PhotoRec_Step_By_Step</a></p>

</body>
</html>