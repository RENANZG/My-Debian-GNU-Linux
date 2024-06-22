<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Control Chips and File Systems Overview</title>
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
        caption {
            caption-side: top;
            font-weight: bold;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <table>
        <caption>Control Chips and File Systems Overview</caption>
        <thead>
            <tr>
                <th rowspan="2">Aspect</th>
                <th colspan="4">Flash Memory Technology</th>
                <th colspan="2">Interface</th>
                <th rowspan="2">Third-Party Certifications</th>
                <th rowspan="2">File Systems</th>
            </tr>
            <tr>
                <th>SLC</th>
                <th>MLC</th>
                <th>TLC</th>
                <th>QLC</th>
                <th>NVMe</th>
                <th>SATA III</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Encryption Standards</td>
                <td>BitLocker, VeraCrypt</td>
                <td>BitLocker, VeraCrypt</td>
                <td>BitLocker, VeraCrypt</td>
                <td>BitLocker, VeraCrypt</td>
                <td>BitLocker, VeraCrypt</td>
                <td></td>
                <td>NTFS, FAT32, exFAT, Ext2/3/4, XFS, Btrfs, ZFS</td>
            </tr>
            <tr>
                <td>Data Recovery</td>
                <td>Hardly Recoverable</td>
                <td>Possible with specialized tools</td>
                <td>Possible with specialized tools</td>
                <td>Very Difficult</td>
                <td>Very Difficult</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Performance</td>
                <td>Depends on application</td>
                <td>High, with wear leveling</td>
                <td>High, with wear leveling</td>
                <td>High, with wear leveling</td>
                <td>High, with wear leveling</td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
    </table>
    
     <table>
        <caption>Chip Flaws and Features Overview</caption>
        <thead>
            <tr>
                <th>Aspect</th>
                <th>Wear Leveling</th>
                <th>TRIM</th>
                <th>Pre-boot Authentication</th>
                <th>Lock Feature</th>
                <th>Read-only Feature</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Description</td>
                <td>Technique to evenly distribute write/erase cycles across all memory cells.</td>
                <td>Command to mark deleted data blocks as free for future use.</td>
                <td>Enhances security by requiring authentication before the operating system boots.</td>
                <td>Allows locking of the drive to prevent unauthorized access.</td>
                <td>Enables read-only access to data, preventing accidental modification.</td>
            </tr>
            <tr>
                <td>Impact on Secure Wiping</td>
                <td>Complicates secure deletion; data might remain in multiple locations.</td>
                <td>Helps in secure deletion by marking blocks for erasure, but not instantaneous.</td>
                <td>Enhances security before OS boot.</td>
                <td>Locks drive to prevent unauthorized access.</td>
                <td>Protects data integrity in forensic investigations.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>
