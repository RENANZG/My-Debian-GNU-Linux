<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Data Recovery Techniques Overview</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }
    th, td {
      border: 1px solid black;
      padding: 8px;
      text-align: left;
    }
    th {
      background-color: #f2f2f2;
    }
</style>
</head>
<body>
  
  <h2>Data Recovery Techniques Overview</h2>
  
  <h3>Table for Data Recovery Techniques Overview</h3>
  
  <table>
    <thead>
      <tr>
        <th>Technique</th>
        <th>Description</th>
        <th>Tool Example</th>
        <th>Impact on Forensic Investigations</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Timestomping</strong></td>
        <td>Altering file timestamps (creation, access, modification) to mislead investigators.</td>
        <td>Timestomp (Metasploit)</td>
        <td>Forensic tools may still detect inconsistencies in the NTFS Master File Table (MFT).</td>
      </tr>
      <tr>
        <td><strong>Data Wiping</strong></td>
        <td>Overwriting files to make data recovery difficult or impossible.</td>
        <td>Eraser, DBAN</td>
        <td>Wiping can thwart standard recovery tools, but forensic tools like Autopsy may still detect metadata or partial traces.</td>
      </tr>
      <tr>
        <td><strong>File Signature Manipulation</strong></td>
        <td>Changing a file’s header signature to hide its real type or content.</td>
        <td>WinHEX</td>
        <td>Autopsy and similar tools can detect mismatches between the file extension and the actual signature.</td>
      </tr>
      <tr>
        <td><strong>File Slack Hiding</strong></td>
        <td>Embedding hidden data within the slack space of files.</td>
        <td>Slacker (Metasploit)</td>
        <td>Forensic tools can scan slack space, but identifying tampered files can be difficult.</td>
      </tr>
    </tbody>
  </table>

  <h3>Table for Data Wiping Standards</h3>
  <table>
    <thead>
      <tr>
        <th>Standard</th>
        <th>Number of Passes</th>
        <th>Description</th>
        <th>Effectiveness</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>US DoD 5220.22-M (3 Passes)</strong></td>
        <td>3</td>
        <td>Writes zeroes, ones, and random data over the file.</td>
        <td>Effective for most HDDs, but SSDs with wear leveling may retain data.</td>
      </tr>
      <tr>
        <td><strong>US DoD 5220.22-M (7 Passes)</strong></td>
        <td>7</td>
        <td>Performs multiple write operations to thoroughly overwrite data.</td>
        <td>Highly secure for HDDs, but SSDs can still retain fragments due to wear leveling.</td>
      </tr>
      <tr>
        <td><strong>Gutmann Method (35 Passes)</strong></td>
        <td>35</td>
        <td>Overwrites data 35 times with different patterns to prevent recovery.</td>
        <td>Excessive for modern drives, but effective against older magnetic storage. Less effective on SSDs due to TRIM and wear leveling.</td>
      </tr>
      <tr>
        <td><strong>Pseudorandom Data</strong></td>
        <td>1</td>
        <td>Writes random data to the storage once.</td>
        <td>Can prevent simple recovery, but not secure enough for critical data. SSDs may still retain data due to wear leveling.</td>
      </tr>
    </tbody>
  </table>

  <h3>Table for SSD and HDD Characteristics</h3>
  <table>
    <thead>
      <tr>
        <th>Aspect</th>
        <th>HDD (Magnetic Disk)</th>
        <th>SSD (Solid-State Disk)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Wear Leveling</strong></td>
        <td>Not applicable</td>
        <td>Distributes writes across cells, making secure deletion difficult as data can reside in multiple locations.</td>
      </tr>
      <tr>
        <td><strong>TRIM Command</strong></td>
        <td>Not applicable</td>
        <td>Improves SSD performance by marking blocks as free, but complicates recovery as data blocks are removed from logical visibility.</td>
      </tr>
      <tr>
        <td><strong>Data Fragmentation</strong></td>
        <td>HDDs suffer from file fragmentation over time, which can affect recovery efforts.</td>
        <td>Wear leveling and TRIM create internal fragmentation, complicating recovery.</td>
      </tr>
      <tr>
        <td><strong>Encryption</strong></td>
        <td>Often relies on software-based encryption like BitLocker or VeraCrypt.</td>
        <td>Hardware encryption is common, but software-based methods like BitLocker are also supported.</td>
      </tr>
    </tbody>
  </table>

  <h3>Table for Forensic Tool Effectiveness</h3>
  <table>
    <thead>
      <tr>
        <th>Forensic Tool</th>
        <th>Anti-Forensic Technique</th>
        <th>Effectiveness</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Autopsy</strong></td>
        <td>Timestomping</td>
        <td>Can detect changes in file metadata, including inconsistencies in NTFS MACB timestamps.</td>
      </tr>
      <tr>
        <td><strong>FTK Imager</strong></td>
        <td>Data Wiping</td>
        <td>Can identify the presence of deleted files and metadata, but may not recover the actual data after secure wiping.</td>
      </tr>
      <tr>
        <td><strong>Autopsy</strong></td>
        <td>File Signature Manipulation</td>
        <td>Detects mismatched file extensions and headers, flagging manipulated files for further investigation.</td>
      </tr>
      <tr>
        <td><strong>FTK Imager</strong></td>
        <td>File Slack Hiding</td>
        <td>Can analyze slack space but may not easily identify hidden data within it.</td>
      </tr>
    </tbody>
  </table>
  
  <h2>References</h2>
  <ol>
    <li>Master Thesis - Josef Al-Saydali and Mahdi Al-Saydali. Anti-forensic Techniques: Feasibility and Efficiency against Forensic Tools. 2023.</li>
    <li>Semi Yulianto 2nd Benfano Soewito Investigating the Impact on Data Recovery in Computer Forensics. IEEE International Conference on Cryptography, Informatics, and Cybersecurity (ICoCICs).  2023</li>
    <li>Ölvecký, M. and Gabriška, D. Wiping techniques and anti-forensics methods. IEEE 16th International Symposium on Intelligent Systems and Informatics (SISY), 2018.</li>
    <li>Michael W., Laura M. G., Frederick E. S., Steven Swanson. Reliably Erasing Data From Flash-Based Solid State Drives. 2010 </li>
    <li>NIST Guidelines for Media Sanitization. Available at: https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-88r1.pdf</li>
  </ol>
  
</body>
</html>
