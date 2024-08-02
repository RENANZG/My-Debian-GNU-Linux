<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>GUID Partition Table (GPT) Partition Types</title>
</head>
<body>

<h4>GUID Partition Table (GPT) is a partitioning scheme that is part of the Unified Extensible Firmware Interface (UEFI) specification</h4>

<table border="1" cellpadding="5" cellspacing="0">
<thead>
<tr>
<th>Partition Type</th>
<th>FDISK Type Code</th>
<th>GDISK Type Hex Code</th>
<th>Partition Type GUIDs</th>
</tr>
</thead>
<tbody>
<tr>
<td>EFI System Partition (ESP) (for UEFI)</td>
<td>1</td>
<td>ef00</td>
<td>C12A7328-F81F-11D2-BA4B-00A0C93EC93B</td>
</tr>
<tr>
<td>BIOS Boot Partition (for GRUB)</td>
<td>-</td>
<td>ef02</td>
<td>21686148-6449-6E6F-744E-656564454649</td>
</tr>
<tr>
<td>Linux Root</td>
<td>83</td>
<td>8304</td>
<td>4F68BCE3-E8CD-4DB1-96E7-FBCAF984B709</td>
</tr>
<tr>
<td>Linux Home</td>
<td>83</td>
<td>8302</td>
<td>933AC7E1-2EB4-4F13-B844-0E14E2AEF915</td>
</tr>
<tr>
<td>Linux Swap</td>
<td>82</td>
<td>8200</td>
<td>0657FD6D-A4AB-43C4-84E5-0933C84B4F4F</td>
</tr>
<tr>
<td>Linux Filesystem</td>
<td>83</td>
<td>8300</td>
<td>0FC63DAF-8483-4772-8E79-3D69D8477DE4</td>
</tr>
<tr>
<td>Linux LUKS</td>
<td>-</td>
<td>8309</td>
<td>CA7D7CCB-63ED-4C53-861C-1742536059CC</td>
</tr>
<tr>
<td>Linux LVM</td>
<td>8e</td>
<td>8e00</td>
<td>E6D6D379-F507-44C2-A23C-238F2A3DF928</td>
</tr>
<tr>
<td>Linux RAID</td>
<td>fd</td>
<td>fd00</td>
<td>A19D880F-05FC-4D3B-A006-743F0F84911E</td>
</tr>
<tr>
<td>Windows basic data</td>
<td>7</td>
<td>0700</td>
<td>EBD0A0A2-B9E5-4433-87C0-68B6B72699C7</td>
</tr>
</tbody>
</table>

<p><strong>Notes:</strong></p>
<p><strong>cryptsetup:</strong> A utility used to conveniently set up disk encryption based on the DMCrypt kernel module.</p>
<p><strong>dm-crypt:</strong> A transparent disk encryption subsystem in Linux kernel versions 2.6 and later. It provides a device-mapper target that provides transparent encryption of block devices.</p>

</body>
</html>
