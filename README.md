<!DOCTYPE html>
<html lang='en'>

<head>

<meta charset='UTF-8'>

<body>

<div id="header">

<h1>1. DEBIAN GNU/LINUX AND HARDENING</h1>

<blockquote><h3>"Encryption works. Properly implemented strong crypto systems are one of the few things that you can rely on. Unfortunately endpoint security is so terrifically weak that NSA can frequently find ways around it." (Edward Snowden)</h3></blockquote>

<p align="center"><img src="https://github.com/RENANZG/My-Debian-GNU-Linux/blob/main/.data/the_key_to_the_fields_1936_-_rene_magritte_830px.png" title="The Key to the Fields (1936) - René Magritte"/></p>

</div>

<hr>

<!--################################### -->

<h3>1.01 System Hardening Must Have</h3>

<table>
<tbody>
<tr>
<td> <a href="https://anonymousplanet.org/">Anonymous Planet - The Hitchhiker’s Guide</a><a href="https://anonymousplanet.org/export/guide.pdf"> (PDF)</a> </th>
<td> <a href="https://madaidans-insecurities.github.io/">Madaidan's - Security &amp; Privacy Evaluations</a> </th>
</tr>
<tr>
<td> <a href="https://whonix.org/wiki/Essential_Host_Security">Whonix - Essential Host Security</a> </td>
<td> <a href="https://hardenedlinux.github.io/">Hardened GNU/Linux</a> </td>
</tr>
<tr>
<td> <a href="https://whonix.org/wiki/System_Hardening_Checklist">Whonix - System Hardening Checklist</a> </td>
<td> <a href="https://bleachbit.org/">Bleachbit - Clean Your System and Free Disk Space</a> </td>
</tr>
<tr>
<td> <a href="https://kicksecure.com/wiki/Documentation">Kicksecure - Documentation</a> </td>
<td> <a href="https://github.com/PartialVolume/shredos.x86_64">ShredOS - Secure disk erasure/wipe</a> </td>
</tr>
<tr>
<td><a href="https://wiki.debian.org/SecurityManagement">Debian - Security Management</a></td>
<td> <a href="https://ssd.eff.org/">EFF - Surveillance Self-defense</a> </td>
</tr>
<tr>
<td> <a href="https://owasp.org/" target="_blank" rel="noopener noreferrer">OWASP - No more insecure software</a> </td>
<td> <a href="https://cryptomator.org/" target="_blank" rel="noopener noreferrer">Cryptomator - Put a lock on your cloud</a> </td>
</tr>
<tr>
<td> <a href="https://downloads.cisecurity.org/#/">CIS Benchmark - Debian Linux Guides</a> </td>
<td> <a href="https://duplicati.com/" target="_blank" rel="noopener noreferrer">Duplicati - Store securely encrypted backups on cloud storage services!</a> </td>
</tr>
<tr>
<td> <a href="https://nsa.gov/Press-Room/Cybersecurity-Advisories-Guidance">NSA GOV - Cybersecurity Advisories &amp; Guidance</a><a href="https://github.com/nsacyber"> (GitHub)</a> </td>
<td> <a href="https://virustotal.com/gui/home/upload" target="_blank" rel="noopener noreferrer">Virus Total - Free virus, malware and URL online scanning</a> </td>
</tr>
<tr>
<td> <a href="https://nist.gov/cyberframework">NIST GOV - Cybersecurity Framework</a> </td>
<td> <a href="https://hybrid-analysis.com/" target="_blank" rel="noopener noreferrer">Hybrid Analysis - This is a free malware analysis service</a></td>
</tr>
</tbody>
</table>

<sub>&nbsp; &nbsp; &nbsp; &nbsp;*Kernel Hacking Guides - https://docs.kernel.org/kernel-hacking/index.html</sub>

<hr>
<!--################################### -->

<h3>1.02 Essential Tools</h3>

<table>
<tbody>
  <tr>
    <td><a href="https://ventoy.net/en/download.html">1. Ventoy</a></td>
    <td><a href="https://ventoy.net/en/doc_secure.html">(Secure Boot)</a></td>
    <td><a href="https://ventoy.net/en/download.html">(Checksums)</a></td>
    <td><a href="https://qubes-os.org/downloads" target="_blank" rel="noopener noreferrer">7. Qubes</a></td>
    <td><a href="https://qubes-os.org/faq/" target="_blank" rel="noopener noreferrer">(*Secure Boot)</a></td>
    <td><a href="https://qubes-os.org/security/verifying-signatures" target="_blank" rel="noopener noreferrer">(Checksums)</a></td>
  </tr>
  <tr>
    <td><a href="http://www.rodsbooks.com/refind/getting.html">2. rEFInd</a></td>
    <td><a href="http://www.rodsbooks.com/refind/secureboot.html">(Secure Boot)</a></td>
    <td><a href="https://sourceforge.net/p/refind/code/ci/master/tree/">(Checksums)</a></td>
    <td><a href="https://kali.org/get-kali/#kali-installer-images" target="_blank" rel="noopener noreferrer">8. KaliLinux</a></td>
    <td><a href="https://kali.org/docs/installation/hard-disk-install/" target="_blank" rel="noopener noreferrer">(*Secure Boot)</a></td>
    <td><a href="https://kali.org/get-kali/#kali-installer-images" target="_blank" rel="noopener noreferrer">(Checksums)</a></td>
  </tr>
  <tr>
    <td><a href="https://clonezilla.org/downloads.php">3. Clonezilla</a></td>
    <td><a href="https://clonezilla.org/downloads.php">(Secure Boot)</a></td>
    <td><a href="https://clonezilla.org/downloads.php">(Checksums)</a></td>
    <td><a href="https://gnupg.org/software/tools.html" target="_blank" rel="noopener noreferrer">9. GnuPG</a></td>
    <td><a href="https://gnupg.org/documentation/index.html" target="_blank" rel="noopener noreferrer">(Guides)</a></td>
    <td><a href="https://gnupg.org/documentation/guides.html" target="_blank" rel="noopener noreferrer">(Check)</a></td>
  </tr>
  <tr>
    <td><a href="https://gparted.org/livecd.php">4. GParted</a></td>
    <td><a href="https://gparted.org/download.php">(Secure Boot)</a></td>
    <td><a href="https://gparted.org/gpg-verify.php">(Checksums)</a></td>
    <td><a href="https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-intro?view=windows-11" target="_blank" rel="noopener noreferrer">10. WinPE</a></td>
    <td><a href="https://sergeistrelec.name/" target="_blank" rel="noopener noreferrer">(Sergei Strelec)</a></td>
    <td><a href="https://sergeistrelec.name/version_history_en.html" target="_blank" rel="noopener noreferrer">(Checksums)</a></td>
  </tr>
  <tr>
    <td><a href="https://github.com/PartialVolume/shredos.x86_64">5. ShredOS</a></td>
    <td><a href="">(Secure Boot)</a></td>
    <td><a href="">(Checksums)</a></td>
    <td><a href="https://hirensbootcd.org/" target="_blank" rel="noopener noreferrer">11. Hiren's BootCD PE</a></td>
    <td><a href="" target="_blank" rel="noopener noreferrer">(Secure Boot)</a></td>
    <td><a href="https://hirensbootcd.org/download/" target="_blank" rel="noopener noreferrer">(Checksums)</a></td>
  </tr>
  <tr>
    <td><a href="https://tails.net/news/new_domain/index.en.html" target="_blank" rel="noopener noreferrer">6. Tails</a></td>
    <td><a href="https://tails.net/contribute/design/UEFI/archive/" target="_blank" rel="noopener noreferrer">(Secure Boot)</a></td>
    <td><a href="https://tails.net/install/index.en.html" target="_blank" rel="noopener noreferrer">(Checksums)</a></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>

<sub>Others: <a href="https://securityonionsolutions.com">Security Onion</a>, <a href="https://networksecuritytoolkit.org">NST</a>, <a href="https://android-x86.org/">Android-x86</a>, <a href="https://hardenedbsd.org">HardenedBSD</a>, <a href="https://live.osgeo.org/">OSGeoLive</a>, <a href="https://openwrt.org">OpenWRT</a>, <a href="https://wiki.libreelec.tv/">LibreELEC.tv</a>, <a href="https://store.steampowered.com/steamos">SteamOS</a> .</sub><br>

<!-- ################################## -->

<details>
<summary><sub>¹ Check hash with <a href="https://gtkhash.org">GtkHash (GUI)</a></sub></summary>
<br>

<p>Check hash with GtkHash (GUI) <a href="https://gtkhash.org">https://gtkhash.org</a></p>

<br>
</details>

<!-- ########## -->

<details>
<summary><sub>² How to summarize iso file with <a href="https://gnu.org/software/coreutils/manual/html_node/Summarizing-files.html">GNU Coreutils (CLI)</a></sub></summary>
<br>

<p>Summarize iso file with GNU Coreutils (CLI)<a href="https://gnu.org/software/coreutils/manual/html_node/Summarizing-files.html">https://gnu.org/software/coreutils/manual/html_node/Summarizing-files.html</a></p>

<br>
</details>

<!-- ########## -->

<details>
<summary><sub>³ Manual method with sha256sum</sub></summary>
<br>

<p>The SHA-256 checksum hashes in a file called SHA256SUMS in the same directory listing as the download page.</p>
<p>First install it</p>
<p><code>$ sudo apt install sha256sum</code></p>
<p>Open a terminal and go to the correct directory to check a downloaded iso file:</p>
<p><code>$ cd download_directory</code></p>
<p>Then run the following command from within the download directory.</p>
<p><code>$ sha256sum name.iso</code></p>
<p>sha256sum should then print out a single line after calculating the hash:</p>
<p><code>$ sdd31231c0421be56f39c7a31245c423fgcc3b048ds321a3e83d2c4d714fa9a76 *name.iso</code></p>
<p>Compare the hash (the alphanumeric string on left) that your machine calculated with the corresponding hash in the SHA256SUMS file.</p>

<br>
</details>

<!-- ########## -->

<details>
<summary><sub>⁴ Semi-automatic method with sha256sum</sub></summary>
<br>

<p>First download the SHA256SUMS and SHA256SUMS.gpg files to the same directory as the iso. Then run the following commands in a terminal.</p>
<p><code>$ cd download_directory</code></p>
<p><code>$ sha256sum -c SHA256SUMS 2>&1 | grep OK</code></p>
<p>The sha256sum line should output a line such as:</p>
<p><code>name.iso: OK</code></p>
<p>If the OK for your file appears, that indicates the hash matches.</p>

<br>
</details>

<hr>
<!-- ################################## -->

<h2>2. SYSTEM INSTALLATION</h2>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<details>
<summary><b>2.01 Hardware</b></summary>
<br>

<h4>BIOS Simulators</h4>
• Phoenix BIOS Simulator<br>
https://grs-software.de/sims/bios/phoenix/pages/<br>
• Phoenix BIOS Setup Utility Simulator - Pranx<br>
https://pranx.com/bios<br>
• Lenovo BIOS Simulator<br>
https://download.lenovo.com/bsco/index.html<br>

<h4>Hardware Compatibility</h4>
• Hardware for Linux<br>
https://linux-hardware.org<br>
• Linux Vendor Firmware Service<br>
https://fwupd.org/lvfs/devices<br>
• r/linuxhardware<br>
https://reddit.com/r/linuxhardware<br>
• SANE - Lists of supported scanners firmware<br>
http://www.sane-project.org/sane-supported-devices.html<br>
• USB WiFI<br>
https://github.com/morrownr/USB-WiFi<br>
• Mac<br>
https://wiki.debian.org/DebianOnIntelMacPro<br>

<h4>Open Hardware</h4>
• GNU/Linux Open Hardware PowerPC notebook<br>
https://powerpc-notebook.org<br>
• PINE64 - Community-driven hardware projects<br>
https://pine64.com<br>
https://pine64.org<br>
• Framework - Fix Consumer Electronics<br>
https://frame.work<br>
• "Respects Your Freedom" Certification Program<br>
https://ryf.fsf.org<br>

<h4>Hardware Vulnerabilities</h4>
https://docs.kernel.org/admin-guide/hw-vuln/index.html<br>
https://github.com/chipsec/chipsec<br>

<h4>Hardware Security Based</h4>
https://en.wikipedia.org/wiki/Open-source_firmware<br>
https://en.wikipedia.org/wiki/Hardware-based_full_disk_encryption<br>
https://en.wikipedia.org/wiki/Write_protection<br>
https://en.m.wikipedia.org/wiki/Random-access_memory<br>
https://usbguard.github.io<br>
https://digistor.com (*EUA partner)<br>
https://seagate.com/enterprise-storage/enterprise-security<br>
https://github.com/openssl/openssl/blob/master/README-FIPS.md<br>

<h4>Hardware Spoof</h4>
https://whonix.org/wiki/Protocol-Leak-Protection_and_Fingerprinting-Protection#Less_important_identifiers<br>
https://whonix.org/wiki/MAC_Address<br>
https://github.com/alobbs/macchanger<br>
https://hwidspoofer.com<br>
https://xaze.gitbook.io/how-to-spoof-with-hwid-serial-changer<br>
https://github.com/segofensiva/OSfooler-ng<br>

<h4>Secure Boot</h4>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/2.SECURITY/2.05_Secure_Boot">2.SECURITY/2.05_Secure_Boot</a></h4>

https://libreboot.org<br>
https://osresearch.net<br>

<h4>Sanitize options</h4>

<h5>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/2.SECURITY/2.06_Sanitization">2.SECURITY/2.06_Sanitization</a></h5>

<p>Not all SSD support sanitize. And if you use SSDs, enable TRIM in your BIOS. Take care with SSD over-provisioning. Take care with SSD flaws.</p>

<h4>Volatile Memory</h4>
https://usbkill.com<br>
https://github.com/Kicksecure/ram-wipe<br>
https://kicksecure.com/wiki/Hardened_Malloc<br>
https://forums.whonix.org/t/hardened-malloc-hardened-memory-allocator/7474/4<br>

<h4>Performance</h4>

• SSD Over-provisioning<br>

<p>This prevents degradation of SSD speed and durability.</p>

<p>Depending on use, some manufacturers recommend 40% OP. For general use, 20% of the general capacity of the SSD, that is, more or less 14% counting the minimum that comes from the factory. For example, a 240GB SSD is limited to -14%, which results in 206GB (34GB of OP).</p>

<p>You must consider the file system you will use.</p>

<h4>Cost benefit</h4>

• <br>

<br>
</details>

<!-- ########## -->

<details>
<summary><b>2.02 Installation</b></summary>
<br>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/1.INSTALLATION">1.INSTALLATION</a></h4>

2.02.01 Basic Installation Guide<br>

• Basic tips about Linux System<br>

Debian Wiki - https://wiki.debian.org/FrontPage<br>
Command Line - https://github.com/jlevy/the-art-of-command-line#everyday-use<br>
Terminal - https://github.com/onceupon/Bash-Oneliner#terminal-tricks<br>

• Bash autocompletion with TAB<br>

<code>$ sudo apt install bash-completion</code>

<h4>Overview of Terminal's Shortcuts</h4>

<table>
<thead>
<tr>
<th>Shortcut</th>
<th>Action</th>
<th>Shortcut</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<tr>
<td>Esc + t</td>
<td>Swap the two words before the cursor</td>
<td>Ctrl + f</td>
<td>Go forward one character</td>
</tr>
<tr>
<td>Ctrl + r</td>
<td>Search command history</td>
<td>Ctrl + b</td>
<td>Go back one character</td>
</tr>
<tr>
<td>Ctrl + g</td>
<td>Cancel command history search without running command</td>
<td>Ctrl + a</td>
<td>Go to the beginning of the line</td>
</tr>
<tr>
<td>Ctrl + l</td>
<td>Clear terminal screen</td>
<td>Ctrl + e</td>
<td>Go to the end of the line</td>
</tr>
<tr>
<td>Ctrl + x</td>
<td>List possible filename completions</td>
<td>Ctrl + w</td>
<td>Delete the word before the cursor</td>
</tr>
<tr>
<td>Ctrl + c</td>
<td>Cancels the running command</td>
<td>Ctrl + y</td>
<td>Retrieves the last word deleted or cut</td>
</tr>
<tr>
<td>Ctrl + z</td>
<td>Suspends the running command</td>
<td>Ctrl + xx</td>
<td>Toggle between current cursor position and start or end of line</td>
</tr>
<tr>
<td>Ctrl + u</td>
<td>Deletes entire line before the cursor</td>
<td>Alt + u</td>
<td>Capitalize all letters in word after cursor</td>
</tr>
<tr>
<td>Ctrl + k</td>
<td>Deletes entire line after the cursor</td>
<td>Alt + l</td>
<td>Lower case all letters in word after cursor</td>
</tr>
<tr>
<td>Ctrl + t</td>
<td>Swap the two characters before the cursor</td>
<td>Alt + .</td>
<td>Use the last word of the last command</td>
</tr>
<tr>
<td>Ctrl + d</td>
<td>Close the terminal</td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

<br>

<h4>Overview of Nano's Shortcuts</h4>

<table>
<thead>
<tr>
<th>Shortcut</th>
<th>Action</th>
<th>Shortcut</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2"> File handling </td>
<td colspan="2">Moving around</td>
</tr>
<tr>
<td> Ctrl+S </td>
<td> Save current file </td>
<td>Ctrl+B </td>
<td> One character backward </td>
</tr>
<tr>
<td>Ctrl+O </td>
<td> Offer to write file ("Save as") </td>
<td>Ctrl+F </td>
<td> One character forward </td>
</tr>
<tr>
<td>Ctrl+R </td>
<td> Insert a file into current one </td>
<td>Ctrl+← </td>
<td> One word backward </td>
</tr>
<tr>
<td>Ctrl+X </td>
<td> Close buffer, exit from nano </td>
<td>Ctrl+→ </td>
<td> One word forward </td>
</tr>
<tr>
<td></td>
<td></td>
<td>Ctrl+A </td>
<td> To start of line </td>
</tr>
<tr>
<td colspan="2">Editing</td>
<td>Ctrl+E </td>
<td> To end of line </td>
</tr>
<tr>
<td>Ctrl+K </td>
<td> Cut current line into cutbuffer </td>
<td>Ctrl+P </td>
<td> One line up </td>
</tr>
<tr>
<td>Alt+6 </td>
<td> Copy current line into cutbuffer </td>
<td>Ctrl+N </td>
<td> One line down </td>
</tr>
<tr>
<td>Ctrl+U </td>
<td> Paste contents of cutbuffer </td>
<td>Ctrl+↑ </td>
<td> To previous block </td>
</tr>
<tr>
<td>Alt+T </td>
<td> Cut until end of buffer </td>
<td>Ctrl+↓ </td>
<td> To next block </td>
</tr>
<tr>
<td>Ctrl+]	 </td>
<td> Complete current word </td>
<td>Ctrl+Y </td>
<td> One page up </td>
</tr>
<tr>
<td>Alt+3 </td>
<td> Comment/uncomment line/region </td>
<td>Ctrl+V </td>
<td> One page down </td>
</tr>
<tr>
<td>Alt+U </td>
<td> Undo last action </td>
<td>Alt+\	To </td>
<td> top of buffer </td>
</tr>
<tr>
<td>Alt+E </td>
<td> Redo last undone action </td>
<td>Alt+/	To </td>
<td> end of buffer </td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td colspan="2">Search and replace</td>
<td colspan="2">Special movement</td>
</tr>
<tr>
<td>Ctrl+Q </td>
<td> Start backward search </td>
<td>Alt+G </td>
<td> Go to specified line </td>
</tr>
<tr>
<td>Ctrl+W </td>
<td> Start forward search </td>
<td>Alt+]	Go </td>
<td> to complementary bracket </td>
</tr>
<tr>
<td>Alt+Q </td>
<td> Find next occurrence backward </td>
<td>Alt+↑ </td>
<td> Scroll viewport up </td>
</tr>
<tr>
<td>Alt+W </td>
<td> Find next occurrence forward </td>
<td>Alt+↓ </td>
<td> Scroll viewport down </td>
</tr>
<tr>
<td>Alt+R </td>
<td> Start a replacing session </td>
<td>Alt+&lt;	Switch </td>
<td> to preceding buffer </td>
</tr>
<tr>
<td></td>
<td></td>
<td>Alt+&gt;	Switch </td>
<td> to succeeding buffer </td>
</tr>
<tr>
<td colspan="2">Deletion</td>
<td></td>
<td></td>
</tr>
<tr>
<td>Ctrl+H </td>
<td> Delete character before cursor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td colspan="2">Information</td>
</tr>
<tr>
<td>Ctrl+D </td>
<td> Delete character under cursor </td>
<td>Ctrl+C </td>
<td> Report cursor position </td>
</tr>
<tr>
<td>Alt+Bsp </td>
<td> Delete word to the left </td>
<td>Alt+D </td>
<td> Report line/word/character count </td>
</tr>
<tr>
<td>Ctrl+Del </td>
<td> Delete word to the right </td>
<td>Ctrl+G </td>
<td> Display help text </td>
</tr>
<tr>
<td>Alt+Del </td>
<td> Delete current line </td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td colspan="2">Various</td>
</tr>
<tr>
<td colspan="2">Operations</td>
<td>Alt+A </td>
<td> Turn the mark on/off </td>
</tr>
<tr>
<td>Ctrl+T </td>
<td> Execute some command </td>
<td>Tab</td>
<td>Indent</td>
</tr>
<tr>
<td>Ctrl+J </td>
<td> Justify paragraph or region </td>
<td>Shift+Tab </td>
<td>Unindent marked region</td>
</tr>
<tr>
<td>Alt+J </td>
<td> Justify entire buffer </td>
<td>Alt+V </td>
<td> Enter next keystroke verbatim </td>
</tr>
<tr>
<td>Alt+B </td>
<td> Run a syntax check </td>
<td>Alt+N </td>
<td> Turn line numbers on/off </td>
</tr>
<tr>
<td>Alt+F </td>
<td> Run a formatter/fixer/arranger </td>
<td>Alt+P </td>
<td> Turn visible whitespace on/off </td>
</tr>
<tr>
<td>Alt+:	Start </td>
<td> /stop recording of macro </td>
<td>Alt+X </td>
<td> Hide or unhide the help lines </td>
</tr>
<tr>
<td>Alt+;	Replay </td>
<td> macro</td>
<td>Ctrl+L </td>
<td> Refresh the screen </td>
</tr>
</tbody>
</table>

<h4>Virtual Machines</h4>

<h5>• Using VirtualBox as training or to test ultra-advanced configurations</h5>

https://debian.org/doc/manuals/debian-handbook/sect.virtualization.en.html<br>

<h5>VirtualBox on Windows 10 Windows 10</h5>

"How to Install Debian Linux in VirtualBox on Windows 10 | Beginners Guide | (Buster)"<br>
https://youtube.com/watch?v=cx8GzudB6uE<br>

<h5>Hypervisor</h5>

<pre>
KVM, Kernel-based Virtual Machine, is a hypervisor built into the Linux kernel. It is similar to Xen in purpose but much simpler to get running. Unlike native QEMU, which uses emulation, KVM is a special operating mode of QEMU that uses CPU extensions (HVM) for virtualization via a kernel module.
</pre>

<pre>
The difference between a type 1 hypervisor and a type 2 hypervisor. KVM is a type 1 hypervisor, it is able to run on bare metal, while QEMU is a type 2 hypervisor, it runs on top of the operating system. QEMU will utilize KVM in order to utilize the machine’s physical resources for the virtual machines. In brief, QEMU uses emulation; KVM uses processor extensions (HVM) for virtualization.
</pre>

 <img src="https://github.com/RENANZG/My-Debian-GNU-Linux/blob/main/6.SYSADMIN/6.05_VMs_and_Containers/QEMU-KVM/QEMU-KVM_Chart.png"/>

<h5>Using QEMU/KVM - "Kernel-based Virtual Machine"</h5>
https://wiki.debian.org/KVM<br>
https://wiki.archlinux.org/title/KVM<br>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/6.SYSADMIN/6.05_VMs_and_Containers">6.SYSADMIN/6.05_VMs_and_Containers</a></h4>

<h3>Quick Installation Guide and Others</h3>

http://www.rodsbooks.com/linux-uefi<br>
https://wiki.debian.org/DontBreakDebian<br>
https://distrowatch.com/table.php?distribution=debian<br>
https://debian.org/releases/bookworm/amd64/apb.en.html<br>

<h4>2.2.2 Desktop interface</h4>

XFCE vs LXQt - Lightweight Linux Desktop Environments<br>
https://youtube.com/watch?v=cs8JW3zDDoI<br>


<h4>2.2.3 Debootstrap</h4>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/1.INSTALLATION/2.02_Debootstrap">1.INSTALLATION/2.02_Debootstrap</a></h4>

• Debootstrap<br>
https://wiki.debian.org/Debootstrap<br>
• Debian 11.0 Debootstrap | Debian Command Line Install Guide<br>
https://youtube.com/watch?v=oKnkOwdysNs<br>
• Debian 11.4 ZFS Bootstrap | Debian ZFS Command Line Installation<br>
https://youtube.com/watch?v=7F7Ch-ZkiQU<br>
• Nilsmeyer - An ansible role for bootstrapping new Debian based systems, including setting up partitions, file systems, encryption (luks), RAID and LVM<br>
https://github.com/nilsmeyer/ansible-debootstrap<br>
• Linux Dabbler - Scripts to run after installing debian<br>
https://github.com/linuxdabbler/debian-install-scripts<br>

<h5>&nbsp;File system: EXT4, XFS, BTRFS AND ZFS</h5>

<div id="table1" align="left">
<img src="https://github.com/RENANZG/My-Debian-GNU-Linux/blob/main/1.INSTALLATION/2.08_Others/file_system.png"/>
</div>

<br>
</details>

<!-- ########## -->

<details>
<summary><b>2.03 Encryption</b></summary> 
<br>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/2.SECURITY/2.03_Encryption">2.SECURITY/2.03_Encryption</a></h4>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/1.INSTALLATION/2.02_Debootstrap">1.INSTALLATION/2.02_Debootstrap</a></h4>

2.3.1 Encryption<br>

https://wiki.archlinux.org/title/Security<br>
https://wiki.archlinux.org/title/Data-at-rest_encryption<br>
https://en.wikipedia.org/wiki/Disk_encryption#Implementations<br>
https://csrc.nist.gov/Projects/cryptographic-module-validation-program/fips-140-2<br>

2.3.2 Partitioning scenarios: advantages and disadvantages<br>

https://wiki.archlinux.org/title/dm-crypt/Encrypting_an_entire_system<br>
https://wiki.archlinux.org/title/dm-crypt/Device_encryption#top-page<br>

2.3.3 FSTAB, CRYPTTAB AND DM-CRYPT - Linux kernel's device mapper crypto target<br>

• Dm-crypt<br>
https://wiki.archlinux.org/title/Dm-crypt<br>

• Fstab<br>
https://wiki.debian.org/fstab<br>
https://manpages.debian.org/bookworm/mount/fstab.5.en.html<br>

• Crypttab<br>
https://manpages.debian.org/bookworm/cryptsetup/crypttab.5.en.html<br>

• Tips<br>

∙ Copy and paste blkid to fstab<br>

<code># echo "$(blkid -o export /dev/sdbX | grep ^UUID=) REMEMBEREFI" | tee --append /etc/fstab</code><br>

or		

<code># blkid -o value -s UUID >> /etc/fstab</code><br>

2.3.4 Example 1 - FSTAB - Non-encrypted Boot Removable Medium (USB Key) Multi-device<br>

<pre>
# <file system> <mount point> <type> <options> <dump> <pass>
UUID=e4c627c2-69f2-11ee-8c99-0242ac120002  / ext4 errors=remount-ro 0 1
# /boot was on /dev/sdc2 during installation
PARTUUID=f2c4ec78-69f2-11ee-8c99-0242ac120002 /boot ext2 noauto, x-systemd.device-timeout=1m, defaults 0 2
# /boot/efi was on /dev/sdc1 during installation
PARTUUID=a15355f4-15ce-4ea6-a57b-161e9eea19fc /boot/efi vfat noauto, x-systemd.device-timeout=1m, umask=0077 0 1
UUID=2701e126-69f3-11ee-8c99-0242ac120002 /home ext4 defaults 0 2
UUID=447e4a14-69f3-11ee-8c99-0242ac120002 none swap sw 0 0 
</pre>

2.3.5 Example 2 - FSTAB - Encrypted Boot Removable Medium (USB Key) Multi-device<br>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

https://tqdev.com/2022-luks-with-usb-unlock<br>

"Install debian 9 stretch on one encrypted btrfs partition including /boot and booting if via EFI"<br>
https://github.com/rob31415/cryptBoot<br>

https://github.com/stupidpupil/https-keyscript<br>

2.3.6 Example 3 - FSTAB - Encrypted Boot Removable Medium (USB Key) Multi-device and Keyfile<br>

Key File Encryption with USB Key<br>
https://github.com/aomgiwjc/Unix-Bootstrap-Installs/wiki<br>
https://github.com/aomgiwjc/Unix-Bootstrap-Installs.wiki.git<br>
https://cloudkid.fr/unlock-a-luks-partition-with-a-usb-key<br>
https://blog.fidelramos.net/software/unlock-luks-usb-drive<br>
https://willhaley.com/blog/unlock-luks-volumes-with-usb-key<br>
https://dwarmstrong.org/fde-debian<br>
https://cyberciti.biz/hardware/cryptsetup-add-enable-luks-disk-encryption-keyfile-linux<br>

2.3.7 Nuke Password<br>
https://packages.debian.org/bookworm/cryptsetup-nuke-password<br>
https://salsa.debian.org/pkg-security-team/cryptsetup-nuke-password<br>

<pre>$ 
<code>sudo apt install cryptsetup-nuke-password</code>
</pre>

<br>
</details>

<!-- ########## -->

<details>
<summary><b>2.04 After Installing</b></summary> 
<br>

<h5>Basic Things to do After Installing Debian for Everyday Use</h5>

<p>1. Update and Upgrade</h5>

https://itsfoss.com/apt-get-upgrade-vs-dist-upgrade<br>

<pre>$ <code>sudo apt update -y && sudo apt upgrade -y</code></pre>

<pre>$ <code>sudo apt dist-upgrade</code>code></pre>

<p>Note:</p>

<p><code>apt upgrade</code> only upgrades existing packages. It doesn’t install new packages or remove existing packages, doesn’t upgrade kernel version.</p>

<p><code>dist-upgrade</code> can remove dependency packages or install new ones (if required), can also upgrade kernel version, doesn’t upgrade the distribution version.</p>

 <sub>*sudo apt full-upgrade</sub>

<h5>2. Adding sudo user and common user</h5>

<pre>$ </pre>

<sub>***Security consideration, under construction***</sub>

<h5>3. Firewall</h5>

</p>Install and enable Uncomplicated Firewall - UFW (CLI)</p>

<pre>$ 
<code>sudo apt install ufw</code>
</pre>
<pre>$ 
<code>sudo ufw enable</code>
</pre>
<pre>$ 
<code>sudo ufw default deny incoming</code>
</pre>
<pre>$ 
<code>sudo ufw default allow outgoing</code>
</pre>
<pre>$ 
<code>sudo ufw status verbose</code>
</pre>

<h5>4. Fast Grub Time</h5>

<p>Edit and add <code>GRUB_TIMEOUT=0</code></p>

<pre>$ 
<code>sudo nano /etc/default/grub</code>
</pre>

<pre>
<code>GRUB_TIMEOUT=0</code>
</pre>

<pre>$
<code>sudo update-grub</code>
</pre>

<h5>5. Swapiness</h5>

https://unix.stackexchange.com/questions/265713/how-to-configure-swappiness-in-linux-memory-management<br>

<p>Verify</p>

<pre>$ 
<code>sudo cat /proc/sys/vm/swappiness</code>
</pre>

<p>Edit and add <code>sw.swappiness=10</code></p>

<pre>$ 
<code>sudo nano /etc/sysctl.conf</code>
</pre>

<pre>
<code>sw.swappiness=10</code>
</pre>

<p>or simply</p>

<pre>$ 
<code>sudo bash -c "echo 'vm.swappiness = 10' >> /etc/sysctl.conf"</code>
</pre>

<p>To take effect:</p>

<pre>$ 
<code>sudo sysctl -p</code>
</pre>

<pre>$ 
<code>sysctl vm.swappiness=10</code>
</pre>

<p>Verify</p>

<pre>$ 
<code>
sudo cat /proc/sys/vm/swappiness</code>
</pre>

<h5>6. Installing Java</h5>

• Java Runtime Environment (JRE)<br>

• OpenJDK - Java Development Kit (JDK)<br>

<pre>
$ java --version
$ apt-cache search openjdk | grep openjdk
</pre>

<pre>$ 
<code>sudo apt install</code>
</pre>

<h5>7. Installing Micro$oft Fonts</h5>

<pre>$ 
<code>sudo apt install -y ttf-mscorefonts-installer</code>
</pre>

<p>*Do not install energy manager TLP, many problems.</p>

<br>
</details>

<!-- ########## -->

<details>
<summary><b>2.05 Low Level Linux</b></summary> 
<br>

• Kernel Linux<br>
https://kernel.org<br>

• Linux Training<br>
https://training.linuxfoundation.org<br>
https://training.linuxfoundation.org/training/a-beginners-guide-to-linux-kernel-development-lfd103<br>

• Linux From Scratch (LFS)<br>
https://linuxfromscratch.org<br>

• Reproducible Builds<br>
https://reproducible-builds.org<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>2.06 Ventoy</b></summary> 
<br>

<h4>Ventoy</h4>

<p>Ventoy - A New Bootable USB Solution - Downloads</p>

https://ventoy.net/en/download.html<br>

<p>Ventoy - Source Code - Releases</p>

https://github.com/ventoy/Ventoy/releases<br>

<h4>Start to use Ventoy - Install Ventoy To USB Drive</h4>

https://ventoy.net/en/doc_start.html<br>
https://woshub.com/multi-iso-boot-usb-flash-ventoy<br>
https://pureinfotech.com/ventoy-create-bootable-usb-windows-11-10<br>

<h4>About Secure Boot in UEFI mode</h4>

https://ventoy.net/en/doc_secure.html<br>

<h4>Ventoy Persistence Plugin</h4>

https://ventoy.net/en/plugin_persistence.html<br>

(*recomended only for rescue disk pourouses)<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>2.07 Clonezilla</b></summary> 
<br>

<h4>Clonezilla</h4>

<p>Clonezilla - The Free and Open Source Software for Disk Imaging and Cloning.</p>

https://clonezilla.org//clonezilla-live-doc.php<br>

<h4>How to Use Clonezilla Software</h4>

https://wikihow.com/Use-Clonezilla<br>

<h4>Changing disk name</h4>

<code>Command</code><br>
<code>$ cnvt-ocs-dev -d /home/partimag 'image' 'sda3' 'sda2'</code><br>

<br>
</details>

<hr>
<!-- ################################## -->

<h2>3. SECURE BOOT</h2>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<details>
<summary><b>3.01 Introduction</b></summary>
<br>

<p>"Most modern systems will ship with SB enabled - they will not run any unsigned code by default, but it is possible to change the firmware configuration to either disable SB or to enroll extra signing keys. The whole point of Secure Boot is to prevent malware from gaining control of the computer. Therefore, when booting with Secure Boot active, Fedora 18 and later, Ubuntu 16.04 and later, and probably other distributions restrict actions that some Linux users take for granted. For instance, Linux kernel modules must be signed, which complicates use of third-party kernel drivers, such as Nvidia's and AMD/ATI's proprietary video drivers. More recent kernels may, if Secure Boot is active, also check that they were launched from a boot loader that honors Secure Boot, and shut down if this was not the case."</p>

<p>"To launch a locally-compiled kernel, you must sign it with a MOK and register that MOK with the system. (In both cases, you can register a hash rather than sign the binary; but this approach results in an ever-growing database in NVRAM, which is undesirable.) The extent of such restrictions is entirely up to those who develop and sign the boot loader launched by Shim and the kernel launched by that boot loader, though. Some distributions ship kernels that are relatively unencumbered by added security restrictions."</p>

<p>"As a practical matter, if you want to use Shim, you have two choices: You can run a distribution that provides its own signed version of Shim, such as Fedora 18 or later or Ubuntu 12.10 or later; or you can run a signed version from such a distribution or from another source, add your own MOK, and sign whatever binaries you like. This first option is quite straightforward if you happen to want to use a distribution that ships with Shim, and it requires little extra elaboration.If you want to build and run your own kernel (e.g. for development or debugging), then you will obviously end up making binaries that are not signed with the Debian key. If you wish to use those binaries, you will need to either sign them yourself and enroll the key used with MOK or disable SB."</p>


```diff
! CAUTION:
! • Use an administrator password in the BIOS and do not use the same for disk encryption.
! • Building and signing kernel modules is independent of building and signing your own kernel.
! • In Debian, if you do not install the DKMS package, you will have more work to create the X.509
! keys or OpenSSL keys, import the keys with sbsigntool or mokutil, sign the kernel or the kernel
! module file with sbsigntool or sign-file, respectively.
! • Debian comes with signed kernels to work with your GRUB so it will most likely not be 
! necessary to sign the kernel that includes Debian, however any foreign kernel or compiled from
! its source www.kernel.org must be signed or will not be able to load.
! • Ubuntu uses DKMS with signed key by default, Ubuntu creates and imports mok key during system
! installation.
! • In Fedora, if you use DKMS with Secure Boot enabled, you have to import the DKMS sign key
! with mokutil --import /var/lib/dkms/mok.pub and reboot to enroll the key. In Fedora the mok.pub
! and mok.key keys are created and module is signed by DKMS, but only if openssl package
! is installed.
! • UEFI specifications use the terms key and public key (.der) to mean the public part of the
! key pair, or the X.509 certificate. However, in OpenSSL, the term key is the private key (.priv) 
! that's used for signing. Thus, all Secure Boot keys must be X.509 keys and not OpenSSL keys.
! • The instructions provided assume that you're signing a module for the currently running 
! kernel. If you're signing a module for a different kernel, you must provide the path to the
! sign-file utility within the correct kernel version source. Otherwise, the signature type
! for the module for that kernel might not align correctly with the expected signature type.
! • Only a single custom certificate can be added to the kernel because the compressed size 
! of the kernel's boot image can not increase. Do not add multiple certificates to the kernel
! boot image.
```
```diff
- WARNING:
- https://makedebianfunagainandlearnhowtodoothercoolstufftoo.computer/doku.php?id=start:issecurebootworking
- https://discourse.ubuntu.com/t/dkms-package-support-extra-drivers-does-not-work-in-ubuntu-22-10-install-media/31655
```
```diff
- BUGS:
- • Debian Bug report logs - #1037146 Key was rejected by service
- https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1037146
- • Debian Bug report logs - #1012741 Key was rejected by service
- https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1012741
- • Debian Bug report logs - #1012816 Key was rejected by service 
- https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1012816;msg=22
- • Debian Bug report logs - #989463 please align shim-signed dkms behaviour with Ubuntu
- https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=989463
- • Debian Bug report logs - #939392 please provide kmodsign like Ubuntu does
- https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=939392
- • Debian Bug report logs - #928300 shim-signed: secure boot via removable media path unavailable
- https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=928300
```
<br>
</details>

<!-- #################### -->

<details>
<summary><b>3.02 Secure Boot References</b></summary>
<br>

<ul>
BASIC:
<li>https://rodsbooks.com/efi-bootloaders</li>
<li>https://rodsbooks.com/efi-bootloaders/secureboot.html</li>
<li>https://rodsbooks.com/efi-bootloaders/controlling-sb.html</li>
<li>https://ubuntu.com/blog/how-to-sign-things-for-secure-boot</li>
<li>https://wiki.ubuntu.com/UEFI/SecureBoot/DKMS</li>
<li>https://help.ubuntu.com/community/DKMS</li>
<li>https://wiki.ubuntu.com/UEFI/SecureBoot/KeyManagement/KeyGeneration</li>
<li>https://github.com/dell/dkms#dynamic-kernel-module-system-dkms</li>
<li>https://wiki.debian.org/SecureBoot</li>
<li>https://github.com/sitmsiteman/secure-boot-in-debian-based-distro</li>
<li>https://github.com/Batu33TR/secureboot-mok-keys</li>
<li>https://github.com/M-P-P-C/Signing-an-Ubuntu-Kernel-for-Secure-Boot</li>
<li>https://medium.com/@vvvrrooomm/practical-secure-boot-for-linux-d91021ae6471</li>
<li>https://lastdragon.net/?p=2513</li>
ADVANCED:
<li>https://uefi.org</li>
<li>https://intel.com/content/www/us/en/developer/articles/tool/unified-extensible-firmware-interface.html</li>
<li>https://kernel.org/doc/html/v4.15/admin-guide/module-signing.html</li>
<li>https://kernel.org/doc./html/latest/admin-guide/module-signing.html</li>
<li>https://docs.oracle.com/en/operating-systems/oracle-linux/secure-boot/toc.htm#Table-of-Contents</li>
<li>https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/managing_monitoring_and_updating_the_kernel/signing-a-kernel-and-modules-for-secure-boot_managing-monitoring-and-updating-the-kernel</li>
<li>https://ubs_csse.gitlab.io/secu_os/tutorials/linux_secure_boot.html</li>
<li>https://wiki.archlinux.org/title/Unified_Extensible_Firmware_Interface/Secure_Boot</li>
<li>https://wiki.archlinux.org/title/GRUB/EFI_examples#top-page</li>
<li>https://wiki.archlinux.org/title/Signed_kernel_modules</li>
<li>https://wiki.gentoo.org/wiki/Signed_kernel_module_support</li>
<li>https://stack.nexedi.com/P-VIFIB-Enhanced.UEFI.Secure.Boot.Debian</li>
<li>https://manpages.debian.org/buster/openssl/config.5ssl.en.html</li>
<li>https://manpages.debian.org/stretch/keyutils/keyctl.1.en.html</li>
<li>https://manpages.debian.org/testing/pesign/pesign.1.en.html</li>
<li>https://manpages.debian.org/testing/libnss3-tools/index.html</li>
<li>https://openssl.org/docs/man1.0.2/man1/openssl-req.html</li>
<li>https://openssl.org/docs/man1.1.1/man1/req.html</li>
<li>https://openssl.org/docs/manmaster/man5/x509v3_config.html</li>
<li>https://kicksecure.com/wiki/Verified_Boot</li>
<li>https://0pointer.net/blog/authenticated-boot-and-disk-encryption-on-linux.html</li>
<li>https://github.com/nsacyber/TrustedSHIM</li>
<li>https://github.com/nsacyber/HIRS</li>
<li>https://askubuntu.com/questions/762254/why-do-i-get-required-key-not-available-when-install-3rd-party-kernel-modules</li>
<li>https://help.eset.com/efs/8.1/en-US/secure-boot.html</li>
<li>https://help.ggcircuit.com/knowledge/how-to-inject-custom-secure-boot-keys-example</li>
<li>https://blogs.oracle.com/linux/post/the-machine-keyring</li>
<li>https://paldan.altervista.org/signed-linux-kernel-deb-creation-how-to/?doing_wp_cron=1690057748.1645970344543457031250 </li>
<li>https://linuxjournal.com/content/take-control-your-pc-uefi-secure-boot</li>
</ul>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>3.03 YouTube References</b></summary>
<br>

<ul>
<li><a href="https://youtube.com/watch?v=Mqh9o8YY2dg" target="_blank">Use UEFI Secure Boot NOW! (Trafotin)</a></li>
<li><a href="https://youtube.com/watch?v=WBemkwMHLJM" target="_blank">Best Practices for UEFI Secure Boot Customization (UEFIForum)</a></li>
<li><a href="https://youtube.com/watch?v=jtLQ8SzfrDU" target="_blank">Secure Boot from A to Z (The Linux Foundation)</a></li>
<li><a href="https://youtube.com/watch?v=_3mwK6AXo_k" target="_blank">Secure Boot. In Debian. In Buster. Really (DebConf Videos)</a></li>
</ul>

<br>
</details> 

<!-- #################### -->

<DIV class="section" id="VERDE">

<details>
<summary><b>3.04 Sign GRUB</b></summary>
<br>

https://wiki.archlinux.org/title/Kernel_parameters

<p><b>Debian comes with signed kernels to work with your GRUB so it will most likely not be necessary to sign the kernel that includes Debian, however any foreign kernel or compiled from its source www.kernel.org must be signed or will not be able to load.</b></p> 

<br>
</details>

<!-- #################### -->

<details>
<summary><b>3.05 Sign Debian Kernel</b></summary>
<br>

<p><b>
Debian comes with signed kernels to work with your GRUB so it will most likely not be necessary to sign the kernel that includes Debian, however any foreign kernel or compiled from its source www.kernel.org must be signed or will not be able to load.
</b></p>
<p><b>
Only a single custom certificate can be added to the kernel because the compressed size of the kernel's boot image can not increase. Do not add multiple certificates to the kernel boot image.
</b></p>

<p><b>1.First steps</b></p>

<p>All the items below have to do with SecureBoot mode.</p>

```bash
$ sudo mokutil --sb-state
SecureBoot enabled
```

<p>If controlling the Secure Boot state through the EFI setup program is difficult, you can optionally use the mokutil utility to disable Secure Boot at the level of the Shim so that, although UEFI Secure Boot is enabled, no further validation takes place after the Shim is loaded.</p>

<p>What keys are on my system?</p>

```bash
user@debian:~$ sudo mokutil --list-enrolled
or
$ sudo mokutil --list-enrolled | grep Subject:
```

<p>Also the command <ins>modinfo</ins> prints the signature if available, for example:</p>

```bash
$ sudo modinfo /lib/modules/6.1.0-11-amd64/kernel/mm/zsmalloc.ko 
```

<p><b>2.Place to auto-generated MOK</b></p>

<p>MOK - Machine Owner Key</p>

<details>
<summary><b>Introduction</b></summary>
<br>

<p>The use of mokutil that's most relevant to this page is to import a MOK. In this context, importing refers to storing a MOK in the computer's NVRAM, along with a flag to tell Shim and MokUtil that the MOK is there and ready to be enlisted when you next reboot the computer. Keys can be added and removed in the MOK list by the user, entirely separate from the distro CA key. Unlike Debian, Ubuntu has chosen to place their auto-generated MOK at "/var/lib/shim-signed/mok/", which some software--such as Oracle's virtualbox package -expect to be present. Note that using this same location may result in future conflicts. Warning: The MOK.key file is extremely sensitive! An attacker who gains access to it could generate binaries that your computer would accept as authorized. You should change permissions to prevent unauthorized access, and ideally store it on an encrypted external storage medium and unplug it when you're not signing binaries.If you see the key there (consisting of the files MOK.der, MOK.pem and MOK.priv) then you can use these, rather than creating your own.</p>

<br>
</details>

<!-- #################### -->

<p>First make sure the key doesn't exist yet:</p>

```bash
$ ls /var/lib/shim-signed/mok/
```

<p>To create a folder to MOK key:</p>

```bash
$ sudo mkdir -p /var/lib/shim-signed/mok/
```

<p>You can choose another placcautione like "/etc/mok_key/" since there is no standard location at the moment.</p>

```bash
$ sudo mkdir -p /etc/mok_key/
```

<b>3.Generating a new key</b>

<p>Before you create the public and private key for signing the kernel, you need to access the folder you created to be the destination of the keys. Then create the public (mokcertificate.der) and private key (moksigningkey.priv) with one-time password for signing the kernel</p>

```bash
$ cd /var/lib/shim-signed/mok/
$ sudo openssl req -config $(openssl version -d) -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -days 36500 -subj "/CN=ShimSigned/"
```

```bash
$ sudo openssl x509 -in MOK.der -inform DER -outform PEM -out MOK.pem
$ ls -l 
total 12
-rw-r--r-- 1 root root787MOK.der
-rw-r--r-- 1 root root 1123MOK.pem
-rw------- 1 root root 1854MOK.priv
$ sudo chmod 600 /var/lib/shim-signed/mok/*
```

<p>This commands will create both the private and public part of the certificate to sign things. You need both files to sign; and just the public part (MOK.der) to enroll the key in Shim.</p>

<p>To read the certificate file in a human readable format, use</p>

```bash
$ sudo openssl x509 -in /var/lib/shim-signed/mok/MOK.pem -noout -text 
```

<p>Another example of key generation:</p>
```bash
$ sudo openssl req -x509 -new -nodes -utf8 -sha512 -days 3650 -batch -config /etc/ssl/x509.conf -outform DER -out /etc/ssl/certs/pubkey.der -keyout /etc/ssl/certs/priv.key
$ sudo openssl x509 -inform DER -in /etc/ssl/certs/pubkey.der -out /etc/ssl/certs/pubkey.pem
```

<hr>

<b>4.Enrolling your key im Shim</b>

<p>Enroll the key to your installation:</p>

```bash
$ cd /var/lib/shim-signed/mok/
$ sudo mokutil --import MOK.der
```

<p>You will be asked for a one-time <b>password (remember it and type it correctly)</b>, you will just use it to confirm your key selection in the next step (you won't need this password beyond this point, though), so choose any.</p>

<p>Recheck your key will be prompted on next boot</p>

```bash
$ sudo mokutil --list-new
```

<b>5.Restart and finsh the process</b></p>

<p>Restart your system. Changes to the MOK keys may only be confirmed directly from the`bash at boot time. You will encounter a blue screen of a tool called MOKManager. Select "Enroll MOK" and then "View key". Make sure it is your key you created in step 3. Afterwards continue the process and you must enter the password which you provided in step 4. Continue with booting your system.</p>

<p>Verify your key is already enrolled, if the MOK was loaded correctly, with:</p>

```bash
$ sudo mokutil --test-key /var/lib/shim-signed/mok/MOK.der
```

<b>6.Sign your installed kernel or modules</b></p>

<DIV class="subsection" id="6.1" >
<details>
<summary><b>6.1 Modern Method: </b> Signing the Debian kernel and modules with DKMS</summary>
<br>

<p>Building Debian kernel modules with DKMS. The dkms frameworks allows building kernel modules "on the fly" on the local system instead of building them centrally on the Debian infrastructure, DKMS could automatically sign kernel updated modules. If you install the kernel modules through the apt repository, chances are that modules have already been signed by the DKMS signing key. In that case, the traditional method won't work. And the thing you only need to do is to enroll the DKMS signing key into your machine. On systems that use SecureBoot, you will need a Machine Owner Key (MOK) to load DKMS modules. Generate it, enroll it, sign modules with it and then you will be able to load the signed modules.</p>

<p>In Debian, it depends on the dkms package:</p>

```bash
$ sudo apt install dkms
```

<p>In order for dkms to automatically sign kernel modules, it must be told which key to sign the module with. This is done by adding two configuration values to "/etc/dkms/framework.conf", adjusting paths as required:</p>

<p>mok_signing_key="/var/lib/shim-signed/mok/MOK.priv"</p>
<p>mok_certificate="/var/lib/shim-signed/mok/MOK.der"</p>

<br>
</details>

<!-- #################### -->

<DIV class="subsubsection" id="6.2.1">
<details>
<summary><b>DKMS Sign Helper Script</b></summary>
<br>

<p>If these values are provided and dkms is able to build modules but does not attempt to sign them, then it is likely that sign_tool is missing. This is more common in older and/or custom kernels.
In "/etc/dkms/framework.conf", add:</p>

```bash
sign_tool="/etc/dkms/sign_helper.sh"
```

Create "/etc/dkms/sign_helper.sh" with:

```bash
/lib/modules/"$1"/build/scripts/sign-file sha512 /root/.mok/client.priv /root/.mok/client.der "$2"
```

Set Linux kernel info variables

```bash
$ VERSION="$(uname -r)"
$ SHORT_VERSION="$(uname -r | cut -d . -f 1-2)"
$ MODULES_DIR=/lib/modules/$VERSION
$ KBUILD_DIR=/usr/lib/linux-kbuild-$SHORT_VERSION
```

<br>
</details>

<!-- #################### -->

<DIV class="subsubsection" id="6.2.2">
<details>
<summary>Making DKMS modules signing by DKMS signing key usable with the secure boot</summary>
<br>

If you install the kernel modules through the apt repository, chances are that modules have already been signed by the DKMS signing key. In that case, the traditional method won't work. And the thing you only need to do is to enroll the DKMS signing key into your machine. Here is how we can do that:

First, use the method mentioned in Verifying if a module is signed to check if the modules are signed by DKMS signing key.

Next, find the location of the mok signing key and mok certificate. You can view the location in /etc/dkms/framework.conf, and the default location is /var/lib/dkms.

Then, run the following command to enroll the key into the machine:

```bash
$ sudo mokutil --import /var/lib/dkms/mok.pub # prompts for one-time password and /var/lib/mok.pub can be changed, if mok certificate isn't located there.
$ sudo mokutil --list-new # recheck your key will be prompted on next boot

!rebooting machine then enters MOK manager EFI utility: enroll MOK, continue, confirm, enter password, reboot!

$ sudo dmesg | grep cert # verify your key is loaded
```

<br>
</details> 

</DIV>
</DIV>
</DIV>

<!-- #################### -->

<DIV class="subsection" id="6.2">
<details>
<summary><b>6.2 Traditional Method:</b> signing the Debian kernel with sbsigntool</summary>
<br>

Building and signing modules is independent of building and signing your own kernel (vmlinuz). To sign a custom kernel or any other EFI binary you want to have loaded by Shim, you’ll need to use a different command: sbsign (PEM). In this case, we’ll need the certificate in a different format, <ins>mokutil</ins> needs DER, <ins>sbsign</ins> needs PEM. Convert the certificate into PEM (.der to .pem), for example:
```
$ sudo openssl x509 -in MOK.der -inform DER -outform PEM -out MOK.pem
```
For example, use it to sign our Kernel:
```
$ sudo sbsign --key MOK.priv --cert MOK.pem "/boot/vmlinuz-$VERSION" --output "/boot/vmlinuz-$VERSION.tmp"
$ sudo mv "/boot/vmlinuz-$VERSION.tmp" "/boot/vmlinuz-$VERSION"
```
For example, use it to sign our EFI binary:
```
$ sudo sbsign --key MOK.priv --cert MOK.pem grubx64.efi --output grubx64.efi.signed
$ sudo mv "grubx64.efi.signed" "grubx64.efi"
```

Sign the installed Kernel using the key created according to the location you gave it, this will create a new signed vmlinuz. Sign vmlinuz using sbsign and .pem certificate, it should be at /boot/vmlinuz-[KERNEL-VERSION]:

To check your Kernel version, you can also use the command:
```
$ uname -r
6.1.0-12-amd64
```
Signing vmlinuz (kernel) using sbsign:
```
$ sudo sbsign --key MOK.priv --cert MOK.pem /boot/vmlinuz-[KERNEL-VERSION] --output /boot/vmlinuz-[KERNEL-VERSION].signed
```
For example
```
$ sudo sbsign --key /var/lib/shim-signed/mok/MOK.priv --cert /var/lib/shim-signed/mok/MOK.pem "/boot/vmlinuz-6.1.0-12-amd64" --output "/boot/vmlinuz-6.1.0-12-amd64.signed"
```
alternatively:
```
$ cd /var/lib/shim-signed/mok/
$ sudo sbsign --key MOK.priv --cert MOK.pem "/boot/vmlinuz-[KERNEL-VERSION] --output "/boot/vmlinuz-[KERNEL-VERSION].signed"
```
Remove the unsigned one and restore the original name of the signed one, this will create a new signed vmlinuz: 
```
$ sudo mv "/boot/vmlinuz-6.1.0-12-amd64.signed" "/boot/vmlinuz-6.1.0-12-amd64"
```
Update your grub-config
```
$ sudo update-grub
```
Reboot your system and select the signed kernel. Now your system should run under a signed kernel and upgrading GRUB2 works again. If you want to upgrade the custom kernel, you can sign the new version easily by following above steps again from step seven on. Thus BACKUP the MOK-keys (MOK.der, MOK.pem, MOK.priv) in an encrypted device.

Verifying if a module is signed. The command modinfo prints the signature if available, for example:
```
$ sudo modinfo /boot/vmlinuz-6.1.0-12-amd64
```
Others commands
```
$ sudo dmesg | grep cert
$ sudo sbverify --list /boot/vmlinuz-6.1.0-12-amd64
$ sudo sbverify --cert /etc/mok_key/mok.crt /boot/vmlinuz-6.1.0-12-amd64
```

<br>
</details>

</DIV>
</DIV>
</DIV>

<!-- #################### -->

<details>
<summary><b>3.06 Reset Secure Boot Keys</b></summary>
<br>

<h4>Reset Secure Boot keys for Kernel or Modules</h4>

Reset Key for Kernel
👷🛠️UNDER CONSTRUCTION🚧🏗<br>

https://rodsbooks.com/efi-bootloaders/controlling-sb.html#setuputil<br>

"The ASUS permits to you restore the default keys, so this isn't really vital if you're starting from the factory defaults with this model; but if yours doesn't offer such a reset-to-defaults option or if you've modified the keys, saving them may be prudent. As the name implies, this option also erases all your Secure Boot keys. (It does not erase your MOKs, though.)"<br>

<b>Reset MOK Keys for Modules</b>
👷🛠️UNDER CONSTRUCTION🚧🏗<br>

https://rodsbooks.com/efi-bootloaders/controlling-sb.html#key-revocation<br>

```
$ sudo mokuitil --sb-state
SecureBoot disabled
```
```
$ sudo mokutil --disable-validation
```
Backup. Exports to list (ideally store it on an encrypted external storage medium).
```
$ sudo mokutil --export
```
To remove all (MOKs being a list and not just a single MOK, you can make the shim trust keys from several different vendors, allowing dual and multi-boot)
```
$ sudo mokutil --reset --mok
```
```
$ sudo mokutil --reset
```
To remove one key, first show all keys.
```
$ sudo ls -1 MOK*
```
Shows you keys enrolled.
```
$ sudo mokutil --list-enrolled | grep Subject:
```
Delete those not enrolled to maintain secure boot.
```
$ sudo mokutil --delete MOK-0001.der
```
Uninstall the modules, if it was made with script "make".
```
$ cd ~/realtekwifi
$ sudo make uninstall
```
or
```
sudo rmmod 8192eu
sudo rmmod rtl8xxxu
sudo dkms remove -m rtl8192eu -v 1.0
```
or
```
sudo lshw -C network
```
Reset de modules and unload them in Kernel
```
$ sudo depmod -a -v
$ sudo update-initramfs -k all -u -v
```

<br>
</details> 

<!-- #################### -->

<details>
<summary><em><b>3.07 OpenSSL Errors</b></em></summary>
<br>

Error 1 - No such file
<pre>
At main.c:298:
- SSL error:FFFFFFFF80000002:system library::No such file or directory: ../crypto/bio/bss_file.c:67
- SSL error:10000080:BIO routines::no such file: ../crypto/bio/bss_file.c:75
</pre>
Error 2 - Unable to get passphrase
<pre>
At main.c:170:
- SSL error:07880109:common libcrypto routines::interrupted or cancelled: ../crypto/passphrase.c:184
- SSL error:07880109:common libcrypto routines::interrupted or cancelled: ../crypto/passphrase.c:184
- SSL error:1C80009F:Provider routines::unable to get passphrase: ../providers/implementations/encode_decode/decode_epki2pki.c:96
- SSL error:07880109:common libcrypto routines::interrupted or cancelled: ../crypto/passphrase.c:184
- SSL error:04800068:PEM routines::bad password read: ../crypto/pem/pem_pkey.c:155
sign-file: /var/lib/shim-signed/mok/MOK.priv: Success
</pre>

<b>Possible Causes</b>
Certificate or key are missing. That statement is telling us one of both files that DKMS or OpenSSL.conf are looking for are not where it is looking. Another possibility is that to sign a custom kernel or any other EFI binary you want to have loaded by shim, you’ll need to use a different command: sbsign or mokutil. Unfortunately, we’ll need the certificate in a different format in this case, <ins>mokutil</ins> needs DER, <ins>sbsign</ins> needs PEM. Convert the certificate into PEM (.der to .pem).

Under normal conditions, when CONFIG_MODULE_SIG_KEY is unchanged from its default, the kernel build will automatically generate a new keypair using openssl if one does not exist in the file:

certs/signing_key.pem
during the building of vmlinux (the public part of the key needs to be built into vmlinux) using parameters in the:

certs/x509.genkey
file (which is also generated if it does not already exist).

It is strongly recommended that you provide your own x509.genkey file.

As long as the signing key is enrolled in shim and does not contain the Object Identifier (OID) from earlier (since that limits the use of the key to kernel module signing), the binary should be loaded just fine by shim. 

Cause 1

Wrong syntax of sign-file

```bash
$ sudo scripts/sign-file sha512 kernel-signkey.priv kernel-signkey.x509 module.ko
```

https://kernel.org/doc/html/v4.15/admin-guide/module-signing.html

Cause 2

This is where Debian places openssl.cnf for the OpenSSL they provide:

<pre>
$ openssl version -d
OPENSSLDIR: "/usr/lib/ssl"
$ ls -l /usr/lib/ssl
lrwxrwxrwx 1 root root mmm 30 mm:mm openssl.cnf -> /etc/ssl/openssl.cnf
$ ls -l /etc/ssl/
-rw-r--r-- 1 root root mmm 30 mm:mm openssl.cnf
</pre>

It is kind of buried in OpenSSL source code for apps.c, load_config and what happens when openssl.cnf is NULL (i.e., no -config option or OPENSSL_CONF envar). When openssl.cnf is NULL and no overrides, then OPENSSLDIR is used.

Cause 2

Wrong syntax of OpenSSL

*Man Page OpenSSL:
<a href="https://openssl.org/docs/man1.0.2/man1/openssl-req.html">Man OpenSSL</a> 
```bash
$ sudo openssl req -x509 -new -nodes -utf8 -sha256 -days 36500 -batch -config openssl.cnf -outform DER -out MOK.der -keyout MOK.priv
$ sudo openssl req -x509 -new -nodes -utf8 -sha256 -days 36500 -batch -outform DER -out MOK.der -keyout MOK.priv
$ sudo openssl req -x509 -new -nodes -utf8 -sha256 -days 36500 -batch -config openssl.cnf -outform DER -out MOK.der -keyout MOK.priv
$ sudo openssl req -x509 -new -nodes -utf8 -sha256 -days 36500 -batch -outform DER -out MOK.der -keyout MOK.priv
```
*Ubuntu:
<a href="https://ubuntu.com/blog/how-to-sign-things-for-secure-boot">https://ubuntu.com/blog/how-to-sign-things-for-secure-boot</a> 

```bash
$ sudo openssl req -config ./openssl.cnf -new -x509 -newkey rsa:2048 -nodes -days 36500 -outform DER -keyout "MOK.priv" -out "MOK.der"
```

*Debian:
<a href="https://wiki.debian.org/SecureBoot">https://wiki.debian.org/SecureBoot</a>

```cosole
$ sudo openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -days 36500 -subj "/CN=My Name/"
$ sudo openssl x509 -inform der -in MOK.der -out MOK.pem
```

*Fedora:
<a href="https://docs.fedoraproject.org/en-US/quick-docs/kernel-build-custom/">https://docs.fedoraproject.org/en-US/quick-docs/kernel-build-custom/</a>

```bash
$ sudo openssl req -new -x509 -newkey rsa:2048 -keyout "key.pem" -outform DER -out "cert.der" -nodes -days 36500 -subj "/CN= yourname/"
```

<b>Solutions</b>

Solution 1:

```bash
$ sudo dpkg -S sign-file
```

Solution 2:

Location

```bash
$ openssl version -d
```

You can use strace (man strace) to check the configuration file being used while generating the self-signed certificate.

```bash
$ strace -e trace=open,openat -o /tmp/strace.log.0 openssl req \
-newkey rsa:2048 -x509 -nodes -keyout localhost.key \
-new -out localhost.crt
$ grep "openssl.cnf" /tmp/strace.log.0
openat(AT_FDCWD, "/etc/pki/tls/openssl.cnf", O_RDONLY) = 3
sudo cat /etc/ssl/openssl.cnf
openssl_conf = openssl_init from /etc/ssl/openssl.cnf
```

To override system default with user level environment. An empty file will do:
```
touch ~/.openssl.cnf
```
BASH define & export:
```
export OPENSSL_CONF=~/.openssl.cnf
```
Wrap application within a script:
```
export OPENSSL_CONF=/dev/null
```


Solution 3: 
 
Rescue if install/build fails in previous step

```bash
$ sudo apt-get install -f
$ sudo dpkg-reconfigure broadcom-sta-dkms
```

<br>
</details>

<!-- #################### -->

<details>
<summary><b>3.08 Sign Wi-Fi</b></summary>
<br>

How to get Wi-Fi Module signed for Secure Boot

Mandatory packages: <code>openssl</code>, <code>sign-file</code> and <code>mokutil</code>.

If you are going to compile the module in the kernel, usually the maintainer will indicate the packages to be installed beforehand. For example, you will need to install "make", "gcc", "kernel headers", "kernel build essentials", and "git".

```bash
$ sudo apt install git make gcc build-essential linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,')
```

Brief - Sign with Sign-file

<pre>
1- Install a driver and test without Secure Boot
2- Enable Secure Boot
3- Generate a private and public keys
5- Import
6- Reboot and Enroll
4- Sign the module with sign-file
</pre>

1. Check if secure boot is enabled. When Secure Boot is disabled, the shimx64.efi will just directly load the real grubx64.efi bypassing all the Secure Boot steps, including loading the MOK. With the MOK not loaded, the kernel will have no way to recognize the signature on your module as valid. And with Secure Boot disabled, a signed module with an invalid signature is rejected, while unsigned modules only get a warning and a taint mark on any future oops/panic messages.


```bash
$ sudo mokutil --sb-state
SecureBoot enabled
```

You can create a personal public/private RSA key pair to sign the kernel modules. You can chose to store the key/pair, for example, in the <ins>/var/lib/shim-signed/mok/</ins> directory. Then create a new pair of private key (MOK.priv) and public key (MOK.der).

```bash
$ sudo mkdir -p /var/lib/shim-signed/mok
$ sudo openssl req -config /usr/lib/ssl/openssl.cnf -new -x509 -newkey rsa:2048 -nodes -days 36500 -outform DER -keyout "/var/lib/shim-signed/mok/MOK.priv" -out "/var/lib/shim-signed/mok/MOK.der" -subj "/CN=MODULE/"
$ ls -l /var/lib/shim-signed/mok/
total 8
-rw-r--r-- 1 root root779 MOK.der
-rw------- 1 root root 1704 MOK.priv
$ sudo chmod 600 /var/lib/shim-signed/mok/*
```

2. Enroll the public key (MOK.der) to MOK (Machine Owner Key) by entering the command:
```bash
$ sudo mokutil --import /var/lib/shim-signed/mok/MOK.der
input password:
input password again:
```
Recheck if your key will be prompted on next boot:
```bash
$ sudo mokutil --list-new
```

3. Reboot and Enroll

The password in this step is a temporary use password you'll only need to remember for a few minutes. Reboot the machine. When the bootloader starts, you should see a screen asking you to press a button to enter the MOK manager EFI utility. Note that any external external keyboards won't work in this step. Select Enroll MOK in the first menu, then continue, and then select Yes to enroll the keys, and re-enter the password established in previous step. Then select OK to continue the system boot.

Steps:
-> "Enroll MOK"
-> "Continue".
-> "Yes".
-> Enter the password you set up just now.
-> Select "OK" and the computer will reboot again.

There are serveral commands to verify if your key "MODULE" is loaded and enrolled

```bash
$ sudo mokutil --test-key /var/lib/shim-signed/mok/MOK.der
$ sudo dmesg | grep cert
$ sudo cat /proc/keys | grep MODULE
$ openssl x509 -in /var/lib/shim-signed/mok/MOK.der -inform DER -text -noout
```

4. Sign the module with sign-file

Use the same password you used before when setting up MOK for the BIOS to avoid confusion. Make sure you type the password carefully here with no errors, and dont get confused by it just waiting.

```bash
$ sudo su
~# read -s KBUILD_SIGN_PIN
```

Next export it and sign all modules.

```bash
$ sudo su
~# export KBUILD_SIGN_PIN
```

NOTE: KBUILD_SIGN_PIN allows a passphrase or PIN to be passed to the sign-file utility when signing kernel modules, if the private key requires such.

For sing the module, depending on your platform, the exact location of `sign-file` might vary. In Debian 12 (Bookworm) it was in kernel generic <ins>/usr/src/linux-kbuild-$(uname -r | cut -d . -f 1-2)/scripts/sign-file</ins> .

And where was the module installed? In <ins>/lib/modules/$(uname -r)/kernel/drivers/*.ko</ins>

```bash
$ sudo modinfo -n rtw_8723d
/lib/modules/6.1.0-13-amd64/kernel/drivers/net/wireless/realtek/rtw88/rtw_8723d.ko
```

To sign modules (with your KBUILD_SIGN_PIN), go to the directory containing the modules, and run

```bash
$ sudo su
~# cd /lib/modules/6.1.0-13-amd64/kernel/drivers/net/wireless/realtek/rtw88/
~# /usr/src/linux-kbuild-6.1/scripts/sign-file sha256 /var/lib/shim-signed/mok/MOK.priv /var/lib/shim-signed/mok/MOK.der rtw_8723d.ko
```

Other not tested form
```bash
sudo --preserve-env=KBUILD_SIGN_PIN sh /usr/src/linux-kbuild-$(uname -r | cut -d . -f 1-2)/scripts/sign-file sha256 /var/lib/shim-signed/mok/MOK.priv /var/lib/shim-signed/mok/MOK.der $(modinfo -n rtw_8723d)
```

Assuming you type the password correct, you wont get any errors. You should be able to now see that a module is signed. You can pick any module in that directory but as an example:

```bash
$ sudo modinfo rtw_8723d
(...)
signer: MODULE
sig_key:XX:XX:XX:XX:XX:XX:XX:XX...
sig_hashalgo: sha256
signature:XX:XX:XX:XX:XX:XX:XX:XX...
(...)
```

NOTE: Filename may be different just use tab completion to find appropriate file to check some other name.

You could try load the modules

```bash
$ sudo modprobe -v rtw_8723d
```
After any kernel module loading failure, you should check the dmesg output: it might include a more specific error message. In this case it is likely to indicate that a module signature failed a validity check.

```bash
$ sudo dmesg --since -1m
```

If the modules are needed to boot your machine, make sure to update the initramfs, e.g. using
```bash
$ sudo update-initramfs -k all -u
```

<br>

<hr>

Building and signing modules is independent of building and signing your own kernel. To sign a custom kernel or any other EFI binary you want to have loaded by shim (PEM), you’ll need to use a different command: sbsign (PEM). In this case, we’ll need the certificate in a different format, <ins>mokutil</ins> needs DER, <ins>sbsign</ins> needs PEM. Convert the certificate into PEM (.der to .pem), for example:
```bash
$ sudo openssl x509 -in MOK.der -inform DER -outform PEM -out MOK.pem
```
For example, use it to sign our Kernel:
```bash
$ sudo sbsign --key MOK.priv --cert MOK.pem "/boot/vmlinuz-$VERSION" --output "/boot/vmlinuz-$VERSION.tmp"
$ sudo mv "/boot/vmlinuz-$VERSION.tmp" "/boot/vmlinuz-$VERSION"
```
For example, use it to sign our EFI binary:

```bash
$ sudo sbsign --key MOK.priv --cert MOK.pem my_binary.efi --output my_binary.efi.signed
```
As long as the signing key is enrolled in shim and does not contain the Object Identifier (OID) from earlier (since that limits the use of the key to kernel module signing), the binary should be loaded just fine by shim.

5.VirtualBox Sign Helper Script

Future kernel updates would require the updated kernels to be signed again, so it makes sense to put the signing commands in a script that can be run at a later date as necessary (DKMS package could do it automatically).

```console
$ sudo touch /var/lib/shim-signed/modules/sign-modules
$ sudo nano /var/lib/shim-signed/modules/sign-modules

#!/bin/bash

for modfile in $(dirname $(modinfo -n </yourmodulehere>))/*.ko; do
echo "Signing $modfile"
/usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
/var/lib/shim-signed/modules/module.priv \
/var/lib/shim-signed/modules/module.der "$modfile"
done
```
Add execution permission, and run the script above as root from the /var/lib/shim-signed/modules/ directory.
```sh
$ sudo -i
$ cd /var/lib/shim-signed/modules
$ chmod 700 /var/lib/shim-signed/modules/sign-vbox-modules ./sign-vbox-modules
```
Load vboxdrv module and launch VirtualBox.
```bash
$ sudo modprobe vboxdrv
or
$ /sbin/modprobe vboxdrv 
```

<br>
</details>

<!-- #################### -->

<details>
<summary><b>3.09 Sign NVIDIA</b></summary>
<br>

https://wiki.debian.org/DontBreakDebian#Don.27t_use_GPU_manufacturer_install_scripts<br>
https://github.com/NVIDIA/open-gpu-kernel-modules<br>
https://askubuntu.com/questions/1023036/how-to-install-nvidia-driver-with-secure-boot-enabled<br>

<p>Download the latest driver from the NVIDIA website: https://geforce.com/drivers.</p>

<p>Create a new pair of private key (Nvidia.key) and public key (Nvidia.der) by running the command:</p>

<code>openssl req -new -x509 -newkey rsa:2048 -keyout PATH_TO_PRIVATE_KEY -outform DER -out PATH_TO_PUBLIC_KEY -nodes -days 36500 -subj "/CN=Graphics Drivers"</code>

Example:

<code>openssl req -new -x509 -newkey rsa:2048 -keyout /home/$USER/Nvidia.key -outform DER -out /home/$USER/Nvidia.der -nodes -days 36500 -subj "/CN=Graphics Drivers"</code>

<p>Enroll the public key (nvidia.der) to MOK (Machine Owner Key) by entering the command:</p>

<code>sudo mokutil --import PATH_TO_PUBLIC_KEY</code>

<p>Example:</p>

<code>sudo mokutil --import /home/$USER/Nvidia.der`</code>

<p>This command requires you to create a password for enrolling. Afterwards, reboot your computer, in the next boot, when the system asks you to enroll, you enter the password you created in this step to enroll it. Read more: https://sourceware.org/systemtap/wiki/SecureBoot</p>

<p>For installing the NVidia driver for the first time, you need to disable the Nouveau kernel driver by entering the command:</p>

<code>echo options nouveau modeset=0 | sudo tee -a /etc/modprobe.d/nouveau-kms.conf; sudo update-initramfs -u</code>

<p>Reboot.</p>

<p>Install the driver by entering the command:</p>

<code>sudo sh ./XXXXXX.run -s --module-signing-secret-key=PATH_TO_PRIVATE_KEY --module-signing-public-key=PATH_TO_PUBLIC_KEY</code>

<p>here:</p>

<p>XXXXXX: name of file installer (downloaded from NVIDIA).</p>

<p>PATH_TO_PRIVATE_KEY: full path to private key. If you place it in your home folder, use /home/USER_NAME/ instead of ~.</p>

<p>PATH_TO_PUBLIC_KEY: full path to public key. If you place it in your home folder, use /home/USER_NAME/ instead of ~.</p>

<p>Example:</p>

<code>sudo sh ./NVIDIA-Linux-x86_64-390.67.run -s --module-signing-secret-key=/home/$USER/Nvidia.key --module-signing-public-key=/home/$USER/Nvidia.der</code>

<p>Done.</p>

<br>
</details> 

<!-- #################### -->

<details>
<summary><b>3.10 Sign VirtualBox</b></summary>
<br>

How to get VirtualBox signed for Secure Boot<br>

https://wiki.debian.org/SecureBoot#MOK_-_Machine_Owner_Key<br>

<br>
</details> 

<!-- #################### -->

<details>
<summary><b>3.11 Sign Ventoy</b></summary>
<br>

<h4>About Secure Boot in UEFI mode</h4>

https://ventoy.net/en/doc_secure.html<br>

<br>
</details> 

<!-- #################### -->

<details>
<summary><b>3.12 rEFInd Bootloader</b></summary>
<br>
https://rodsbooks.com/refind/getting.html<br>
https://wiki.ubuntu.com/EFIBootLoaders<br>
<br>
</details>

<!-- #################### -->

<details>
<summary><b>3.13 Sign Custom Secure Keys</b></summary>
<br>
https://github.com/nsacyber/Hardware-and-Firmware-Security-Guidance/blob/master/secureboot/Linux.md<br>

<br>
</details> 

<!-- #################### -->

<details>
<summary><b>3.14 Encrypted boot</b></summary>
<br>

<p>Encrypted boot partition manager with UEFI Secure Boot support</p>

https://github.com/xmikos/cryptboot<br>
https://github.com/kmille/cryptboot<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>3.15 Sign with TPM 2.0</b></summary>
<br>
https://github.com/squarooticus/efi-measured-boot<br>
https://github.com/osresearch/safeboot<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>3.16 Secure Boot with Yubikey</b></summary>
<br>
https://github.com/DimanNe/secure-boot<br>
https://github.com/sandrokeil/yubikey-full-disk-encryption-secure-boot-uefi<br>

<br>
</details>

<hr>
<!--################################### -->

<h2>4. SYSTEM SECURITY</h2>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<details>
<summary><b>4.01 Introduction</b></summary>
<br>

<h4>Shut up, keep personal life separated and do not boast</h4>
<h4>Nerver contamine systems</h4>
<h4>Never reveal yoour operational details</h4>
<h4>Never reveal your plans</h4>
<h4>Never trust anyone<br>
(don't be blackmailed)</h4>
<h4>Never operate from your own house</h4>
<h4>Maintain cautious habits<br>
(be proactively paranoid DSM-5 301.0 F60.0).</h4>
<h4>The weakest link is human</h4>
<h4>Drink water</h4>

*It seems that the worst problem is collateral intrusion, the involvement of seemingly trustworthy uninvolved close third parties. The end of trust.<br>

*OWASP Principles<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>4.02 Apparmor</b></summary>
<br>

https://github.com/Kicksecure/security-misc<br>
https://apparmor.net<br>
https://wiki.debian.org/AppArmor<br>
https://wiki.debian.org/AppArmor/HowToUse<br>
https://github.com/Kicksecure/apparmor-profile-torbrowser<br>
https://wiki.ubuntu.com/DebuggingApparmor<br>

<code>$ sudo apt install -y apparmor &&</code><br>
<code>$ sudo apt install -y apparmor-profiles &&</code><br>
<code>$ sudo apt install -y apparmor-utils &&</code><br>
<code>$ sudo apt install -y apparmor-profiles-extra</code><br>

<p>*Note: an AppArmor rule could prevent port use by an individual program.</p>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>4.03 Privileges</b></summary>
<br>

<h4>How to Add User to Sudoers</h4>

<code> $ su</code><br>
<code> # usermod -aG sudo username</code><br>
<code> # exit</code><br>
<code> $ getent group sudo</code><br>

<p>*Logoff to take effect.</p>

<p>
<code>-a</code> - <em>append</em> groups to group user belongs to (instead of overwrite). 
<code>groupnames</code> - a comma-separated (no spaces!) list of group names to add user to.
User <em>must</em> log out and back in for group membership updates to be applied.
</p>

<h4>&quot;Safe&quot; alternative to bypassing password prompt for <code>sudo</code></h4>

<p>To avoid getting prompted for password when running commands with <a href="https://manpages.ubuntu.com/manpages/precise/en/man8/sudo.8.html"><code>sudo</code></a>, one common option is to append <code>NOPASSWD:ALL</code> to your user name in the <code>/etc/sudoers</code> file. Obviously, this is a security risk. Instead, you can run the <code>sudo</code> command with the <code>-s</code> (&quot;session&quot;) flag to allow the <code>sudo</code> session to be persistent until your close the terminal (end the session). To explicitly end the session run <code>sudo -k</code> (&quot;kill&quot;).
<a href="https://vitux.com/how-to-specify-time-limit-for-a-sudo-session/">Reference</a></p>

<h5>Table</h5>

<h5>Examples</h5>

<h5>CHOW</h5>

<pre>
$ sudo chown user:user -R /home
$ sudo chown user:user -R /media
</pre>

<h5>CHMOD</h5>

<pre>
$ sudo chmod 766 -R /home
$ sudo chmod 766 -R /media
</pre>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>4.04 Audit System</b></summary>
<br>

https://redhat.com/sysadmin/configure-linux-auditing-auditd<br>

<h5>System Auditors</h5>

<h4>Automatic</h4>

<code>$ sudo apt install lynis</code><br>
<code>$ sudo apt install checksecurity</code><br>

<h4>Manual</h4>

<code>$ sudo apt install audit</code><br>

<h5>Rootkit Detect</h5>

<code>$ sudo apt install chkrootkit</code><br>
<code>$ sudo apt install rkhunter</code><br>
<code>$ sudo apt install chkboot</code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>4.05 Antimalware</b></summary>
<br>

<h4>Dangerous PDFs, office documents, or images and</h4>

<p>Take potentially dangerous PDFs, office documents, or images and convert them to safe PDFs.</p>

https://dangerzone.rocks<br>
https://github.com/freedomofpress/dangerzone<br>

<h4>ClamAV</h4>

https://clamav.net<br>
https://docs.clamav.net<br>
https://docs.clamav.net/manual/Usage<br>
https://github.com/Cisco-Talos/clamav<br>
https://wiki.archlinux.org/title/ClamAV<br>

<p>ClamAV is malware detection toolkit, not an endpoint security suite. ClamAV does not disinfect files, It only removes them from the system or moves them to a specified location.</p>

<p>"Clam AntiVirus is an open source (GPL) anti-virus toolkit for UNIX. It provides a number of utilities including a flexible and scalable multi-threaded daemon, a command line scanner and advanced tool for automatic database updates. <b>Because ClamAV's main use is on file/mail servers for Windows desktops, it primarily detects Windows viruses and malware with its built-in signatures</b>."</p>

<p>False positives happen, include --remove options for deleting any file which alerts during a scan is generally a terrible idea.</p>

<h4>ClamAV (GUI)</h4>

https://github.com/dave-theunsub/clamtk<br>

<code>$ sudo apt install clamtk</code>

<h4>ClamAV (CLI)</h4>

<code>$ sudo apt install -y clamav</code><br>
<code>$ sudo apt install -y clamav-daemon</code><br>
<code>$ sudo systemctl start clamav-freshclam</code><br>
<code>$ sudo freshclam</code><br>

<sub><b>*Note that Clamscan doesn't need the daemon running.</sub><br>

<sub><b>*Note that the "clamd" process (clamav-daemon.service) uses about 1GB of memory (doubles to 2G when new database is loaded), it loads the complete database of virus definitions into memory. In the other side, this allows it to be super fast. You could circunvent:</b>

$ sudo nano /etc/clamav/clamd.conf<br>

ConcurrentDatabaseReload no<br>
ReadTimeout 10<br>
MaxThreads 3<br>

$ sudo nano /etc/systemd/system/clamav-daemon.service.d/extend.conf <br>

[Service]<br>
IOSchedulingPriority = 7<br>
CPUSchedulingPolicy = 5<br>
MemoryLimit=256M<br>
CPUQuota=30%<br>
Nice = 19<br>
</sub>

<pre>
&nbsp; • Commands
&nbsp; $ man clamscan
&nbsp; • Basic command to scan all system, copy infected files and log
&nbsp; $ mkdir /home/$USER/Virus && touch /home/$USER/Virus/Virus.txt  
&nbsp; $ sudo freshclam && sudo clamscan -vir --copy=/home/$USER/Virus --log=/home/$USER/Virus/Virus.txt --exclude-dir="^/sys" /
&nbsp; • Basic command to scan all system, move infected files and log
&nbsp; $ mkdir /home/$USER/Virus && touch /home/$USER/Virus/Virus.txt  
&nbsp; $ sudo freshclam && sudo clamscan -vir --move=/home/$USER/Virus --log=/home/$USER/Virus/Virus.txt --exclude-dir="^/sys" /
&nbsp; • Scan file
&nbsp; $ clamscan --verbose /file.bin
&nbsp; • Scan compressed files
&nbsp; $ clamscan --verbose --scan-archive --alert-exceeds-max --alert-encrypted /file.zip
&nbsp; • Others
&nbsp; $ clamscan -vr --suppress-ok-results --bell /$USER/home
&nbsp; $ clamscan -vro --heuristic-alert --copy=/home/$USER/Virus --log=/home/$USER/Virus/Virus.txt --bell /$USER/home
&nbsp; $ clamscan -vro --bell --remove /$USER/home 
</pre>

<pre>
&nbsp; • Debug
&nbsp; $ sudo cat /etc/clamav/clamd.conf
&nbsp; $ sudo nano /etc/clamav/clamd.conf
&nbsp; $ sudo nano /etc/systemd/system/clamav-daemon.service.d/extend.conf
&nbsp; $ sudo cat /var/log/clamav/clamav.log
&nbsp; $ sudo systemctl status clamav-daemon
&nbsp; $ sudo systemctl stop clamav-daemon
&nbsp; $ sudo systemctl disable clamav-daemon
&nbsp; $ sudo systemctl status clamav-freshclam
&nbsp; $ sudo systemctl stop clamav-freshclam
&nbsp; $ sudo systemctl disable clamav-freshclam
&nbsp; $ sudo crontab -l 
&nbsp; $ sudo systemctl list-timers
</pre>

*If you get AppArmor denials about clamd, set the profile to a complain-only mode:<br>

<code>$ sudo aa-complain clamd</code>

<h4>Signatures compatible with ClamAV</h4>

• RFXN
https://rfxn.com/projects/linux-malware-detect<br>

• Malware Blocklist
https://malwareblocklist.org<br>

• YARA rules
https://github.com/Cisco-Talos/clamav-documentation/blob/873bc5f95c1b79f94d7f55602b5e433423ba9705/src/manual/Signatures/YaraRules.md<br>

https://infosecinstitute.com/resources/reverse-engineering/malware-analysis-clamav-yara<br>

<pre>
$ sudo apt install yara
$ sudo clamscan -d yara.rule -r /
</pre>

<h4>ESET NOD32 Antivirus for Linux Desktop</h4>

https://eset.com/my/home/antivirus-linux/download<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>4.06 Updating</b></summary>
<br>

https://www.debian.org/doc/manuals/debian-handbook/sect.regular-upgrades.en.html<br>

<p>Apply security updates as quickly as possible. According to 2020 reached conducted by Unit 42 at Palo Alto, approximately 80% of exploits are published faster than Common Vulnerabilities and Exposures (CVEs).</p>

<h5>SYSTEMD Vs. CRON</h5>

<code>sudo apt install systemd-cron</code> ?<br>

<pre>
• Commands
$ sudo crontab -l 
$ sudo systemctl list-timers
$ systemctl start "service"
$ systemctl enable "service"
$ systemctl status "service"
</pre>

<h4>Set up automatic updates on Debian</h4>


<br>
</details>

<hr>
<!--################################### -->

<h2>5. NETWORK</h2>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<details>
<summary><b>5.01 Router</b></summary>
<br>

<h4>Router Freedom - Open-source routers - Device Neutrality</h4>

https://docs.fsfe.org/en/teams/router-freedom-tech-wiki<br>
https://fsfe.org/contribute/spreadtheword#device-neutrality<br>

<p>"There are a number of open-source options for routers that will take even a small consumer router and turn it into a powerful device with enterprise-level capabilities. My personal favorite is DD-WRT, but other popular options include pfSense, OpenWRT, and Tomato. While you can buy pre-flashed devices in some cases (FlashRouters for DD-WRT and Protectli for pfSense), I always encourage you to do it yourself if you’re comfortable to ensure maximum security (and also to be familiar with the update process). Having said all of this, if you are unsure if an open source router is right for you (the wealth of options can be overwhelming to some), I still encourage you to get a router that wasn’t provided by your ISP. Make sure it offers VLANs and VPN capabilities, as we will be using these heavily to protect your home."</p>

<p>https://thenewoil.org/en/guides/quick-start/wifi-guide</p>

<h5>Examples of VPN routers and firmwares</h5>

<table style="width: 100%" cellspacing="0" cellpadding="0">
<thead>
<tr>
<th>Router</th>
<th>Firmware</th>
</tr>
</thead>
<tbody>
<tr>
<td valign="top" style="width: 50%">
 EdgeRouter and Ubiquiti<br>
 GL.iNet<br>
 Netduma<br>
 Netgear<br>
 MikroTik<br>
 Peplink/Pepwave<br>
</td>
<td valign="top" style="width: 50%">
 OpenWRT<br>
 AsusWRT Merlin<br>
 DD-WRT<br>
 DrayTek Vigor<br>
 OPNsense 19.1<br>
 Padavan<br>
 pfSense 2.4.4<br>
 pfSense 2.4.5<br>
 pfSense 2.5<br>
 Sabai<br>
 Tomato<br>
</td>
</tr>
</tbody>
</table>

https://openwrt.org<br>
https://pfsense.org<br>

<h4>Router Guide</h4>

https://avoidthehack.com/router-wireless-guide<br>

<ul>
<li>Change the default router password</li>
<li>Turn off UPnP</li>
<li>Use the router’s firewall capabilities</li>
<li>Use sufficient Wi-Fi encryption</li>
<li>Set a strong Wi-Fi password</li>
<li>Change the Wi-Fi (SSID) name from the default</li>
<li>Hide the Wi-Fi (SSID)</li>
<li>Consider using open-source router firmware</li>
<li>Keep router firmware updated</li>
<li>Keep other software up to date</li>
</ul>

<p>*These are solutions outside the military level. Forgetting Wi-Fi and using an RJ-45 to USB should be considered for home use.</p>

<p>*Misconfigured DNS settings on a router may lead to the device sending DNS queries to unintended DNS servers.</p>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.02 Network</b></summary>
<br>

<h4>Network Managers</h4>

<h4>NetworkManager (GUI)</h4>

<code> $ sudo apt install network-manager-gnome</code>

<!-- ##### -->

<h4>NetworkManager (CLI)</h4>

<code> $ sudo apt install network-manager</code>

<pre>
&nbsp; Commands 
&nbsp; &nbsp; • Connecting WiFi manualy with nmcli
&nbsp; &nbsp; $ nmcli dev status
&nbsp; &nbsp; $ nmcli radio wifi on
&nbsp; &nbsp; • List wifi
&nbsp; &nbsp; $ nmcli dev wifi list
&nbsp; &nbsp; • Connect
&nbsp; &nbsp; $ sudo nmcli dev wifi connect SSID(TAB)
&nbsp; &nbsp; $ sudo nmcli --ask dev wifi connect SSID(TAB)
&nbsp; &nbsp; • Disconnecting
&nbsp; &nbsp; $ nmcli con down NAME 
&nbsp; &nbsp; • Saved ones
&nbsp; &nbsp; $ ls /etc/NetworkManager/system-connections/

</pre>

<pre>
&nbsp; Commands
&nbsp; &nbsp; • Editing
&nbsp; &nbsp; $ nmcli connection edit
&nbsp; &nbsp; $ nmcli connection edit type wifi
&nbsp; &nbsp; $ nmcli c edit type vpn
&nbsp; &nbsp; $ nmcli c up wificonnectionname
&nbsp; &nbsp; $ nmcli c show wificonnectionname
&nbsp; &nbsp; $ nmcli connection show
&nbsp; &nbsp; $ nmcli connection reload
&nbsp; &nbsp; • Avtivating MAC randomization
&nbsp; &nbsp; $ nmcli connection modify NAME 802-11-wireless.mac-address-randomization always
</pre>

<pre>
&nbsp; Config files
&nbsp; &nbsp; $ sudo ls /etc/NetworkManager/
&nbsp; &nbsp; $ sudo ls /etc/NetworkManager/system-connections/
&nbsp; &nbsp; $ sudo nano /etc/NetworkManager/NetworkManager.conf/mywifiname
&nbsp; &nbsp; $ sudo nano /etc/NetworkManager/NetworkManager.conf
</pre>

<!-- ##### -->

<h4>Connman</h4>

<h5>Connman (GUI)</h5>

<code> $ sudo apt install connman-ui</code>

<!-- ##### -->

<h5>Connman (CLI)</h5>

<code> $ sudo apt install connman</code>

<pre>
&nbsp; Commands
&nbsp; &nbsp; $ 
&nbsp; &nbsp; $ 
&nbsp; &nbsp; $ 
&nbsp; &nbsp; $ 
&nbsp; &nbsp; $ 
</pre>

<!-- ##### -->

<h4>Setting up networking without a network manager</h4>

https://unix.stackexchange.com/questions/253030/how-to-setup-network-without-wicd-or-networkmanager <br>

<p>Set up static networking. Configured only wlan0 because of wireless, you just need to skip the wireless related things in it.</p>

<p>Show your interfaces:</p>

<pre>
<code>$ ip a show</code>
</pre>

<p>Note the default Ethernet and wifi interfaces:</p>

<p>Looks our Ethernet port is eth0 and WiFi radio is wlan0</p>

<pre>
<code>$ ip a show | awk  '/^[0-9]: /{print $2}'</code>
</pre>

<p>The output of this command will look something like this:</p>

<pre>
<code>
lo:
eth0:
wlan0:
</code>
</pre>

<p>Your gateway IP address is found with:</p>

<pre>
<code>$ sudo route -n</code>
</pre>

<p>It provides access to destination 0.0.0.0 (everything). Possible it is 192.168.0.1, which is perfectly nominal.</p>

<p>Let’s do a bit of easy configuration in our /etc/networking/interfaces file. The format of this file is not difficult to put together from the man page, but really, you should search for examples first. Plug in your Ethernet port.</p>

<p>Basically, we’re just adding DHCP entries for our interfaces. Above you’ll see a route to another network that appears when I get a DHCP lease on my Ethernet port. Next, add this:</p>

<pre><code>auto lo
iface lo inet loopback
auto eth0
iface eth0 inet dhcp
auto wlan0
iface wlan0 inet dhcp
</code></pre>

<p>Next, enable and start the networking service:</p>

<pre><code>sudo update-rc.d networking enable
sudo /etc/init.d/networking start
</code></pre>

<p>Let’s make sure this works, by resetting the port with these commands:</p>

<pre>
<code>sudo ifdown eth0
sudo ip a flush eth0

    sudo ifup eth0
</code>
</pre>

<p>This downs the interface, flushes the address assignment to it, and then brings it up. Test it out by pinging your gateway IP: ping 192.168.0.1. If you don’t get a response, your interface is not connected or your made a typo.</p>

<p>Let’s “do some WiFi” next! We want to make an /etc/wpa_supplicant.conf file. Consider mine:</p>

<pre>
<code>network={
ssid="CenturyLink7851"
scan_ssid=1
key_mgmt=WPA-PSK
psk="4f-------------ac"
}
</code>
</pre>

<p>Now we can reset the WiFi interface and put this to work:</p>

<pre>
<code>sudo ifdown wlan0

sudo ip a flush wlan0

    sudo ifup wlan0

sudo wpa_supplicant -Dnl80211 -c /root/wpa_supplicant.conf -iwlan0 -B

sudo dhclient wlan0
</code>
</pre>

<p>That should do it. Use a ping to find out, and do it explicitly from wlan0, so it gets it’s address first:</p>

<pre>
<code>$ ip a show wlan0 | grep "inet"

Presumably dhclient updated your /etc/resolv.conf, so you can also do a:

ping -I 192.168.0.45 www.yahoo.com
</code>
</pre>

<p>You’re now running without NetworkManager!</p>

<!-- ##### -->

<h4>How to reset Network Manager to default?</h4>

https://askubuntu.com/questions/637637/how-to-reset-network-manager-to-default<br>


<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.03 DNS</b></summary>
<br>

<h4>DNS Resolution</h4>

<h5>• The resolv.conf configuration file</h5>

https://wiki.debian.org/NetworkConfiguration<br>
https://wiki.debian.org/resolv.conf<br>
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_and_managing_networking/manually-configuring-the-etc-resolv-conf-file_configuring-and-managing-networking<br>
https://github.com/jonathanio/update-systemd-resolved<br>
https://freedesktop.org/software/systemd/man/systemd.network.html<br>

<!-- ########## -->

<h5>• The resolvconf program</h5>

https://salsa.debian.org/debian/resolvconf<br>

<!-- ########## -->

<h5>• The openresolv program</h5>

<p>An open-source implementation of resolvconf to properly configure DNS and prevent DNS leaks.</p>

https://roy.marples.name/projects/openresolv<br>

<!-- ########## -->

<h5>• The systemd-resolved service</h5>

https://wiki.archlinux.org/title/Systemd-resolved<br>
https://freedesktop.org/software/systemd/man/latest/systemd-resolved.service.html<br>

<!-- ########## -->

<h5>• Avahi</h5>

https://wiki.debian.org/Avahi<br>

<!-- ########## -->

<h4>Router DNS</h4>

https://developers.cloudflare.com/1.1.1.1/ip-addresses<br>
https://opendns.com/setupguide<br>
https://docs.fsfe.org/en/teams/router-freedom-tech-wiki<br>

<p>Misconfigured DNS settings on a router may lead to the device sending DNS queries to unintended DNS servers. Verify the DNS of your WAN are set in your router.</p>


<!-- #################### -->

<h4>Pi-hole ®</h4>

<p>The Pi-hole ® is a DNS sinkhole that protects your devices from unwanted content without installing any client-side software.</p>

https://pi-hole.net<br>
https://docs.pi-hole.net<br>
https://reddit.com/r/pihole<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.04 Firewall</b></summary>
<br>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/3.NETWORK/3.03_Firewall">3.NETWORK/3.03_Firewall</a></h4>

<p>Note that these commands show ports that are in a listening state, but that doesn’t necessarily mean that the ports are open to the internet, because our firewall may be denying connections.</p>

<!-- ########## -->

<h4>• GUFW (GUI)</h4>

https://gufw.org<br>
https://help.ubuntu.com/community/Gufw<br>

<code>$ sudo apt install gufw</code>

<!-- ########## -->

<h4>• UFW (CLI)</h4>

https://launchpad.net/ufw<br>
https://wiki.debian.org/Uncomplicated%20Firewall%20%28ufw%29<br>
https://wiki.archlinux.org/title/Uncomplicated_Firewall<br>
http://manpages.ubuntu.com/manpages/precise/man8/ufw.8.html<br>
https://help.ubuntu.com/community/UFW<br>
https://paulligocki.com/vpn-only-ufw-setup<br>
https://linuxconfig.org/how-to-install-and-use-ufw-firewall-on-linux<br>
https://openvpn.net<br>
https://pypi.org/project/openpyn<br>

<code>$ sudo apt install ufw</code>

<h5>∙ Generic UFW configuration (without VPN)</h5>

<pre>
&nbsp; Commands, basic to install UFW
&nbsp; &nbsp; $ sudo apt install ufw
&nbsp; &nbsp; $ sudo ufw enable
&nbsp; &nbsp; $ sudo ufw status
&nbsp; &nbsp; $ sudo nano /etc/default/ufw
&nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; IPV6=no
&nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; $ sudo nano /etc/sysctl.conf
&nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; net.ipv6.conf.all.disable_ipv6 = 1
&nbsp; &nbsp; &nbsp; net.ipv6.conf.default.disable_ipv6 = 1
&nbsp; &nbsp; &nbsp; net.ipv6.conf.lo.disable_ipv6 = 1
&nbsp; &nbsp; &nbsp; net.ipv6.conf.tun0.disable_ipv6 = 1
&nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; $ sudo ufw default deny incoming 
&nbsp; &nbsp; $ sudo ufw default allow outgoing
&nbsp; &nbsp; $ sudo ufw status numbered
&nbsp; &nbsp; $ sudo iptables -L --line-numbers
&nbsp; &nbsp; $ sudo ufw delete 123
&nbsp; &nbsp; $ sudo ufw reload
&nbsp; &nbsp; $ sudo reboot
</pre>

<!-- ########## -->

<h5>∙ Advanced</h5>

• R-fx Networks Projects - https://rfxn.com<br>
• Vuurmuur Firewall - https://vuurmuur.org<br>
• Port Checker - https://portchecker.co<br>

<p>Note: an AppArmor rule could prevent port use by an individual program.</p>

<pre>
&nbsp; Commands, some advanced commands
&nbsp; &nbsp; • Show which ports are listening for connections
&nbsp; &nbsp; $ ss -tlnp

&nbsp; &nbsp; • Check for open ports with nmap
&nbsp; &nbsp; $ sudo apt install nmap
&nbsp; &nbsp; $ sudo nmap localhost

&nbsp; &nbsp; • Find the name and IP address of your tunnel
&nbsp; &nbsp; $ ip -o addr | cut -d'\' -f 1

&nbsp; &nbsp; • Handling DNS queries
&nbsp; &nbsp; $ apt install tcpdump
&nbsp; &nbsp; $ sudo tcpdump -eni any port 53
&nbsp; &nbsp; $ sudo tcpdump -eni any port 53 and host 172.27.10.22
&nbsp; &nbsp; $ sudo tcpdump -n -i tun0 udp port 53

&nbsp; &nbsp; • Show Iptables rules
&nbsp; &nbsp; $ sudo iptables -L --line-numbers

&nbsp; &nbsp; • Open TCP SSH PORT for VPN IP only
&nbsp; &nbsp; $ sudo ufw allow from 1.2.3.4 to any port 22 proto tcp comment 'Open TCP SSH PORT for VPN IP only'

&nbsp; &nbsp; • Open TCP Torrent PORT for VPN IP only
&nbsp; &nbsp; $ sudo ufw allow in on tun0 from 10.8.0.0/16 to any port 60000 proto tcp comment 'Open TCP Torrent PORT for VPN IP only'
&nbsp; &nbsp; • Port Forwarding to router 
&nbsp; &nbsp; $ sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -p udp --dport 51413 -j ACCEPT

&nbsp; &nbsp; • For uploading torrent
&nbsp; &nbsp; $ sudo iptables -A OUTPUT -p udp --sport 51413 -j ACCEPT
&nbsp; &nbsp; $ sudo ufw allow 51413/udp
&nbsp; &nbsp; $ sudo iptables -L --line-numbers

&nbsp; &nbsp; • Reset UFW
&nbsp; &nbsp; $ sudo ufw reset

&nbsp; &nbsp; • Troubles
&nbsp; &nbsp; $ sudo apt purge iptables-persistent
</pre>

<!-- ########## -->

<h5>∙ Custom application profile</h5>

<pre>
&nbsp; Commands
&nbsp; &nbsp; $ sudo ls /etc/ufw/applications.d/
&nbsp; &nbsp; $ sudo touch /etc/ufw/applications.d/ufw-custom
&nbsp; &nbsp; $ sudo nano /etc/ufw/applications.d/ufw-custom
&nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; [CustomApp 1 Full]
&nbsp; &nbsp; &nbsp; title=The first Custom Application
&nbsp; &nbsp; &nbsp; description=Custom Application Description
&nbsp; &nbsp; &nbsp; ports=36892|23976|19827
&nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; [CustomApp 1 TCP]
&nbsp; &nbsp; &nbsp; title=The first Custom Application - TPC only
&nbsp; &nbsp; &nbsp; description=Custom Application Description
&nbsp; &nbsp; &nbsp; ports=36892,23976,19827/tcp
&nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; [CustomApp 1 UDP]
&nbsp; &nbsp; &nbsp; title=The first Custom Application - UDP only
&nbsp; &nbsp; &nbsp; description=Custom Application Description
&nbsp; &nbsp; &nbsp; ports=36892,23976,19827/udp
&nbsp; &nbsp; 
&nbsp; &nbsp; • Check if the syntax is correct 
&nbsp; &nbsp; $ sudo ufw app info "CustomApp 1 Full"
&nbsp; &nbsp; • Create new rule based on this profile
&nbsp; &nbsp; $ sudo ufw allow in on tun0 to any app "CustomApp 1 Full"
&nbsp; &nbsp; • Check
&nbsp; &nbsp; $ sudo ufw status numbered | grep CustomApp
</pre>

<!-- ########## -->

<h5>∙ Configure NAT with UFW</h5>

<pre>
&nbsp; Commands
&nbsp; &nbsp; $ sudo nano /etc/default/ufw
&nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; DEFAULT_FORWARD_POLICY="ACCEPT"
&nbsp; &nbsp;
&nbsp; &nbsp; $ sudo nano /etc/ufw/sysctl.conf
&nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; net/ipv4/ip_forward=1 
&nbsp; &nbsp;
&nbsp; &nbsp; $ sudo nano /etc/ufw/before.rules
&nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; # NAT table rules
&nbsp; &nbsp; &nbsp; *nat
&nbsp; &nbsp; &nbsp; :POSTROUTING ACCEPT [0:0]
&nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; # Forward traffic through eth0 - Change to match you out-interface
&nbsp; &nbsp; &nbsp; -A POSTROUTING -s 192.168.1.0/24 -o eth0 -j MASQUERADE
&nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; # don't delete the 'COMMIT' line or these nat table rules won't be processed
&nbsp; &nbsp; &nbsp; COMMIT
&nbsp; &nbsp;
&nbsp; &nbsp; $ sudo ufw disable
&nbsp; &nbsp; $ sudo ufw enable
</pre>

<!-- ########## -->

<h5>∙ Configure Port Forwarding with UFW</h5>

<pre>
&nbsp; Commands
&nbsp; &nbsp; $ sudo nano /etc/default/before.rules
&nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; :PREROUTING ACCEPT [0:0] 
&nbsp; &nbsp; &nbsp; -A PREROUTING -i eth0 -d 150.129.148.155 -p tcp --dport 80 -j DNAT --to-destination 192.168.1.120:80 
&nbsp; &nbsp; &nbsp; -A PREROUTING -i eth0 -d 150.129.148.155 -p tcp --dport 443 -j DNAT --to-destination 192.168.1.120:443 
&nbsp; &nbsp; &nbsp; -A POSTROUTING -s 192.168.1.0/24 ! -d 192.168.1.0/24 -j MASQUERADE 
&nbsp; &nbsp;
&nbsp; &nbsp; $ sudo ufw disable
&nbsp; &nbsp; $ sudo ufw enable
&nbsp; &nbsp; $ sudo ufw allow proto tcp from any to 150.129.148.155 port 80
&nbsp; &nbsp; $ sudo ufw allow proto tcp from any to 150.129.148.155 port 443
</pre>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.05 VPN</b></summary>
<br>

<h4>• Buying VPN Services</h4>

∙ Choosing the VPN that's right for you - https://ssd.eff.org/en/module/choosing-vpn-thats-right-you<br>
∙ Choosing the best VPN (for you) - https://reddit.com/r/VPN/comments/4iho8e/that_one_privacy_guys_guide_to_choosing_the_best/?st=iu9u47u7&sh=459a76f2<br>
∙ r/vpnrecommendations - https://reddit.com/r/vpnrecommendations<br>
∙ r/VPN - https://reddit.com/r/VPN<br>
∙ r/VPNTorrents - https://reddit.com/r/VPNTorrents<br>
∙ VPN Alert - https://vpnalert.com<br>
∙ VPN-reviews - https://github.com/techlore/VPN-reviews<br>
∙ Mullvad - https://mullvad.net<br>
∙ Mullvad - http://o54hon2e2vj6c7m3aqqu6uyece65by3vgoxxhlqlsvkmacw6a7m7kiad.onion<br>
∙ Private Internet Access (PIA) - https://privateinternetaccess.com<br>
∙ ProtonVPN - https://protonvpn.com<br>
∙ IVPN - https://ivpn.net<br> 
∙ AirVPN - https://airvpn.org<br>
∙ VPN.XXX - https://vpn.xxx<br>
∙ Windscribe - https://windscribe.com<br>
∙ ExpressVPN - https://expressvpn.com/vpnmentor1<br>
∙ NordVPN - https://nordvpn.com<br>

<h4>• VPN Guides and Tutorials</h4>
∙ That One Privacy Site - https://thatoneprivacysite.net/vpn-section<br>
∙ privacytools.io - https://privacytools.io<br>
∙ VPN over SSH - https://wiki.archlinux.org/index.php/VPN_over_SSH<br>

<h4>• Creating your own VPN with VPS</h4>

<p></p>

<h4>• VPN Protocols</h4>

<div id="table2" align="left">
<img src="https://github.com/RENANZG/My-Debian-GNU-Linux/blob/main/3.NETWORK/3.08_Others/vpn_protocols.png"/>
</div>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.06 OpenVPN</b></summary>
<br>

<h4>OpenVPN</h4>
https://openvpn.net/community-resources/how-to/<br>
https://wiki.debian.org/OpenVPN<br>
https://debian-handbook.info/browse/stable/sect.virtual-private-network.html<br>
https://debian.org/doc/manuals/securing-debian-manual/vpn.en.html<br>
https://wiki.archlinux.org/index.php/OpenVPN<br>
https://wiki.archlinux.org/index.php/OpenVPN#DNS<br>
https://ubuntu.com/core/docs/networkmanager/configure-vpn<br>
https://community.openvpn.net<br>
https://github.com/OpenVPN/openvpn/tree/master/sample/sample-config-files<br>
https://linuxconfig.org/how-to-run-openvpn-automatically-on-debian-with-a-static-ip-address<br>
https://linuxconfig.org/how-to-encrypt-your-dns-with-dnscrypt-on-ubuntu-and-debian<br>

<pre>
&nbsp; OpenVPN Sample Configuration Files
&nbsp; &nbsp; $ sudo ls /usr/share/doc/openvpn
&nbsp; &nbsp; $ /usr/share/doc/openvpn/README.Debian.gz
</pre>

<h4>OpenVPN Client Possibilities</h4>

<pre>
OpenVPN + Network Manager (GUI) + Autostart + Autoconnect + Kill Switch
OpenVPN + nmcli (CLI) + Autostart + Autoconnect + Kill Switch
</pre>

<p>*Autoconnect: random server selection</p>

<!-- ########## -->

<h4>Installing OpenVPN with NetworkManager (GUI)</h4>

<p>You may use graphical VPN tool network-manager UI by providing the key and certificates</p>

<pre>
&nbsp; Commands GUI
&nbsp; &nbsp; $ sudo apt install network-manager-openvpn-gnome
&nbsp; &nbsp; $ nm-connection-editor
</pre>

<p>"Find a network connection, open its settings, then under General, enable Automatically connect to VPN. After saving, a secondaries= line is added in that network's configuration file in the [connection] section. It will contain a list of secondary connection UUIDs to be activated. The configuration file is usually <code>/etc/NetworkManager/system-connections/</code>."</p>

<p>Import OVPN to NetworkManager in terminal</p>

<pre>Copy the OpenVPN configuration from your VPN provider into /etc/openvpn
&nbsp; Commands nmcli, to easy import
&nbsp; &nbsp; $ sudo nmcli connection import type openvpn file /etc/openvpn/client/cc00-myvpn.com_tcp.ovpn
&nbsp; &nbsp; $ nmcli connection show
&nbsp; &nbsp; $ nmcli connection up myopvnname
&nbsp; &nbsp; $ nmcli connection show 
&nbsp; &nbsp; $ ip route
&nbsp; &nbsp; $ nmcli connection edit type wifi
&nbsp; &nbsp; $ nmcli c edit type vpn
&nbsp; &nbsp; $ nmcli c up wificonnectionname
&nbsp; &nbsp; $ nmcli c show wificonnectionname
&nbsp; &nbsp; $ nmcli connection show
&nbsp; &nbsp; $ nmcli connection reload
&nbsp; &nbsp; $ sudo service openvpn restart
&nbsp; &nbsp; $ sudo service NetworkManager restart
&nbsp; &nbsp; $ sudo systemctl status NetworkManager 
</pre>

<p>Editing OVPN with NetworkManager in terminal</p>

<pre>
&nbsp; Config files
&nbsp; &nbsp; $ sudo ls /etc/NetworkManager/
&nbsp; &nbsp; $ sudo ls /etc/NetworkManager/system-connections/
&nbsp; &nbsp; $ sudo nano /etc/NetworkManager/NetworkManager.conf/mywifiname<br>
&nbsp; &nbsp; $ sudo nano /etc/NetworkManager/NetworkManager.conf<br>
</pre>

<!-- ########## -->

<h4>Installing OpenVPN (CLI)</h4>

<pre>
&nbsp; Commands
&nbsp; &nbsp; $ sudo apt install resolvconf
&nbsp; &nbsp; $ sudo systemctl enable --now resolvconf.service
&nbsp; &nbsp; $ sudo apt install openvpn
&nbsp; &nbsp; • Copy the OpenVPN configuration from your VPN provider into /etc/openvpn
&nbsp; &nbsp; $ sudo wget https://vpnprovider.com/openvpn.zip
&nbsp; &nbsp; $ sudo unzip openvpn.zip
&nbsp; &nbsp; $ sudo rm openvpn.zip
&nbsp; &nbsp; $ cd /etc/openvpn
&nbsp; &nbsp; • Instead of .ovpn extension, OpenVPN on Linux uses .conf 
&nbsp; &nbsp;   for config files. Rename them accordingly, you could simply
&nbsp; &nbsp;   substitute it in the appropriate file name with copy
&nbsp; &nbsp; $ sudo cp cc00-myvpn_tcp.ovpn /etc/openvpn/client/client.conf
&nbsp; &nbsp; • Alternatively, rename and copy in batch
&nbsp; &nbsp; $ sudo rename 's/ovpn/conf/' openvpn/*.ovpn
&nbsp; &nbsp; $ sudo cp openvpn/* /etc/openvpn
</pre>

<p>*resolvconf vs. systemd-resolved</p>
<p>*resolvconf vs. openresolv</p>

<!-- ########## -->

<h4>Basic OpenVPN Connection (Manual connection for test)</h4>

<pre>
&nbsp; &nbsp; • Basic connection, OpenVPN will ask for a username and
&nbsp; &nbsp;   password each time you want to connect, and that's
&nbsp; &nbsp;   not a good headless setup.
&nbsp; &nbsp; $ sudo openvpn cc00-myvpn.com_tcp.ovpn
&nbsp; &nbsp;   Enter Auth Username: 
&nbsp; &nbsp;   Enter Auth Password: (press TAB for no echo)
&nbsp; &nbsp; • You can autoconnect with saved username and password,
&nbsp; &nbsp;   create another file in the OpenVPN folder called, auth.txt .
&nbsp; &nbsp;   Inside that file, put your VPN username on the first
&nbsp; &nbsp;   line and your password on the second one.
&nbsp; &nbsp; $ sudo touch /etc/openvpn/auth.txt
&nbsp; &nbsp; $ sudo nano /etc/openvpn/auth.txt
&nbsp; &nbsp;   user
&nbsp; &nbsp;   password
&nbsp; &nbsp; $ sudo chmod 600 /etc/openvpn/auth.txt
&nbsp; &nbsp; • You can autoconnect with saved login
&nbsp; &nbsp; $ sudo openvpn --config cc00-myvpn.com_tcp.ovpn --auth-user-pass /etc/openvpn/auth.txt
&nbsp; &nbsp;   (...)
&nbsp; &nbsp;   Initialization Sequence Completed
</pre>

<p>Basic connection with autoconnect and DNS resolver, make OpenVPN update its nameservers when it starts and exits.</p>

<pre>
&nbsp; Commands
&nbsp; &nbsp; $ openvpn --script-security 2 --config cc00-myvpn.com_tcp.ovpn 
&nbsp; &nbsp; • Or
&nbsp; &nbsp; $ sudo openvpn --config cc00-myvpn.com_tcp.ovpn --up /etc/openvpn/update-resolv-conf --down /etc/openvpn/update-resolv-conf --script-security 2 --auth-user-pass /home/user/auth
</pre>

<p>Creating a autologin file</p>

<pre>
&nbsp; &nbsp; • Configuring auth manually 
&nbsp; &nbsp; $ sudo touch /home/user/auth
&nbsp; &nbsp; $ sudo nano /home/user/auth
              user
              password
&nbsp; &nbsp; • A little protection
&nbsp; &nbsp; $ sudo chmod 600 /home/user/auth
</pre>

<!-- ########## -->

<h4>OpenVPN Random Server Selection and Autologin</h4>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

https://openvpn.net/community-resources/how-to/#auth<br>

<p>You could use the client.conf example below to random access multiple opvn files and auto login with auth configuration. Make the configurations refer to auth file by appending some directives at the end of each. Also create keepalive, a log record to facilitate troubleshooting and automatically run a script called update-resolv-conf, which may be necessary for DNS resolution to work correctly when enabling VPN and turn off. On Debian, this script is included with the OpenVPN installation.</p>

<pre>
&nbsp; &nbsp; • Configuring client.conf manually 
&nbsp; &nbsp; $ sudo nano /etc/openvpn/client/client.conf
client
dev tun

#It's TCP or UDP server?
proto tcp

remote my-server-1.com 1194
remote my-server-2.com 1194
remote my-server-3.com 1194
remote my-server-4.com 1194
remote my-server-5.com 1194
remote my-server-6.com 1194
remote my-server-7.com 1194
remote my-server-8.com 1194
remote my-server-9.com 1194
remote my-server-10.com 1194
remote-random #It choose a random config server
resolv-retry infinite
nobind
tun-mtu 1500
tun-mtu-extra 32
mssfix 1450
persist-key
persist-tun
ping 15
ping-restart 0
ping-timer-rem
reneg-sec 0
comp-lzo no #Enable it if enabled in the server
verify-x509-name CN=my.vpn-1.com

#Protect against MITM see http://openvpn.net/howto.html#mitm
remote-cert-tls server 

#Your autologin config
auth-user-pass /etc/openvpn/client/auth

#OpenVPN DNS Resolver
script-security 2
up /etc/openvpn/update-resolv-conf
down /etc/openvpn/update-resolv-conf

#Others
keepalive 10 60
log-append /var/log/openvpn.log

verb 3
pull
fast-io
cipher AES-256-CBC
auth SHA512


# Note SSL/TLS parms.See the server config
# file for more description. # It's best
# to use # a separate .crt/.key file pair
# for each client. A single ca file can
# be used for all clients.

&lt;ca&gt;
-----BEGIN CERTIFICATE-----
-----END CERTIFICATE-----
&lt;/ca&gt;
key-direction 1
&lt;tls-auth&gt;
# 2048 bit OpenVPN static key
-----BEGIN OpenVPN Static key V1-----
-----END OpenVPN Static key V1-----
&lt;/tls-auth&gt;
</pre>

<pre>
&nbsp; &nbsp; • Configuring client.conf automatically
&nbsp; &nbsp; $ sudo cd /etc/openvpn/client/
&nbsp; &nbsp; $ sudo cat << EOF > client.conf
client
dev tun

#It's TCP or UDP server?
proto tcp

remote my-server-1.com 1194
remote my-server-2.com 1194
remote my-server-3.com 1194
remote my-server-4.com 1194
remote my-server-5.com 1194
remote my-server-6.com 1194
remote my-server-7.com 1194
remote my-server-8.com 1194
remote my-server-9.com 1194
remote my-server-10.com 1194
remote-random #It choose a random config server
resolv-retry infinite
nobind
tun-mtu 1500
tun-mtu-extra 32
mssfix 1450
persist-key
persist-tun
ping 15
ping-restart 0
ping-timer-rem
reneg-sec 0
comp-lzo no #Enable it if enabled in the server
verify-x509-name CN=my.vpn-1.com

#Protect against MITM see http://openvpn.net/howto.html#mitm
remote-cert-tls server 

#Your autologin config
auth-user-pass /etc/openvpn/client/auth 

#OpenVPN DNS Resolver
script-security 2
up /etc/openvpn/update-resolv-conf
down /etc/openvpn/update-resolv-conf

#Others
keepalive 10 60
log-append /var/log/openvpn.log

verb 3
pull
fast-io
cipher AES-256-CBC
auth SHA512


# Note SSL/TLS parms.See the server config
# file for more description. # It's best
# to use # a separate .crt/.key file pair
# for each client. A single ca file can
# be used for all clients.

&lt;ca&gt;
-----BEGIN CERTIFICATE-----
-----END CERTIFICATE-----
&lt;/ca&gt;
key-direction 1
&lt;tls-auth&gt;
# 2048 bit OpenVPN static key
-----BEGIN OpenVPN Static key V1-----
-----END OpenVPN Static key V1-----
&lt;/tls-auth&gt;
</pre>

<pre>
&nbsp; &nbsp; • Configuring client.conf automatically in batch
$ echo 'auth-user-pass /etc/openvpn/client/auth
keepalive 10 60
log-append /var/log/openvpn.log
script-security 2
up /etc/openvpn/update-resolv-conf
down /etc/openvpn/update-resolv-conf' | tee -a openvpn/*.conf
</pre>

<!-- ########## -->

<h6>Create a autologin file</h6>

<pre>
&nbsp; &nbsp; • Configuring auth manually 
&nbsp; &nbsp; $ sudo touch /etc/openvpn/client/auth
&nbsp; &nbsp; $ sudo nano /etc/openvpn/client/auth
              user
              password
</pre>

<pre>
&nbsp; &nbsp; • Configuring auth automatically 
&nbsp; &nbsp; • If you are not going to copy the example, to create a 
&nbsp; &nbsp;   newline (press ENTER) after you type the \ to tell the 
&nbsp; &nbsp;   shell you want to enter more parameters but on a
&nbsp; &nbsp;   separate line.
&nbsp; &nbsp; $ cd /etc/openvpn/client/auth
&nbsp; &nbsp; $ sudo echo 'user
              password' > openvpn/auth
&nbsp; &nbsp; • A little protection
&nbsp; &nbsp; # chmod 600 /etc/openvpn/client/auth
&nbsp; &nbsp; • Load daemon
&nbsp; &nbsp; $ sudo openvpn --config /etc/openvpn/client.conf --daemon
</pre>

<pre>
&nbsp; &nbsp; • Alternatively
&nbsp; &nbsp; $ sudo chmod 600 /etc/openvpn/client/auth
&nbsp; &nbsp; $ sudo bash -c 'echo "USERNAME" >> /etc/openvpn/client/auth'
&nbsp; &nbsp; $ sudo bash -c 'echo "PASSWORD" >> /etc/openvpn/client/auth'
&nbsp; &nbsp; # chmod 600 /etc/openvpn/client/auth
&nbsp; &nbsp; • Load daemon
&nbsp; &nbsp; $ sudo openvpn --config /etc/openvpn/client.conf --daemon
</pre>

<pre>
&nbsp; &nbsp; • Alternatively
&nbsp; &nbsp; $ sudo su
&nbsp; &nbsp; # echo 'myuser' >> /etc/openvpn/client/auth
&nbsp; &nbsp; # echo 'mypassword' >> /etc/openvpn/client/auth
&nbsp; &nbsp; # chmod 600 /etc/openvpn/client/auth
&nbsp; &nbsp; • Load daemon
&nbsp; &nbsp; $ sudo openvpn --config /etc/openvpn/client.conf --daemon
</pre>

<pre>
&nbsp; &nbsp; • Alternatively
&nbsp; &nbsp; $ sudo su
&nbsp; &nbsp; # echo 'myuser' | tee --append /etc/openvpn/client/auth
&nbsp; &nbsp; # echo 'mypassword' | tee --append /etc/openvpn/client/auth
&nbsp; &nbsp; # chmod 600 /etc/openvpn/client/auth
&nbsp; &nbsp; • Load daemon
&nbsp; &nbsp; $ sudo openvpn --config /etc/openvpn/client.conf --daemon
</pre>

<!-- ########## -->

<h5>OpenVPN DNS Resolver</h5>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

https://wiki.archlinux.org/title/OpenVPN#DNS<br>
https://github.com/jonathanio/update-systemd-resolved<br>


<p>"By default, all configured VPNs in <code>/etc/openvpn/</code> are started during system boot. Edit <code>/etc/default/openvpn</code> to start specific VPNs or to disable this behavior. You need to run <code>systemctl daemon-reload</code> once to enable new VPNs."</p>

<pre>
&nbsp; Commands
&nbsp; &nbsp; $ sudo su
&nbsp; &nbsp; # cd /etc/openvpn/client
&nbsp; &nbsp; # echo "script-security 2" >> /etc/openvpn/client/openvpn.conf
&nbsp; &nbsp; # echo "up /etc/openvpn/update-resolv-conf" >> /etc/openvpn/client/openvpn.conf
&nbsp; &nbsp; # echo "down /etc/openvpn/update-resolv-conf" >> /etc/openvpn/client/openvpn.conf
</pre>

<!-- ########## -->

<h4>Solving DNS problems with OpenVPN</h4>

https://openvpn.net/vpn-server-resources/troubleshooting-dns-resolution-problems<br>

<!-- ########## -->

<h5>OpenVPN DNS</h5>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<code>$ sudo apt install resolvconf</code><br>

<p>* Consider 
<code>$ sudo apt install openvpn-systemd-resolved</code><br></p>

<code>$ sudo nano /etc/openvpn/update-resolv-conf</code>

<pre>
$ sudo mv /etc/resolv.conf /etc/resolv.conf.bak

• Add this lines into your openvpn client.conf:

$ nano client.conf

script-security 2
up /etc/openvpn/update-resolv-conf
down /etc/openvpn/update-resolv-conf
</pre>

<p>Your could run openvpn with DNS resolver</p>

<pre>
$ openvpn --script-security 2 --config cc00-myvpn.com_tcp.ovpn
</pre>

<!-- ########## -->

<h5>Disabling OpenVPN's client DNS</h5>

<code>$ sudo nano /etc/openvpn/client/client.conf</code>

<pre>
#Actual DNS name
dhcp-option DNS 10.10.10.10
</pre>

<p>Take care with DNS leaks</p>

<code>curl ipleak.net/json/</code><br>
<code>curl ipinfo.io</code><br>

<pre>
#IPV4
pull-filter ignore "dhcp-option DNS"

#IPV6
pull-filter ignore "dhcp-option DNS6"
</pre>

<!-- ########## -->

<h5>Disabling NetworkManager's own dnsmasq</h5>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<pre>
$ sudo nano /etc/NetworkManager/NetworkManager.conf

#dns=dnsmasq

$ sudo restart network-manager
</pre>

<!-- ########## -->

<h5>NetworkManager dnsmasq (CLI)</h5>

<p>DNS requests are directed to VPN-supplied DNS servers without any manipulations with dnsmasq, up/down/dispatch helper scripts.</p>

<pre>
nmcli -p connection modify MY_VPN_CONNECTION ipv4.never-default no
nmcli -p connection modify MY_VPN_CONNECTION ipv4.ignore-auto-dns no
nmcli -p connection modify MY_VPN_CONNECTION ipv4.dns-priority -42
</pre>

<p>*Using OpenVPN through NetworkManager (GUI) allows users to disable the connection.</p>

<!-- ########## -->

<h5>Enable OpenVPN as service at boot</h5>

<p>To make OpenVPN automatically connect with a certain configuration, set the AUTOSTART directive in <code>/etc/default/openvpn</code> to the configuration filename without the extension.</p>

<pre>
&nbsp; Commands
&nbsp; &nbsp; • At boot, by default client.conf is enabled
&nbsp; &nbsp; $ sudo ls /etc/openvpn/client
&nbsp; &nbsp; • Set the audoestart directive
&nbsp; &nbsp; $ sudo nano in /etc/default/openvpn
                AUTOSTART="nameofopvnconfigfile"
&nbsp; &nbsp; • Save or edit your configuration with
&nbsp; &nbsp; $ sudo nano /etc/openvpn/client/<country>.conf
&nbsp; &nbsp; • Alternatively
&nbsp; &nbsp; $ sudo echo 'AUTOSTART="nameofopvnconfigfile"' >> /etc/default/openvpn
&nbsp; &nbsp; • Enable the service by calling 
&nbsp; &nbsp; $ sudo systemctl start openvpn-client@nameofopvnconfigfile
&nbsp; &nbsp; $ sudo systemctl enable openvpn-client@nameofopvnconfigfile
&nbsp; &nbsp; • Verify
&nbsp; &nbsp; $ sudo cat /etc/default/openvpn
&nbsp; &nbsp; • Load OpenVPN and connect
&nbsp; &nbsp; $ sudo systemctl daemon-reload 
&nbsp; &nbsp; $ sudo systemctl restart openvpn
</pre>

<h5>Test if the killswitch is working</h5>

<pre>
$ sudo systemctl start openvpn-client@<country>
$ sudo systemctl stop openvpn-client@<country>
$ sudo systemctl status openvpn-client@<country>
$ curl ipleak.net/json/
$ curl ipinfo.io
</pre>

<!-- ########## -->

<h4>OpenVPN UFW kill switch</h4>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

</p>Set up a firewall to deny everything but the VPN handshake on the regular interfaces eth0 and wlan0 while placing no restrictions on tun0.</p>


<pre>
$ sudo su
# apt install ufw
# ufw allow in on tun0
# ufw allow out on tun0
# ufw allow out on eth0 from any to any port 53
# ufw allow out on wlan0 from any to any port 53
# ufw allow out on eth0 from any to any port 1198
# ufw allow out on wlan0 from any to any port 1198
# ufw deny in on eth0
# ufw deny in on wlan0
# ufw deny out on eth0
# ufw deny out on wlan0
# ufw enable
</pre>

<p>Testing killswitch</p>

<pre>
$ sudo systemctl start openvpn-client@<country>
$ sudo systemctl stop openvpn-client@<country>
$ sudo systemctl status openvpn-client@<country>
$ curl ipleak.net/json/
$ curl ipinfo.io
</pre>

<pre>
$ systemctl stop openvpn
$ curl --connect-timeout 5 ipinfo.io
</pre>

<!-- ########## -->

<h4>OpenVPN DNS</h4>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<h5>resolv-conf</h5>

<code>$ sudo apt install resolvconf</code>

<p>"Parses DHCP options from openvpn to update resolv.conf .
To use set as 'up' and 'down' script in your openvpn *.conf:

<pre>
up /etc/openvpn/update-resolv-conf
down /etc/openvpn/update-resolv-conf
</pre> 
</p>

<p>"Example envs set from openvpn:"

<pre>
foreign_option_1='dhcp-option DNS 193.43.27.132'
foreign_option_2='dhcp-option DNS 193.43.27.133'
foreign_option_3='dhcp-option DOMAIN be.bnc.ch'
</pre>
</p>

<h5>openvpn-systemd-resolved</h5>

<code>$ sudo apt install openvpn-systemd-resolved</code><br>

<p>"OpenVPN helper to add DHCP information into systemd-resolved via DBus.(...)This script will parse DHCP options set via OpenVPN (dhcp-option) to update  systemd-resolved directly via DBus, instead of updating /etc/resolv.conf. To  install, set as the 'up' and 'down' script in your OpenVPN configuration file or via the command-line arguments, alongside setting the 'down-pre' option to run the 'down' script before the device is closed. For example:"
  
<pre>
up /etc/openvpn/scripts/update-systemd-resolved
down /etc/openvpn/scripts/update-systemd-resolved
down-pre
</pre>
</p>



<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.07 WireGuard</b></summary>
<br>

<h4>∙ WireGuard</h4>

https://github.com/WireGuard<br>
https://wiki.ubuntuusers.de/WireGuard<br>

<code>$ sudo apt install wireguard</code><br>
<code>$ sudo apt install wireguard-tools</code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.08 strongSwan</b></summary>
<br>

<h4>strongSwan</h4>

https://github.com/strongswan/strongswan<br>

<h4>strongSwan Client</h4>

<code>$ sudo apt install strongswan-charon</code><br>

<pre>
•
$ sudo nano /etc/ipsec.secrets​
•
$ sudo su
$ Password

<code>
sudo printf '%s\n\t' 'conn MyVPN' 'keyexchange=ikev2' 'dpdaction=clear' 'dpddelay=300' 'eap_identity=Username' 'leftauth=eap-mschapv2' 'left=%defaultroute' 'leftsourceip=%config' 'right=my.vpn.com' 'rightauth=pubkey' 'rightsubnet=0.0.0.0/0' 'rightid=%my.vpn.com' 'rightca="C = PA, O = VPN, CN = VPN Root CA"' 'type=tunnel' 'auto=add' > /etc/ipsec.conf
</code>
 
• Inside the file change load = yes to load = no.
$ sudo nano /etc/strongswan.d/charon/constraints.conf
• Download the NordVPN RSA certificate.
$ sudo wget https://download/certificate/root.pem -O /etc/ipsec.d/cacerts/VPN.pem
• Connecting
$ sudo ipsec restart
$ sudo ipsec up VPN
“Connection VPN has been established successfully”.
• Disconnecting
$ sudo ipsec down NordVPN
• Debuging
$ sudo cat /var/log/syslog
</pre>



<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.09 Firewall + VPN</b></summary>
<br>

<h4>∙ Firewall (UFW) + VPN (OpenVPN)</h4>

<pre>
&nbsp; Commands to setup UFW + OpenVPN
&nbsp; &nbsp; • You could add specifically rules for each port separately on tun0 (VPN tunnel interface)
&nbsp; &nbsp; $ sudo ufw allow in on tun0 to any port 60000 proto tcp
&nbsp; &nbsp; $ sudo ufw allow in on tun0 to any port 60000 proto udp

&nbsp; &nbsp; • You could test to connect in and out to anywhere on tun0
&nbsp; &nbsp; $ sudo ufw allow in on tun0
&nbsp; &nbsp; $ sudo ufw allow out on tun0

&nbsp; &nbsp; • To allow access only from a specific address you could use
&nbsp; &nbsp; $ sudo ufw allow in on tun0 from 192.168.0.1 to any port 60000 proto tcp

&nbsp; &nbsp; • Allow OpenVPN to connect to the regular network interface (e.g. eth0, wlan0...)
&nbsp; &nbsp;   through the ports present in the .opvn file (e.g.DNS resolution on
&nbsp; &nbsp;   port 53 and VPN server on 1198...)
&nbsp; &nbsp; $ sudo ufw allow out on eth0 from any to any port 53,1198

&nbsp; &nbsp; • Consider this tcp or udp rules
&nbsp; &nbsp; $ sudo ufw allow out on eth0 to any port 53,1197 proto tcp
&nbsp; &nbsp; $ sudo ufw allow out on eth0 to any port 53,1197 proto udp

&nbsp; &nbsp; • For a hard policy, working only with tun0, you could block the rest and enable the firewall
&nbsp; &nbsp; $ sudo ufw deny in on eth0
&nbsp; &nbsp; $ sudo ufw deny out on eth0

&nbsp; &nbsp; • For a hard policy, you could block the rest and enable the firewall
&nbsp; &nbsp; $ sudo ufw status numbered 
&nbsp; &nbsp; $ sudo ufw enable
&nbsp; &nbsp; $ sudo ufw reload
&nbsp; &nbsp; $ sudo reboot
</pre>

<pre>
&nbsp; Commands to secure the server with iptables
&nbsp; &nbsp; • Allow everything from within your VPN
&nbsp; &nbsp; $ sudo iptables -I INPUT -i tun0 -j ACCEPT

&nbsp; &nbsp; • Explicitly allow what can be accessed within the VPN, for example, allow DNS and HTTP
&nbsp; &nbsp; $ sudo iptables -A INPUT -i tun0 -p tcp --destination-port 53 -j ACCEPT
&nbsp; &nbsp; $ sudo iptables -A INPUT -i tun0 -p udp --destination-port 53 -j ACCEPT
&nbsp; &nbsp; $ sudo iptables -A INPUT -i tun0 -p tcp --destination-port 80 -j ACCEPT

&nbsp; &nbsp; • To enable SSH and VPN access from anywhere.
&nbsp; &nbsp; $ sudo iptables -A INPUT -p tcp --destination-port 22 -j ACCEPT
&nbsp; &nbsp; $ sudo iptables -A INPUT -p tcp --destination-port 1194 -j ACCEPT
&nbsp; &nbsp; $ sudo iptables -A INPUT -p udp --destination-port 1194 -j ACCEPT

&nbsp; &nbsp; • To explicitly allow TCP/IP to do "three-way handshakes"
&nbsp; &nbsp; $ sudo iptables -I INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT

&nbsp; &nbsp; • To allow any loopback traffic, the server is allowed to talk to itself 
&nbsp; &nbsp; $ sudo iptables -I INPUT -i lo -j ACCEPT

&nbsp; &nbsp; • To reject access from anywhere else 
&nbsp; &nbsp; $ sudo iptables -P INPUT DROP

&nbsp; &nbsp; • To list rules
&nbsp; &nbsp; $ sudo iptables -L --line-numbers
</pre>

<p>(*ip6tables)</p>

<p>Troubleshooting iptables</p>

<pre>
$ sudo systemctl restart servicedaemon.service
$ sudo systemctl restart service.service
$ sudo iptables -S
$ ping google.com
</pre>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.10 Leak Test</b></summary>
<br>

<h4>Leak Test</h4>

<a href="https://dnsleaktest.com/">∙ DNSLeakTest.com</a> (run the "Extended test")<br>
<a href="https://ipleak.net/">∙ IPLeak.net</a><br>
<a href="https://mullvad.net/en/check">∙ Mullvad DNS Leak Test</a><br>
<a href="https://surfshark.com/dns-leak-test">∙ Surfshark DNS Leak Test</a><br>
<a href="https://browserleaks.com/ip">∙ BrowserLeaks IP Test</a><br>
<a href="https://ipx.ac/run">∙ IPX.AC DNS Leak Test</a><br>

<ul>
<li>EFF Test - https://coveryourtracks.eff.org/learn</li>
<li>TOR Fingerprinting - https://blog.torproject.org/browser-fingerprinting-introduction-and-challenges-ahead</li>
</ul>

<p>You could test your current public IP address and compare that to the one from before with 'ipleak.net'. If they match, your VPN is not working correctly.</p>

<code>$ curl ipleak.net/json/</code><br>
<code>$ curl ipinfo.io</code><br>
<code>$ curl --connect-timeout 5 ipinfo.io</code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.11 Spoofing</b></summary>
<br>

https://github.com/alobbs/macchanger<br>
https://github.com/refraction-networking/utls<br>
https://github.com/0xsirus/tirdad<br>

<h4>• Address Spoof</h4>

<pre>
&nbsp; Commands for a random MAC address
&nbsp; &nbsp; $ ip link
&nbsp; &nbsp; $ sudo ifconfig wlan0 down
&nbsp; &nbsp; $ sudo macchanger -r wlan0
&nbsp; &nbsp; • Shows specified MAC Address of NIC
&nbsp; &nbsp; $ sudo macchanger -s wlan0
&nbsp; &nbsp; $ sudo ifconfig wlan0 up
</pre>

<h4>• Opt-Out WLAN-SSID</h4>

<h5>∙ To opt-out of <b>global maps</b> (https://wigle.net), rename your network WiFi SSID to</h5>

<pre> &lt;SSID&gt;_optout_nomap </pre>

<h5>∙ To opt-out of Mozilla Location Services</h5>

<p>Go to https://location.services.mozilla.com/optout</p>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>5.12 Others</b></summary>
<br>

<h4>• Torrenting</h4>

https://portforward.com<br>
https://wiki.wireshark.org/BitTorrent<br>
https://github.com/LiamTheBox/Torrent-With-A-VPN<br>
https://github.com/mdlam92/vpn_torrenting<br>
https://github.com/tool-maker/VPN_just_for_torrents/wiki<br>
https://askubuntu.com/questions/559016/ufw-rules-dont-block-deluge<br>
https://transmissionbt.com<br>
https://comparitech.com/blog/vpn-privacy/how-to-make-a-vpn-kill-switch-in-linux-with-ufw<br>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<h4>Transmission remotely access</h4>

<pre>
&nbsp; Commands for remote Transmission
&nbsp; &nbsp; $ sudo apt-get install transmission-cli
&nbsp; &nbsp; $ sudo apt-get install transmission-common
&nbsp; &nbsp; $ sudo apt-get install transmission-daemon
&nbsp; &nbsp; $ sudo service transmission-daemon stop
&nbsp; &nbsp; • To 
&nbsp; &nbsp; $ sudo nano /etc/transmission-daemon/settings.json
&nbsp; &nbsp; > “rpc-whitelist”: “127.0.0.1,192.168.*.*”,
&nbsp; &nbsp; > “rpc-whitelist-enabled”: true,
&nbsp; &nbsp; • To change the download directory
&nbsp; &nbsp; > "download-dir": /home/user/Downloads
&nbsp; &nbsp; $ sudo service transmission-daemon start
&nbsp; &nbsp; • To find local IP address
&nbsp; &nbsp; $ hostname -I
&nbsp; &nbsp; • To find local MAC address
&nbsp; &nbsp; $ sudo cat /sys/class/net/eth0/address 
&nbsp; &nbsp; • In your browser
&nbsp; &nbsp; > http://192.168.0.15:9091
&nbsp; &nbsp; > Login: transmission
&nbsp; &nbsp; > Password: transmission
</pre>

<br>
</details>

<hr>
<!--################################### -->

<h2>6. SOFTWARES</h2>


<details>
<summary><b>6.01 Office Softwares</b></summary>
<br>


<details>
<summary>&nbsp; Office Suites</summary>
<br>

<h4>Libre Office</h4>

https://libreoffice.org<br>
https://wiki.documentfoundation.org/Documentation/Install/Linux<br>

<h5>Libre Office - Extensions</h5>

&nbsp; &nbsp;<a href="https://languagetool.org/insights/post/product-libreoffice/">Language Tool</a><br>
&nbsp; &nbsp;<a href="https://zotero.org/">Zotero</a><br>

<h5>Libre Office - <a href="https://help.libreoffice.org/latest/en-US/text/shared/05/new_help.html?&DbPAR=SHARED&System=UNIX#helpindx">Tips and Tricks</a></h5>

<h6>Cursor Position</h6>

<p>In general, all documents open with the cursor at the start of the document.</p>

<p>One exception appears when the author of a Writer text document saves and reopens a document: The cursor will be at the same position where it has been when the document was saved. This only works when the name of the author was entered in <code>Tools - Options - LibreOffice - User Data</code>.</p>

<p>Press <code>Shift+F5</code> to set the cursor to the last saved position.</p>

<h6>Version Management</h6>

<p>The File menu contains a Versions command that enables you to save multiple versions of a document in the same file.</p>

<p>You can choose to view individual versions of a document, or you can display the differences between versions with color markings.</p>

<p>In the dialog to open a document, you can select from a combo box which version of this document you want to open.</p>

<h6>Saving Documents Automatically</h6>

<p>To create a backup file every time you save a document
Choose Tools - Options - Load/Save - General.</p>

<p>Mark Always create backup copy.</p>

<p>If the Always create backup copy option is selected, the old version of the file is saved to the backup directory whenever you save the current version of the file.</p>

<p>You can change the backup directory by choosing Tools - Options - LibreOffice - Paths, then change the Backups path in the dialog.</p>

<p>The backup copy has the same name as the document, but the extension is .BAK. If the backup folder already contains such a file, it will be overwritten without warning.</p>

<p>To save recovery information automatically every n minutes
Choose Tools - Options - Load/Save - General.</p>

<p>Mark Save AutoRecovery information every and select the time interval.</p>

<p>This command saves the information necessary to restore the current document in case of a crash. Additionally, in case of a crash LibreOffice tries automatically to save AutoRecovery information for all open documents, if possible.</p>

<h4>Zotero</h4>

<p>Zotero - Your personal research assistant.</p>

<a href="https://zotero.org">Zotero</a><br>

<a href="https://zotero.org/support">Zotero - Support</a><br>

<a href="https://zotero.org/support/kb/default_translators">Zotero - Default Translators</a><br>

<a href="https://zotero.org/support/kb/item_types_and_fields">Zotero - Item Types and Fields</a><br>

<a href="https://zotero.org/support/kb/item_types_and_fields#citing_fields_from_extra"> Zotero - Citing Fields from "Extra"</a><a href="https://retorque.re/zotero-better-bibtex/exporting/extra-fields/"> (Exporting - Extra fields)</a><br>

<table>
<tr>
<td> <b>Place</b> <br>
(Publisher and Publisher Place)</td>
<td>
<code>publisher: Publisher</code><br>
<code>publisher-place: Publisher Place</code>
</td>
<td>For Presentations, the place where the meeting was held or the presentation was made. For Conference Papers (published in a conference proceedings), use this field for the place where the proceedings was published. If separate locations are needed for the publication place and the location of the conference, leave this field blank and add Event Place and Publisher Place fields to Extra</td>
</tr>
<tr>
<td> <b>Archive Place</b> </td>
<td> <code>archive-place: Archive Place</code> </td>
<td> The geographic location of an archive. </td>
</tr>
</table>

<table>
<tr>
<td> <b>Original Title</b> </td>
<td> <code>original-title: Original Title </code></td>
<td> The original title of a work (e.g., the untranslated title). </td>
</tr>
<tr>
<td> <b>Original Publisher</b> </td>
<td> <code>original-publisher: Original Publisher </code> </td>
<td> The publisher of the original version of an item (e.g., the untranslated version). </td>
</td>
</tr>
<tr>
<td> <b>Original Publisher Place</b> </td>
<td> <code>original-publisher-place: Original Publisher Place</code> </td>
<td> The geographic location of the publisher of the original version of an item (e.g., the untranslated version). </td>
</tr>
</table>

<table>
<tr>
<td> <b>Issue Date, Date Decided or Enacted</b> </td>
<td> <code>issued: Issue Date </code> </td>
<td> The original date an item was published. Enter in ISO format (year-month-day).</td>
</tr>
<tr>
<td> <b>Submitted Date or Filing Date</b> </td>
<td> <code>submitted: Submitted</code> </td>
<td> The date an item was submitted for publication. </td>
</tr>
<tr>
<td> <b>Access Date</b> </td>
<td> <code>Accessed</code> </td>
<td> Date an electronic resource was accessed.</td>
</tr>
<tr>
<td> <b>Event Date</b> </td>
<td> <code>event-date: Event Date</code> </td>
<td> The date an event took place. Enter in ISO format (year-month-day). </td>
</tr>
<tr>
<td> <b>Original Date</b> </td>
<td> <code>original-date: Original Date </code> </td>
<td> The original date an item was published. Enter in ISO format (year-month-day). </td>
</tr>
</table>
	
<a href="https://zotero.org/groups">Zotero - Groups</a><br>

<a href="https://zotero.org/support/kb/importing_standardized_formats<br>">Zotero - Importing standardized bib. formats</a><br>

<p>*Importing bibliographic data: the most popular formats are BibLaTex (.bib), RIS (.ris) and MODS (.xml).</p>

<h5>Juris-M (For Legal Citations)</h5>

<p>Jurism is based on Zotero reference manager, to which it adds feature for handling legal and multilingual resources.</p>

<p>Juris-M for heavy or frequent legal citations for US, UK and GE legal cases and legislation.</p>

<p>It is possible to create proper citation for basic legal citations in Zotero, particularly if only a few such citations are needed.</p>


<a href="https://juris-m.github.io">Juris-M</a><br>
<a href="https://zotero.org/support/kb/legal_citations">Zotero - Legal Citations: Juris-M</a><br>

<br>
</details>

<!-- ########## -->

<details>
<summary>&nbsp; Document Converter</summary>
<br>

<h4>Libre Office (Headless)</h4>

https://help.libreoffice.org/latest/en-US/text/shared/guide/convertfilters.html<br>

<code>$ sudo sudo apt install -y libreoffice</code> (CLI)<br>

<pre>
&nbsp; Commands for libreoffice headless
&nbsp; &nbsp; • Syntax
&nbsp; &nbsp; $ soffice --convert-to OutputFileExtension[:OutputFilterName[:OutputFilterParams[,param]]] [--outdir output_dir]
&nbsp; &nbsp; • To convert a DOCX file to PDF
&nbsp; &nbsp; $ soffice –-headless --convert-to pdf:writer_pdf_Export --outdir /home/user *.docx
&nbsp; &nbsp; $ soffice --headless --convert-to pdf:writer_pdf_Export:ExportNotesPages=True --outdir /home/user *.docx
&nbsp; &nbsp; • To convert a ODT file to PDF
&nbsp; &nbsp; $ soffice –-headless --convert-to pdf:writer_pdf_Export --outdir /home/user *.odt
&nbsp; &nbsp; • To convert a ODT file to DOCX
&nbsp; &nbsp; $ soffice –-headless --convert-to pdf:writer_odt_Export --outdir /home/user *.docx
&nbsp; &nbsp; • To convert a PPTX file to PDF
&nbsp; &nbsp; $ soffice --headless --convert-to pdf:impress_pdf_Export --outdir /home/user *.pptx
&nbsp; &nbsp; $ soffice --headless --convert-to pdf:impress_pdf_Export:ExportNotesPages=True --outdir /home/user *.pptx
&nbsp; &nbsp; • To convert a XLSX file to PDF
&nbsp; &nbsp; $ soffice --headless --convert-to pdf:calc_pdf_Export --outdir /home/user *.xlsx
&nbsp; &nbsp; • To convert a ODT file to PDF
&nbsp; &nbsp; $ soffice –-headless --convert-to pdf:writer_pdf_Export --outdir /home/user *.odt
&nbsp; &nbsp; • To convert a HTML file to PDF
&nbsp; &nbsp; $ soffice –-headless --convert-to pdf:writer_pdf_Export --outdir /home/user *.html
</pre>

<p>Output as PDF</p>

<p>To control, which LibreOffice component generates PDF output, you can use these variants:</p>

<pre>
--convert-to pdf:writer_pdf_Export
--convert-to pdf:calc_pdf_Export
--convert-to pdf:draw_pdf_Export
--convert-to pdf:impress_pdf_Export
--convert-to pdf:writer_web_pdf_Export
</pre>

<p>Input which is not DOCX</p>

<p>To enforce infilters for non-DOCX input formats, you could use (list is not complete):</p>

<pre>
--infilter="HTML Document"                      # for HTML input
--infilter="MediaWiki"                          # for MediaWiki input
--infilter="Text CSV"                           # for CSV spreadsheet input
--infilter="Microsoft PowerPoint 2007/2010 XML" # for PPTX input
--infilter="Microsoft PowerPoint 97/2000/XP"    # for PPT input
--infilter="Windows Metafile"                   # for WMF input
--infilter="Enhanced Metafile"                  # for EMF input
--infilter="Scalable Vector Graphics"           # for SVG input
--infilter="Microsoft Excel 2007/2010 XML"      # for XLSX input
--infilter="Microsoft Excel 97/2000/XP"         # for XLS input
--infilter="Microsoft Excel 95"                 # for some XLS input
--infilter="Microsoft Excel 5.0"                # for some XLS input
</pre>

<p>Output which is not PDF</p>

<p>To convert to specific output formats, you could use (list not complete):</p>

<pre>
--convert-to html:HTML
--convert-to html:draw_html_Export                 # force "Draw" to generate the HTML
--convert-to mediawiki:MediaWiki_Web               # generate MediaWiki output
--convert-to csv:"Text - txt - csv (StarCalc)"     # generate CSV spreadsheet output
--convert-to pptx:"Impress MS PowerPoint 2007 XML" # generate PPTX
--convert-to ppt:"MS PowerPoint 97"                # generate PPT
--convert-to wmf:impress_wmf_Export                # force "Impress" to generate the WMF
--convert-to wmf:draw_wmf_Export                   # force "Draw" to generate the WMF
--convert-to emf:impress_emf_Export                # force "Impress" to generate the EMF
--convert-to emf:draw_emf_Export                   # force "Draw" to generate the EMF
--convert-to svg:impress_svg_Export                # force "Impress" to generate the SVG
--convert-to svg:draw_svg_Export                   # force "Draw" to generate the SVG
--convert-to xlsx:"Calc MS Excel 2007 XML"         # generate XLSX
--convert-to xls:"MS Excel 97"                     # generate XLS like Excel 97
--convert-to xls:"MS Excel 95"                     # generate XLS like Excel 95
--convert-to xls:"MS Excel 5.0/95"                 # generate XLS like Excel 5.0/95
</pre>

<p>Headless vs. Invisible</p>

<pre>
--invisible   Starts in invisible mode. Neither the start-up logo nor 
              the initial program window will be visible. Application 
              can be controlled, and documents and dialogs can be     
              controlled and opened via the API. Using the parameter, 
              the process can only be ended using the taskmanager     
              (Windows) or the kill command (UNIX-like systems). It   
              cannot be used in conjunction with --quickstart.        

--headless    Starts in "headless mode" which allows using the      
              application without GUI. This special mode can be used  
              when the application is controlled by external clients  
              via the API.                          
</pre>

<h4>Pandoc</h4>

<code>$ sudo sudo apt install -y pandoc</code> (CLI)<br>

<pre>
&nbsp; Commands for pandoc
&nbsp; &nbsp; • Convert ODT to DOCX
&nbsp; &nbsp; $ pandoc -o document.odt document.docx
&nbsp; &nbsp; • Convert DOCX to PDF
&nbsp; &nbsp; $ pandoc -s document.docx -o document.pdf
&nbsp; &nbsp; • Convert ODT to PDF
&nbsp; &nbsp; $ pandoc -s document.odt -o document.pdf
&nbsp; &nbsp; • Convert HTML to PDF
&nbsp; &nbsp; $ pandoc document.html -t latex -o document.pdf
</pre>

<br>
</details>

<!-- ########## -->

<details>
<summary>&nbsp; PDF Suites</summary>
<br>

<h4>PDF Reader</h4>

<code>$ sudo apt install -y okular</code><br>
<code>$ sudo apt install -y okular-extra-backends</code><br>

<!-- ########## -->

<h4>PDF Editor</h4>

<p>PDF Arranger (GUI)</p>

https://github.com/pdfarranger/pdfarranger<br>

<code>$ sudo apt install -y pdfarranger</code><br>

<!-- ########## -->

<h4>How to combine PDFs in CLI</h4>

<code>$ sudo apt install -y ghostscript</code> (CLI)<br>

<pre>
• Command to combine
$ gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=combined.pdf file1.pdf file2.pdf
• Output in low resolution
$ gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=merged.pdf mine1.pdf mine2.pdf
</pre>



<!-- ########## -->

<h4>PDF Crop and Split</h4>

<p>Krop (GUI)</p>

https://arminstraub.com/software/krop<br>

<p>Note, krop only adjusts which parts of a PDF are displayed; the original content is still there in the file and will, for instance, show up when editing the file in inkscape. As a result, krop is not suited for censoring a PDF document or decreasing the size of a PDF file. You may have some success in decreasing the size of the PDF (and even censoring some parts) using the option to use Ghostscript to optimize the final PDF.</p>

<code>$ sudo apt install -y krop</code><br>

<pre>
• To automatically undo 4 pages print onto a single page:
$ krop --go --grid=2x2 file.pdf
• To trim each of these pages:
$ krop --go --grid=2x2 --trim --trim-use=all file.pdf
• Others
krop --grid=2x1 --initialpage=3 --exceptions=1 --trim-use=all --trim ~/file.pdf
</pre>

<!-- ########## -->

<h4>Remove PDF annotations</h4>

<h6>Removing annotations at once in Okular</h6>

<p>View a page that has an annotation, find them in the annotation side pane. Right-click on the annotation icon in the document, and click Remove Annotation. Then save the changes to a new document by clicking the menu button in the top right, followed by Save As….</p>

<pre>
&nbsp; Commands for pdftocairo
&nbsp; &nbsp; $ pdftocairo -pdf "input.pdf" "output-with-flatten-annotations.pdf"
</pre>

<pre>
&nbsp; Commands for qpdf
&nbsp; &nbsp; $ qpdf --flatten-annotations=all input.pdf output.pdf
</pre>

<p>*May apply some differences.</p>
<p>*May result in larger PDF.</p>

<!-- ########## -->

<h4>PDF Bookmarks Creation</h4>

https://github.com/SiddharthPant/booky<br>


<br>
</details>

<!-- ########## -->

<details>
<summary>&nbsp; PDF OCR</summary>
<br>

<h4>• PDF OCR - Optical Character Recognition</h4>

<p>OCRFeeder (GUI)</p>

https://wiki.gnome.org/Apps/OCRFeeder<br>

<code>$ sudo apt install -y ocrfeeder</code><br>

<b>*Unpaper</b>

<p>Cuneiform (CLI)</p>
https://packages.debian.org/bookworm/cuneiform

<p>OcrmOCRmyPDF (CLI)</p>

https://ocrmypdf.readthedocs.io<br>

<code>$ sudo apt install -y ocrmypdf</code><br>

<p>Also install the Tesseract OCR plugins for your desired language</p>

<code>$ sudo apt install -y tesseract-ocr-eng</code><br>
<code>$ sudo apt install -y tesseract-ocr-deu</code><br>
<code>$ sudo apt install -y tesseract-ocr-fra</code><br>
<code>$ sudo apt install -y tesseract-ocr-spa</code><br>
<code>$ sudo apt install -y tesseract-ocr-por</code><br>
<code>$ sudo apt install -y tesseract-ocr-rus</code><br>
<code>$ sudo apt install -y tesseract-ocr-ara</code><br>
<code>$ sudo apt install -y tesseract-ocr-chi-sim</code><br>
<code>$ sudo apt install -y tesseract-ocr-chi-tra</code><br>

<pre>
&nbsp; Basic commands
&nbsp; &nbsp; • How to OCR a PDF
&nbsp; &nbsp; $ ocrmypdf -v input.pdf output.pdf
&nbsp; &nbsp; $ ocrmypdf -v --language deu input.pdf output.pdf
&nbsp; &nbsp; $ ocrmypdf -v --language por+deu input.pdf output.pdf
&nbsp; &nbsp; • To modify a file in the same place
&nbsp; &nbsp; $ ocrmypdf -v ~/input.pdf ~/input.pdf
&nbsp; &nbsp; • To skip text 
&nbsp; &nbsp; $ ocrmypdf -v --skip-text input.pdf output.pdf
&nbsp; &nbsp; • To redo OCR 
&nbsp; &nbsp; $ ocrmypdf -v --redo-ocr input.pdf output.pdf
</pre>

<pre>
&nbsp; &nbsp; • Compression settings
&nbsp; &nbsp; $ ocrmypdf -v --pdfa-image-compression=jpeg --language=por+deu input.pdf output.pdf
&nbsp; &nbsp; $ ocrmypdf -v --pdfa-image-compression=lossless --language=por+deu input.pdf output.pdf
&nbsp; &nbsp; $ ocrmypdf -v --output-type=pdf --language por+deu input.pdf output.pdf
</pre>

<h5>OcrmOCRmyPDF - Image processing</h5>

<pre>
&nbsp; &nbsp; • Image processing
&nbsp; &nbsp; $ ocrmypdf -v --clean --language=por+deu input.pdf output.pdf
&nbsp; &nbsp; $ ocrmypdf -v --clean-final --language=por+deu input.pdf output.pdf
&nbsp; &nbsp; $ ocrmypdf -v --remove-background --language=por+deu input.pdf output.pdf
</pre>

<em>Warning</em>

<p>In many cases image processing will rasterize PDF pages as images, potentially losing quality. We caution against using ImageMagick or Ghostscript to convert images to PDF, since they may transcode images or produce downsampled images, sometimes without warning.</p>

<p>OCRmyPDF perform some image processing on each page of a PDF, if desired. The same processing is applied to each page. It is suggested that the user review files after image processing as these commands might remove desirable content, especially from poor quality scans.</p>

<p>Note that <code>--clean-final</code> and <code>--remove-background</code> may leave undesirable visual artifacts in some images where their algorithms have shortcomings. Files should be visually reviewed after using these options.</p>

<p><code>--clean</code> uses <code>unpaper</code> to clean up pages before OCR, but does not alter the final output. This makes it less likely that OCR will try to find text in background noise.</p>

<p><code>--clean-final</code> uses <code>unpaper</code> to clean up pages before OCR and inserts the page into the final output. You will want to review each page to ensure that unpaper did not remove something important.</p>

<p><code>--remove-background</code> attempts to detect and remove a noisy background from grayscale or color images. Monochrome images are ignored. This should not be used on documents that contain color photos as it may remove them.</p>

<h5>OcrmOCRmyPDF - PDF optimization</h5>

<pre>
&nbsp; &nbsp; • Optimization settings
&nbsp; &nbsp; $ ocrmypdf -v --optimize={0,1,2,3} input.pdf output.pdf
</pre>

<p>By default OCRmyPDF will attempt to perform lossless optimizations on the images inside PDFs after OCR is complete. Optimization is performed even if no OCR text is found.</p>

<p>The --optimize N (short form -O) argument controls optimization, where N ranges from 0 to 3 inclusive, analogous to the optimization levels in the GCC compiler.<p>

<p>Level</p>

<p>Comments</p>

<code>--optimize 0</code>

<p>Disables optimization.</p>

<code>--optimize 1</code>

<p>Enables lossless optimizations, such as transcoding images to more efficient formats. Also compress other uncompressed objects in the PDF and enables the more efficient “object streams” within the PDF. (If --jbig2-lossy is issued, then lossy JBIG2 optimization is used. The decision to use lossy JBIG2 is separate from standard optimization settings.)</p>

<code>--optimize 2</code>

<p>All of the above, and enables lossy optimizations and color quantization.</p>

<code>--optimize 3</code>

<p>All of the above, and enables more aggressive optimizations and targets lower image quality.</p>

<p>Optimization is improved when a JBIG2 encoder is available and when pngquant is installed. If either of these components are missing, then some types of images cannot be optimized.</p>

<p>The types of optimization available may expand over time. By default, OCRmyPDF compresses data streams inside PDFs, and will change inefficient compression modes to more modern versions. A program like qpdf can be used to change encodings, e.g. to inspect the internals for a PDF.</p>

<p>ocrmypdf --optimize 3 in.pdf out.pdf  # Make it small
Some users may consider enabling lossy JBIG2. See: jbig2-lossy.</p>

<p>Note</p>

<p>Image processing and PDF/A conversion can also introduce lossy transformations to your PDF images, even when --optimize 1 is in use.</p>

<h5>OcrmOCRmyPDF - PDF Rotation</h5>

<pre>
&nbsp; &nbsp; • To automatic correct the rotation of each page
&nbsp; &nbsp; $ ocrmypdf -v --deskew input.pdf output.pdf
&nbsp; &nbsp; $ ocrmypdf -v --rotate-pages input.pdf output.pdf
&nbsp; &nbsp; $ ocrmypdf -v --rotate-pages-threshold {0.0-2.0} input.pdf output.pdf
</pre>

<p><code>--rotate-pages</code> attempts to determine the correct orientation for each page and rotates the page if necessary.</p>

<p><code>--deskew</code> will correct pages that were scanned at a skewed angle by rotating them back into place.</p>

</details>

<!-- ########## -->

<details>
<summary>&nbsp; PDF Optimizers</summary>
<br>

<h4>ImageMagick (GUI or CLI)</h4>

https://imagemagick.org/Usage/crop<br>
https://imagemagick.org/Usage/crop/#crop_repage<br>

<code>$ sudo apt install imagemagick</code><br>

<pre>
• Commands to crop .pdf 
$ convert -monitor `ls input-*.png` -crop 3704x1852+160+20 output.png
$ convert -monitor -crop 1000x1350+20+145 +repage -path cropped *.png
</pre>

<p>Monitor progress: -monitor</p>

<p>Print detailed information about the image: -verbose</p>

<pre>
• Commands to reduce .pdf size
$ convert -density 300x300 -quality 100 input.pdf output.pdf
$ convert -monitor -density 200x200 -quality 60 -compress jpeg input.pdf output.pdf
$ convert -monitor -density 150x150 -quality 70 -compress jpeg -resize 15% input.pdf output.pdf
$ convert -monitor -density 150x150 -compress Zip input.pdf output.pdf
$ convert -monitor -density 80 -page a4 input.pdf output.pdf
$ convert -monitor input.pdf -resample 85% output.pdf
$ convert -monitor *.png -colorspace gray -resample 100% "input.pdf"
</pre>

<pre>
• Commands to scanned books
$ convert -normalize -density 300 -depth 8 *.png
$ convert -normalize -density 300 -depth 8 -crop 50%x100% +repage *.png
$ convert -monochrome -normalize -density 300 *.png
</pre>

<p>-normalize : increase the contrast in an image by stretching the range of intensity values.</p>

<p>-depth : the number of bits per channel for each pixel.</p>

<p>-monochrome : transform the image to black and white.</p>

<p>pdfCropMargins - Python</p>

https://pypi.org/project/pdfCropMargins<br>

<pre>
$ pip install "pdfCropMargins" --upgrade
$ pdf-crop-margins -v -p 0 -a -6 input.pdf
</pre>

<!-- ########## -->

<h4>Ghostscript</h4>

https://ghostscript.com<br>

<code>$ sudo apt install -y ghostscript</code> (CLI)<br>

Commands to optimize pdf size with ghostscript.<br>

<pre>
• Reduce size of scanned book
$ gs -dNOPAUSE -dBATCH -dQUIET \
-sDEVICE=pdfwrite \
-dCompatibilityLevel=1.4 \
-dPDFSETTINGS=/screen \
-sOutputFile=output.pdf \
input.pdf
</pre>

<pre>
$ gs -dNOPAUSE -dBATCH -dQUIET \
-sDEVICE=pdfwrite \
-dCompatibilityLevel=1.4 \
-dPDFSETTINGS=/printer \
-sOutputFile=output.pdf \
input.pdf
</pre>

<pre>
$ gs -dNOPAUSE -dBATCH -dQUIET \
-sDEVICE=pdfwrite \
-dCompatibilityLevel=1.4 \
-dPDFSETTINGS=/prepress \
-dDetectDuplicateImages \
-dCompressFonts=true \
-r150  \
-sOutputFile=output.pdf \
input.pdf
</pre>

<pre>
$ gs -dNOPAUSE -dBATCH -dQUIET \
-sDEVICE=pdfwrite \
-dCompatibilityLevel=1.4 \
-dPDFSETTINGS=/prepress \
-dDetectDuplicateImages \
-dCompressFonts=true \
-r300  \
-sOutputFile=output.pdf \
input.pdf
</pre>

<h5>Editing Acrobat PDF</h5>

<pre>
$ gs -q -dNOPAUSE -dBATCH -dSAFER \
-sDEVICE=pdfwrite \
-dCompatibilityLevel=1.4 \
-dPDFSETTINGS=/ebook \
-dEmbedAllFonts=true \
-dSubsetFonts=true \
-dColorImageDownsampleType=/Bicubic \
-dColorImageResolution=96 \
-dGrayImageDownsampleType=/Bicubic \
-dGrayImageResolution=96 \
-dMonoImageDownsampleType=/Bicubic \
-dMonoImageResolution=96 \
-sOutputFile=output.pdf \
input.pdf
</pre>

<pre>
gs -q -dNOPAUSE -dBATCH -dSAFER \
-sDEVICE=pdfwrite \
-dCompatibilityLevel=1.3 \
-dPDFSETTINGS=/screen \
-dEmbedAllFonts=true \
-dSubsetFonts=true \
-dColorImageDownsampleType=/Bicubic \
-dColorImageResolution=144 \
-dGrayImageDownsampleType=/Bicubic \
-dGrayImageResolution=144 \
-dMonoImageDownsampleType=/Bicubic -\
dMonoImageResolution=144 \
-sOutputFile=output.pdf \
input.pdf
</pre>

<sub>
&nbsp; References
-dPDFSETTINGS=/screen - Low quality and small size at 72dpi.
-dPDFSETTINGS=/ebook - Slightly better quality but also a larger file size at 150dpi.
-dPDFSETTINGS=/prepress - High quality and large size at 300 dpi.
-dPDFSETTINGS=/default - System chooses the best output, which can create larger PDF files.
</sub>

<pre>
Commands for ebook-convert
• How to convert .epub to .pdf
$ sudo apt install calibre
$ ebook-convert input.epub  output.pdf
$ ebook-convert input.epub  output.pdf --enable-heuristics
$ find ./ -iname "*pdf" -type f | while read f; do echo -e "\e[1mConverting file $f \e[0m" ; ebook-convert "$f" "${f%.pdf}.epub" --enable-heuristics ; done
</pre>

<p>*Ref.: https://manpages.debian.org/bookworm/calibre/ebook-convert.1.en.html</p>
<p>*Utility.: https://convertfiles.com</p>

<pre>
Commands for ps2pdf
• How to convert .ps to .pdf
$ sudo apt install ps2pdf 
$ ps2pdf -dPDFSETTINGS=/ebook input.pdf output.pdf
</pre>

<p>*LibreOffice Draw: DPI of 100 and JPEG compression of 80%.</p>
<p>*Try: $ ps2pdf input.pdf output.pdf</p>

<br>
</details>

<!-- ########## -->

<details>
<summary>&nbsp; Image Editors</summary>
<br>

<h4>Basic Image Editors</h4>

<h5>Gthumb</h5>

https://gitlab.gnome.org/GNOME/gthumb<br>

<code>$ sudo apt install gthumb</code> (GUI)<br> 

<h5>Image Magick</h5>

https://imagemagick.org<br>

<code>$ sudo apt install imagemagick</code> (GUI or CLI)<br>

<h4>Advanced Image Editors</h4>

<h5>GIMP</h5>

https://gimp.org<br>

<p>"Whether you are a graphic designer, photographer, illustrator, or scientist, GIMP provides you with sophisticated tools to get your job done."</p>

<code>$ sudo apt install gimp</code> (GUI)<br>

<a href="https://youtube.com/watch?v=G_PjQAy0iiU">
  <img src="https://markdown-videos-api.jorgenkh.no/url?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DG_PjQAy0iiU" alt="Learn How To Use GIMP 2 10 For Beginners" title="Learn How To Use GIMP 2 10 For Beginners"/>
</a>

<h5>Inkscape</h5>

https://inkscape.org<br>

<p>"Inkscape is a Free and open source vector graphics editor for GNU/Linux, Windows and macOS. It offers a rich set of features and is widely used for both artistic and technical illustrations such as cartoons, clip art, logos, typography, diagramming and flowcharting."</p>

<a href="https://youtube.com/watch?v=mmJGpBJFBxY">
  <img src="https://markdown-videos-api.jorgenkh.no/url?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DmmJGpBJFBxY" alt="Full Inkscape Beginner Course" title="Full Inkscape Beginner Course"/>
</a>

<h4>Other</h4>

<h4>Memegen (Open Source)</h4>

<p>An API to programmatically generate memes based solely on requested URLs</p>

https://github.com/jacebrowning/memegen<br>
https://memegen.link<br>

<h4>imgflip (Free)</h4>

https://imgflip.com/memegenerator<br>

<br>
</details>

<!-- ########## -->

<details>
<summary>&nbsp; Image Convert</summary>
<br>

<h4>Image Convert</h4>

<h5>Convert with webp (dwebp)</h5>

<code>$ sudo apt install webp</code><br>

<pre>
&nbsp; Commands for webp files
&nbsp; &nbsp; • How to convert .webp to .png #It's a command-line interface
&nbsp; &nbsp; $ dwebp -v input.webp -o ~/output.png 
&nbsp; &nbsp; $ dwebp -v -resize width x height input.webp -o ~/output.png
&nbsp; &nbsp; *If either (but not both) of the width or height parameters is 0,
&nbsp; &nbsp;the value will be calculated preserving the aspect-ratio.
</pre>

<pre>
&nbsp; Commands for webp files in batch
&nbsp; &nbsp; $ for file in *.webp ; do dwebp "$file" -o "${file%.*}.png" ; done
&nbsp; &nbsp; • Testing alternatives
&nbsp; &nbsp; $ find . -name "*.webp" -exec dwebp {} -o "${file%.*}.png" \;
&nbsp; &nbsp; $ find . -type f -name "*.webp" -exec dwebp {} -o *.png
&nbsp; &nbsp; $ sudo apt install parallel
&nbsp; &nbsp; $ parallel dwebp {} -o *.png
&nbsp; &nbsp; $ find . -name "*.webp" -print0 | parallel --progress -0 dwebp {} -o *.png
&nbsp; &nbsp; $ for x in `ls -1 *.jpg`; do dwebp {} -o ${x%.*}.png ; done
&nbsp; &nbsp; $ for x in `find . -name "*.webp"`; do dwebp {} -o ${x%.*}.png ; done
</pre>


<h5>Convert image with ImageMagick</h5>

https://imagemagick.org/script/formats.php<br>
https://imagemagick.org/script/mogrify.php<br>
https://imagemagick.org/script/command-line-tools.php<br>

<code>$ sudo apt install imagemagick</code><br>

<p>*Note that <code>convert</code> is part of ImageMagick package.</p>

<pre>
• Commands
$ mogrify -format png *.jpg
$ mogrify -format png *.jpeg
$ mogrify -format png *.gif
• In batch
$ cd ~/Donwloads
$ find . -name "*.jpg" -exec mogrify -format png {} \;
$ find . -name "*.jpeg" -exec mogrify -format png {} \;
$ find . -name "*.gif" -exec mogrify -format png {} \;
</pre>

<h5>Rotate image with ImageMagick</h5>

<code>$ sudo apt install imagemagick</code><br>

<pre>
• Commands
$ mogrify -monitor -rotate -90 *.png
</pre>

<h4>Unpaper</h4>

<h6>Unpaper built-in - OCRFeeder (GUI)</h6>

https://wiki.gnome.org/Apps/OCRFeeder<br>

<code>$ sudo apt install -y ocrfeeder</code><br>

<p>Tools -> Unpaper</p>

<h6>Unpaper built-in - OcrmOCRmyPDF (CLI)</h6>

https://ocrmypdf.readthedocs.io<br>

<code>$ sudo apt install -y ocrmypdf</code><br>
<code>$ ocrmypdf --clean </code><br>
<code>$ ocrmypdf --clean-final </code><br>
<code>$ ocrmypdf --remove-background </code><br>

<p>Note that <code>--clean-final</code> and <code>--remove-background</code> may leave undesirable visual artifacts in some images where their algorithms have shortcomings. Files should be visually reviewed after using these options.</p>

<p><code>--remove-background</code> attempts to detect and remove a noisy background from grayscale or color images. Monochrome images are ignored. This should not be used on documents that contain color photos as it may remove them.</p>

<p><code>--clean</code> uses <code>unpaper</code> to clean up pages before OCR, but does not alter the final output. This makes it less likely that OCR will try to find text in background noise.</p>

<p><code>--clean-final</code> uses <code>unpaper</code> to clean up pages before OCR and inserts the page into the final output. You will want to review each page to ensure that unpaper did not remove something important.</p>

<p>--clean uses <code>unpaper</code> to clean up pages before OCR, but does not alter the final output. This makes it less likely that OCR will try to find text in background noise.</p>


<h5>Unpaper - A post-processing tool for scanned sheets of paper</h5>

https://diybookscanner.org<br>
https://diybookscanner.org/forum<br>
https://scantips.com<br>
https://github.com/unpaper/unpaper<br>
https://github.com/unpaper/unpaper/blob/main/doc/basic-concepts.md<br>
https://github.com/unpaper/unpaper/blob/main/doc/image-processing.md<br>
https://mesonbuild.com/Quick-guide.html#compiling-a-meson-project<br>
https://gallium.readthedocs.io/en/latest/meson.html<br>
https://imagemagick.org/script/formats.php<br>
https://netpbm.sourceforge.net/doc/pnm.html<br>

SANE - Lists of supported scanners firmware<br>
http://www.sane-project.org<br>
http://www.sane-project.org/sane-supported-devices.html<br>

<p>The output format of Unpaper is restricted to the PNM family of formats, and conversions to other formats need to happen with tools such as pnmtopng, pnmtotiff or pnmtojpeg. Alternatively you can use the convert tool from ImageMagick.</p>

<p>PNM is a family of formats supporting portable bitmaps (.pbm) , graymaps (.pgm), and pixmaps (.ppm). There is no file format associated with pnm itself. If PNM is used as the output format specifier, then ImageMagick automagically selects the most appropriate format to represent the image. The default is to write the binary version of the formats. Use -compress none to write the ASCII version of the formats. On some platforms, ImageMagick automagically processes a PNM image, called image.pnm.gz is automagically uncompressed.</p>

<p>Unpaper uses the Meson Build system, which can be installed using Python's package manage (pip3 or pip), the only hard dependency of Unpaper is ffmpeg, </p>

<pre>
• Commands, python and ffmpeg installation using package manager
$ sudo apt install python3 &&
sudo apt install python3-pip &&
sudo apt install python3-setuptools &&
sudo apt install python3-wheel &&
sudo apt install ninja-build &&
sudo apt install python3-mesonpy &&
sudo apt install python3-sphinx &&
sudo apt install python3-pytest &&
sudo apt install python3-pil &&
sudo apt install cmake &&
sudo apt install pkg-config &&
sudo apt install libavformat-dev &&
sudo apt install ffmpeg &&
sudo apt install git 
<pre>

<h6>Error: libavformat-dev</h6>

Install other depedencies<br>

<code>$ sudo apt install libsdl2-dev libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev libswresample-dev libusb-1.0-0 libusb-1.0-0-dev</code>


<p>Basic configuration. The most common use case of Meson is compiling code on a code base you are working on.</p>

<pre>
• Compiling Unpaper with Meson project
$ git clone https://github.com/unpaper/unpaper
$ cd unpaper
$ CFLAGS="-march=native" meson --buildtype=debugoptimized builddir -Db_lto=true
$ meson compile -C builddir
</pre>

<em>Warning: Before making modifications to files, create backup copies.</em>

<p>File formats</p>

https://github.com/unpaper/unpaper/blob/main/doc/file-formats.md<br>

$ sudo apt install imagemagick

<pre>
• Commands to convert .png in .pbm
$ cd ~/Folder
$ find . -name "*.png" -exec mogrify -monitor -format pbm {} \;
</pre>

<pre>
• Commands to convert .pdf in .pbm
$ convert -monitor input.pdf +repage -quality 100 output%03d.pbm
$ convert -monitor "*.pdf" +repage -path /livros output%03d.pbm
$ find . -name "*.pdf" -exec convert *.pdf output%03d.pbm
</pre>

<p>Imagemagick Repage</p>
https://imagemagick.org/Usage/crop/#crop_repage

<p>You can use the special "+repage" operator to reset the page canvas and position to match the actual cropped image.</p>

<p>* -repage: adjust the canvas and offset information of the image.</p>
<p>* +repage: offset may need to be removed using +repage, to remove if it is unwanted.</p>

<pre>
• Commands to convert multiple .pbm in .pdf
$ convert -monitor *.png +adjoin output.pdf
$ convert -monitor *.pbm output.pdf
$ find . -name "*.pbm" -exec convert -units PixelsPerInch *.pbm -density 96 output.pdf
</pre>

<p>Imagemagick Adjoin</p>

https://imagemagick.org/script/command-line-options.php#adjoin</p>

<p>Join images into a single multi-image file.</p>

<p>* -adjoin: join images into a single multi-image file</p>
<p>* +adjoin: to force each image to be written to separate files, whether or not the file format allows multiple images per file (for example, GIF, MIFF, and TIFF).</p>

Alternative - Combining pictures into PDF file<br>

ttps://gitlab.mister-muffin.de/josch/img2pdf<br>

<pre>
$ img2pdf --pagesize A4 img*.png
$ img2pdf --pagesize A4 img*.png | ocrmypdf - myfile.pdf
$ img2pdf --imgsize 300dpix300dpi -i *.jp2 -o output.pdf 
</pre>

<pre>
• Commands to reduce .pdf size
$ convert -monitor +repage -density 200 -quality 60 -compress jpeg input.pdf output.pdf
$ convert -monitor +repage input.pdf -resample 85% output.pdf
$ convert -monitor +repage scan*.jpg -colorspace gray -resample 100% "input.pdf"
$ convert -monitor +repage -compress Zip -density 200 input.pdf output.pdf
</pre>

-----------------------------------------------------------

<h6>Error: mogrify-im6.q16: attempt to perform an operation not allowed by the security policy `PDF' @ error/constitute.c/IsCoderAuthorized/426</h6>

<pre>
• Policy edit
$ sudo sed -i '/disable ghostscript format types/,+6d' /etc/ImageMagick-6/policy.xml

• Alternatively uncomment 
$ sudo nano /etc/ImageMagick-6/policy.xml

<policy domain="coder" rights="none" pattern="{PS,PS2,PS3,EPS,PDF,XPS}" />

• Alternatively remove this whole following section 
$ sudo nano /etc/ImageMagick-6/policy.xml

<!-- disable ghostscript format types -->
<policy domain="coder" rights="none" pattern="PS" />
<policy domain="coder" rights="none" pattern="PS2" />
<policy domain="coder" rights="none" pattern="PS3" />
<policy domain="coder" rights="none" pattern="EPS" />
<policy domain="coder" rights="none" pattern="PDF" />
<policy domain="coder" rights="none" pattern="XPS" />

</pre>

-----------------------------------------------------------

-----------------------------------------------------------

<h6>Error: convert-im6.q16: cache resources exhausted</h6>

<pre>
• Increase the available memoryfile
$ sudo nano /etc/ImageMagick-6/policy.xml

<policy domain="resource" name="memory" value="3GB"/>
<policy domain="resource" name="disk" value="3GB"/>

• Alternatively use
$ convert -limit memory 1GiB -limit disk 1GiB *.png new.pdf
</pre>

-----------------------------------------------------------

<p>Renaming in numbered order</p>

<pre>
• Renamer
$ sudo apt install rename
• Commands to rename to numbered order
$ cd /bookfolder
• Test the output before
$ rename -n 's/.+/our $i; sprintf("input%03d.png", 1+$i++)/e' *
• Apply the change
$ rename 's/.+/our $i; sprintf("input%03d.png", 1+$i++)/e' *
</pre>

<p>Unpaper - Basic usage</p>

https://github.com/unpaper/unpaper/blob/main/doc/basic-concepts.md<br>

<p>Use case: two pages per sheet, "open book" format where the input image-file already contains two scanned pages in a double-page layout</p>

<img src="https://github.com/RENANZG/My-Debian-GNU-Linux/blob/main/.data/multiple-output-files.png" title="Multiple Output Files" alt="Multiple Output Files" />

<p>Process multiple files using a wildcard of the form %0nd, e.g. input%03d.pbm and output%03d.pbm. It will successively read images from files input001.pbm, input002.pbm, input003.pbm etc., and write output to the files output001.pbm, output002.pbm, output003.pbm etc., until no more input image-files with the current index number are available. Wildcards in filenames like "%03d" will get replaced with strings in the sequence 001, 002, 003 etc.</p>

<pre>
• Commands for double-page layout
$ unpaper --layout double input%03d.pbm output%03d.pbm
$ unpaper --layout double input%03d.pbm --output-pages 2 output%03d.pbm
</pre>

<p>Use case: combine single-page image-files onto a double-page layout sheet</p>

<img src="https://github.com/RENANZG/My-Debian-GNU-Linux/blob/main/.data/multiple-input-files.png" title="Multiple Input Files" alt="Multiple Input Files" />

<pre>
• Commands for single-page onto a double-page layout sheet
$ unpaper --no-processing --input-pages 2 singlepage%03d.pgm output%03d.pgm
</pre>

<p>Image processing</p>

https://github.com/unpaper/unpaper/blob/main/doc/image-processing.md<br>

<pre>
• Commands
$ unpaper 
• Commands
$ 
</pre>

<h5>Processing of multipage with ImageMagick</h5>

<p>Command line processing of multipage book-type scanned documents with ImageMagick.</p>

https://edison23.net/blog/posts/crop-and-split-book-scan-in-3-commands<br>
http://www.imagemagick.org/script/command-line-processing.php#geometry<br>


<code>$ sudo apt install imagemagick</code><br>

<p>*Note that <code>convert</code> is part of ImageMagick package.</p>

<p>How to make a clean PDF with one page per sheet. The quality and quantity of additional work depends on how carefully you digitized the book.</p>

<pre>
• Command all-in-one
$ convert -monitor -density 300 orig-scan.pdf pages.png convert `ls pages-*.png` -crop 3704x1852+160+20 +repage -crop 50%x100% pages-split.png convert `ls pages-split*` -page 100%x100% result.pdf
</pre>

<pre>
• Commands
• Convert PDF to images in ordered sequence
$ convert -density 300 orig-scan.pdf pages.png
$ convert -density 300 orig-scan.pdf[0-9] pages.png
• Batch cropping and batch splitting the pages (*before, test the resullt)
$ convert `ls pages-*.png` -crop 3704x1852+160+20 +repage -crop 50%x100% pages-split.png
• Recombining all the single pages back to PDF
$ convert `ls pages-split*` -page 100%x100% result.pdf
• Commands
$ 
</pre>

<br>
</details>

<!-- ########## -->

<details>
<summary>&nbsp; Office Utilities</summary>
<br>

<h4>Office Utilities</h4>

<code>$ sudo apt install xpad</code><br>
<code>$ sudo apt install kcalc</code><br>

<br>
</details>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.02 Password Manager</b></summary>
<br>

<h3>Password Manager</h3>

<h4>• KeePassXC</h4>

https://keepassxc.org/docs/<br>

<code>$ sudo apt install keepassxc</code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.03 Browsers</b></summary>
<br>

<h4>Browsers</h4>

https://avoidthehack.com/util/browser-comparison<br>

<h4>• LibreWolf</h4>

https://librewolf.net/installation/debian/<br>

<h4>• Firefox</h4>

<code>$ sudo apt install </code><br>

<h4>• Chromium</h4>

<code>$ sudo apt install </code><br>

<h5>Extensions</h5>


<table>
<thead>
  <tr>
    <th align="center">Firefox</th>
    <th align="center">Chrome</th>
    <th align="center">Make</th>
  </tr>
</thead>
<tbody>
<tr>

<td valign="top">
<ul>

<li>
<a href="https://addons.mozilla.org/en-US/firefox/addon/ublock-origin">Ublock Origin</a><br>
</li>
<li>
<a href="https://addons.mozilla.org/en-US/firefox/addon/languagetool">LanguageTool</a><br>
</li>
<li>
<a href="https://addons.mozilla.org/en-US/firefox/addon/clearurls">ClearURLs</a><br>
</li>
<li>
<a href="https://addons.mozilla.org/en-US/firefox/addon/temporary-containers">Temporary Containers</a><br>
</li>
<li>
<a href="https://addons.mozilla.org/en-US/firefox/addon/canvasblocker">Canvas Blocker</a><br>
</li>
<li>
<a href="https://addons.mozilla.org/en-US/firefox/addon/decentraleyes">Decentraleyes</a><br>
</li>
<li>
<a href="https://addons.mozilla.org/en-US/firefox/addon/terms-of-service-didnt-read">Terms of Service; Didn't Read</a><br>
</li>
</ul>
</td>

<td valign="top">
<ul>
<li>
<a href="https://chrome.google.com/webstore/detail/simple-speed-dial/gpdpldlbafdmhlmcdllcjgoigmpjonfc?hl=en-US">Simple Speed Dial</a><br>
</li>
<li>
<a href="https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm/related?hl=en-US">Ublock Origin</a><br>
</li>
<li>
<a href="https://chromewebstore.google.com/detail/ai-grammar-checker-paraph/oldceeleldhonbafppcapldpdifcinji?hl=en-US">LanguageTool</a><br>
</li>
<li>
<a href="https://chrome.google.com/webstore/detail/xbrowsersync/lcbjdhceifofjlpecfpeimnnphbcjgnc?hl=en-US">XBrowserSync</a><br>
</li>
<li>
<a href="https://chrome.google.com/webstore/detail/reader-view/ecabifbgmdmgdllomnfinbmaellmclnh/related?hl=en-US">Reader View</a><br>
</li>
<li>
<a href="https://chrome.google.com/webstore/detail/myjdownloader-browser-ext/fbcohnmimjicjdomonkcbcpbpnhggkip">jDownloader</a><br>
</li>
<li>
<a href="https://chrome.google.com/webstore/detail/tracking-token-stripper/kcpnkledgcbobhkgimpbmejgockkplob">Strips Google Analytics</a><br>
<li><a href="https://privacybadger.org">Privacy Badger is a browser extension that automatically learns to block invisible trackers</a><br>
</li>
</ul>
</td>

<td valign="top">
<ul>
<li>
<a href="https://github.com/j3nda/speed-dial-chrome">Simple Speed Dial</a><br>
</li>
<li>
<a href="https://github.com/iamadamdev/bypass-paywalls-chrome">Bypass Paywalls</a><br>
</li>
</td>
</ul>

</tr>
</tbody>
</table>


<h4>Everyday TOR</h4>

<h5>torbrowser-launcher [contrib]</h5>
https://wiki.debian.org/TorBrowser<br>
https://whonix.org/wiki/Install_Tor_Browser_Outside_of_Whonix#Easy<br>

<code>$ sudo apt install torbrowser-launcher</code><br>
<code>$ torbrowser-launcher</code><br>
<code>$ torbrowser-launcher --settings</code><br>

<h5>AppImage</h5>

https://github.com/RENANZG/My-Debian-GNU-Linux/blob/main/6.SOFTWARES/6.01_Softwares_AppImage/Tor-Browser_Installer.sh<br>

<h4>URL shorteners</h4>

https://kutt.it<br>
https://shlink.io<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.04 Cloud Services</b></summary>
<br>

<h4>Info</h4>

https://forum.rclone.org<br>
https://reddit.com/r/cloudstorage<br>
https://reddit.com/r/DataHoarder<br>
https://reddit.com/r/Piracy<br>
https://reddit.com/r/Scams<br>

<h4>Cloud Privacy</h4>

<h5>∙ Cryptomator (GUI)</h5>

https://cryptomator.org<br>

<h5>∙ Duplicati (GUI)</h5>

https://duplicati.com<br>

<h5>∙ Tahoe-LAFS</h5>

https://tahoe-lafs.org/trac/tahoe-lafs<br>

<h5>∙ </h5>

<br>

<h4>Cloud Providers</h4>

<h4>• Google Drive</h4>

https://github.com/glotlabs/gdrive<br>

<h4>• MEGA</h4>

https://mega.io<br> 
https://mega.io/desktop<br>
https://github.com/rclone/rclone<br> 

<h4>• Yandex</h4>

https://360.yandex.com<br>
https://rclone.org/yandex (*Backend supported)<br> 

*Russian<br>

<h4>• IDrive</h4>

https://idrive.com<br>
https://idrive.com/online-backup-linux<br>
https://idrive.com/linux-backup-scripts<br>
https://rclone.org/s3/#idrive-e2<br>

<h4>• TeraBox</h4>

https://1024tera.com<br>
https://1024tera.com/terabox-cloud-storage-for-pc-free-download<br>
https://reddit.com/r/TeraBox/<br>

<h4>• pCloud</h4>

https://pcloud.com<br> 
https://pcloud.com/how-to-install-pcloud-drive-linux.html<br> 
https://github.com/pcloudcom/console-client<br> 

<h4>• SugarSync</h4>

https://sugarsync.com<br>
https://rclone.org/sugarsync (*Not backend supported) <br> 

<h4>• Box</h4>

https://box.com<br>
https://github.com/box/boxcli<br>
https://github.com/rclone/rclone<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.05 File Host</b></summary>
<br>

<h4>File Host</h4>

<h4>• Unsee</h4>
https://unsee.cc<br>

<h4>• Rapidgator</h4>
https://rapidgator.net<br> 

<h4>• Nitroflare</h4>
https://nitroflare.net<br> 

<h4>• Uploadgig</h4>
https://uploadgig.com

<h4>• Mediafire</h4>
https://mediafire.com/upgrade/<br> 

<h4>• UploadFiles</h4>
https://ufile.io<br> 

<h4>• 1Fichier</h4>
https://1fichier.com/hlp.html<br>

<h4>• Turbobit</h4>
https://turbobit.net

<h4>• Filescase</h4>
http://filescase.com/<br>

<h4>• Hex Upload</h4>
https://hexupload.org<br>

<h4>Anonymous File Sharing Services With Temporary Online Storage</h4>

<h4>• Tempsend</h4>
https://tempsend.com<br>

<h4>• WeTransfer</h4>
https://wetransfer.com

<h4>• Send Anywhere</h4>
https://send-anywhere.com<br>

<h4>• SendGB</h4>
https://sendgb.com<br>

<h4>• Volafile</h4>
https://volafile.org<br>

<h4>• SendSpace</h4>
https://sendspace.com<br>

<h4>• MyAirBridge</h4>
https://myairbridge.com/en/eng<br>

<h4>• Gofile</h4>
https://gofile.io/welcome<br>

<h4>• OTF One Time File</h4>
https://gofile.io/welcome<br>

<h4>• Bitwarden Send</h4>
https://bitwarden.com/products/send<br>

<br>
</details>

<!-- #################### -->

<details>
<summary>6.06 Media Players</summary>
<br>

<h4>MPV</h4> 

<code>$ sudo apt install mpv</code><br>

<p>Shortcuts - https://github.com/mpv-player/mpv/blob/master/DOCS/man/mpv.rst#keyboard-control</p>

<p>Window Geometry - https://mpv.io/manual/master/#options-geometry</p>

<p>Video Autofit - https://mpv.io/manual/master/#options-autofit</p>

<h6>MPV Config</h6>

<p>Config - https://github.com/mpv-player/mpv/blob/master/etc/mpv.conf</p>

<p>Coping basic MPV configs</p>

<code>$ cp -r /usr/share/doc/mpv/ ~/.config/mpv/</code><br>

<p>Editing only MPV configuration file (.conf)</p>

<code>$ cp /usr/share/doc/mpv/mpv.conf.gz  ~/.config/mpv/</code><br>
<code>$ gzip -d ~/.config/mpv/mpv.conf.gz</code><br>
<code>$ nano ~/.config/mpv/mpv.conf</code><br>

<p>Examples:</p>

<pre>
save-position-on-quit=yes
no-border
volume-max=125
geometry=50%x96%
</pre>

<p>To automatically save the current playback position on quit, start mpv with --save-position-on-quit, or add save-position-on-quit=yes to the configuration file.</p>

<p>Set volume-max=value in your configuration file to a reasonable amount, such as <code>volume-max=150</code>, which then allows you to increase your volume up to 150%, which is more than twice as loud. Increasing your volume too high will result in clipping artefacts. Additionally (or alternatively), you can utilize dynamic range compression with <code>af=acompressor</code>.</p>

<p>MPV Read-me and examples</p>

<code>$ sudo gzip -d /usr/share/doc/README.md.gz ~/ </code><br>
<code>$ ls ~/.config/mpv/examples/lua/ </code><br>

<p>Editing only MPV keybindings (input.conf)</p>

<code>$ cp /usr/share/doc/mpv/input.conf.gz  ~/.config/mpv/</code><br>
<code>$ gzip -d ~/.config/mpv/input.conf.gz</code><br>
<code>$ nano ~/.config/mpv/input.conf</code><br>

<sub><b>*It's recommended to use mplayer-input.conf as reference-only. To use it save as input.conf</b></sub>

<h5>VLC</h5>

<code>$ sudo apt install vlc</code><br>

<h5>GNOME Media Player</h5>

<code>$ sudo apt install totem</code><br>

<br>
</details>

<!-- ########## -->

<details>
<summary>6.07 Video Editors</summary>
<br>

<h4>Video Editors</h4>

<code>$ sudo apt install handbrake</code> (GUI)<br>
<code>$ sudo apt install handbrake-cli</code> (CLI)<br>
<code>$ sudo apt install ffmpeg</code> (CLI)<br> 

<p>Usefull links:</p>

<ul>
<li>https://keepvid.ch</li>
<li>https://gifs.com</li>
<li>https://omnicalculator.com/other/video-size</li>
<li>https://vidon.me/compress-mp4</li>
<li>https://dvdfab.at/resource/blu-ray/free-blu-ray-to-mp4-converter</li>
<li></li>
</ul>

<!-- ##### -->

<h5>OBS Studio</h5>
<code>$ sudo apt install </code> (GUI)<br>

<!-- ##### -->

<h5>YT-DLP - A feature-rich command-line audio/video downloader</h5>

https://github.com/yt-dlp/yt-dlp<br> 

<code>$ sudo apt install yt-dlp</code> (CLI)<br> 

<p>Download YouTube videos</p>

<pre>
• Commands
• Download a video or playlist
$ yt-dlp <URL>
$ yt-dlp -F <URL>
$ yt-dlp -f 247 <URL>
$ yt-dlp -f "best[height<=480]" <URL>
$ yt-dlp -f "best[height<=480]" <URL>
$ yt-dlp -f worstvideo <URL>
$ yt-dlp -o 'qwerty' <URL>
• Download with metadata
$ yt-dlp -o '%(title)s by %(uploader)s on %(upload_date)s in %(playlist)s.%(ext)s' <URL>
$ yt-dlp --write-description --write-info-json --write-annotations --write-sub --write-thumbnail <URL>
• Download audio-only
$ yt-dlp -x --audio-format mp3 <URL>
</pre>

<!-- ##### -->

<h5>FFmpeg editor</h5>

https://trac.ffmpeg.org/wiki/Encode/H.264<br>

<pre>
• Commands
• Compressing videos
$ ffmpeg -i input.ext output.mp4
$ ffmpeg -i input.ext -b:v output.mp4 
$ ffmpeg -i input.ext -vf scale=1280:720 output.mp4
$ ffmpeg -i input.ext -c:v libx265 output.mp4 
$ ffmpeg -i input.mp4 -vcodec h264 -acodec mp2 output.mp4
$ ffmpeg -y -i input.mp4 -vcodec h264 -acodec mp3 output.mp4
$ ffmpeg -y -i input.mp4 -vcodec h264 -acodec aac output.mp4
$ ffmpeg -i input.mp4 -vcodec h264 -b:a 96k output.mp4
$ ffmpeg -i input.mp4 -vcodec h264 -b:v 1000k -acodec mp3 output.mp4
$ ffmpeg -i input.mp4 -vcodec libx265 -acodec aac -crf 23 output.mp4
$ ffmpeg -i input.mp4 -c:v libx265 -preset ultrafast -crf 28 -c:a aac -b:a 250k output.mp4
$ ffmpeg -i input.mov -c:v libx265 -preset veryfast -tag:v hvc1 -vf format=yuv420p -c:a copy output.mp4 

• Compressing video removing sound (to disable audio you must use -an)
$ ffmpeg -i input.mp4 -vcodec h264 -an output.mp4

• Converting videos
$ ffmpeg -y -i input.wmv output.mp4
$ ffmpeg -i input.mp4 -vf "scale=-2:240" output.mp4
$ ffmpeg -i input.wmv -c:v libx264 -crf 23 output.mp4
$ ffmpeg -i input.wmv -c:v libx264 -crf 23 -c:a aac -q:a 100 output.mp4
$ ffmpeg -i input.wmv -c:v libx264 -crf 23 -c:a aac -strict -2 -q:a 100 output.mp4
$ ffmpeg -i input.wmv -c:v libx264 -crf 23 -profile:v high -r 30 -c:a aac -q:a 100 -ar 48000 output.mp4

• Scaling down the size of the MP4 
$ ffmpeg -i input.mp4 -s 1280x720 -acodec copy -y output.mp4
$ ffmpeg -i input.mp4 -vf "scale=-2:720" -c:v libx264 -crf 20 -preset slow -c:a copy output.mp4
$ ffmpeg -i input.mp4 -s 1920x1080 -c:v libx265 -preset ultrafast -crf 28 -c:a aac -b:a 250k output.mp4
$ ffmpeg -i input.mp4 scale=1080:1920,format=yuv420p -c:v libx265 -preset veryfast -tag:v hvc1 -b:v 800k -bufsize 1200k -vf -b:a 128k output.mp4
$ ffmpeg -i input.mp4 -c:v libx265 -preset veryfast -tag:v hvc1 -vf format=yuv420p -c:a copy output.mp4
$ ffmpeg -i input.mp4 -c:v libx265 -preset veryfast -tag:v hvc1 -b:v new_bitrate -vf scale=new_width:new_height,format=yuv420p -c:a copy output.mp4
</pre>

<!-- ##### -->

<h5>Bulk compress MP4</h5>

<p>Bulk compress MP4 with ffmpeg</p>

<pre>
• One-line convert script
$ for file in *.mp4; do ffmpeg -i "$file" -vf "scale=-2:240" "Output-${file%.*}.mp4"; done
</pre>

<p>Bulk compress script</p>

<pre>
#!/bin/bash

# This script converts automatically a folder of video files.
# You need to change SRC (source folder) and DEST (destination folder)
# The default scale is -2x240.
#
# Commands to create
#  $ touch video-convert.sh
#  $ chmod +x convert.sh
#  $ nano video-convert.sh
#  $ bash video-convert.sh

mkdir converted_videos

for file in *.mp4; do
    filename=$(basename -- "$file")
    extension="${filename##*.}"
    filename="${filename%.*}"
    output="converted_videos/Output_${filename}.mp4"
    ffmpeg -i "$file" -vf "scale=-2:240" "$output"
done
</pre>

<p>Bulk compress script with ffmpeg and handbreak-cli</p>

<code>$ touch video-convert.sh</code>
<code>$ chmod +x convert.sh</code>
<code>$ nano convert.sh</code>
<code>$ bash convert.sh</code>

<pre>
#!/bin/bash

# This script is to convert automatically a folder of video files to MP4.
# You need to change SRC (source folder) and DEST (destination folder)
# The MP4 format is 480x270.
#
# Commands to create
#  $ touch video-convert.sh
#  $ chmod +x convert.sh
#  $ nano video-convert.sh
#  $ bash video-convert.sh

SRC=/home/video/
DEST=/home/www/mp4files/
DEST_EXT=mp4
HANDBRAKE_CLI=HandBrakeCLI

for FILE in `ls $SRC`
do
        filename=$(basename $FILE)
        extension=${filename##*.}
        filename=${filename%.*}

        $HANDBRAKE_CLI -i $SRC/$FILE -o $DEST/$filename.$DEST_EXT -e x264 -q 22 -r 12 -B 64 -X 480 -O
done
</pre>

<!-- ##### -->

<h5>HTML code to add video in GitHub README.md</h5>

<code><video src="/video.mp4"></video></code>
<code><video src="/video.mp4" width="320" height="240" controls></video></code>

<p>*Not working.</p>

<br>
</details>

<!-- ########## -->

<details>
<summary><b>6.08 Audio Editors</b></summary>
<br>

<h4>Audacity</h4>

<code>$ sudo apt install audacity</code> (GUI)<br>

<a href="https://youtube.com/watch?v=fSmmaAD8XD8">
  <img src="https://markdown-videos-api.jorgenkh.no/url?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DfSmmaAD8XD8" alt="Audacity Step-by-Step Tutorial for Beginners (2024)" title="Audacity Step-by-Step Tutorial for Beginners (2024)"/>
</a>

<a href="https://youtube.com/watch?v=bsZOHcDDKeQ">
  <img src="https://markdown-videos-api.jorgenkh.no/url?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DbsZOHcDDKeQ" alt="How to make voice sound better with Audacity (2024)" title="How to make voice sound better with Audacity (2024)"/>
</a>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.09 Email</b></summary>
<br>

<h4>Email</h4>

<code>$ sudo apt install -y thunderbird</code><br>
<code>$ sudo apt install -y birdtray</code><br>


<h4>Encrypted Emails</h4>

https://emailselfdefense.fsf.org/en/<br>
https://emailselfdefense.fsf.org/en/workshops.html<br>
https://riseup.net/en/security/message-security/openpgp/best-practices<br>
https://riseup.net/en/security/message-security/openpgp/enigmail<br>
https://linuxbabe.com/security/encrypt-emails-gpg-thunderbird<br>
https://wiki.archlinux.org/title/Paperkey<br>
https://keys.openpgp.org/about/usage<br>
https://efail.de<br>

<p>Note 1: You cannot recover the secret key from the public key and the passphrase. You cannot recover your secret gpg key without a backup.</p>

<p>Note 2: Create an expiration date for security reasons.</p>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<p>Note 3: Create an .</p>

<pre>
&nbsp; Commands for gnupg (GnuPG - GNU Privacy Guard) 
&nbsp; &nbsp; • How to export and import GPG key:
&nbsp; &nbsp; $ gpg --export ${ID} > public.key
&nbsp; &nbsp; $ gpg --export-secret-key ${ID} > private.key
&nbsp; &nbsp; $ gpg --import --batch public.key
&nbsp; &nbsp; $ gpg --import --batch backup_dir/.gnupg/pubring.gpg
&nbsp; &nbsp; $ gpg --import --batch backup_dir/.gnupg/secring.gpg
&nbsp; &nbsp; $ gpg --edit-key ${KEY} trust quit
&nbsp; &nbsp; $ gpg --list-keys
&nbsp; &nbsp; $ gpg --list-secret-keys
</pre>

<pre>
&nbsp; Commands for gnupg (GnuPG - GNU Privacy Guard) 
&nbsp; &nbsp; • How to extend the expiration date of an already expired GPG key:
&nbsp; &nbsp; $ gpg --list-keys
&nbsp; &nbsp; $ gpg --edit-key (key id)
&nbsp; &nbsp; • GPG console will open in the primary key, select a sub-key:
&nbsp; &nbsp; gpg>
&nbsp; &nbsp; gpg> list
&nbsp; &nbsp; gpg> key 1
&nbsp; &nbsp; • Set the expiration for the selected key
&nbsp; &nbsp; gpg> expire
&nbsp; &nbsp; gpg> save
&nbsp; &nbsp; • After update, you can send it out
&nbsp; &nbsp; gpg --keyserver site.com --send-keys (key id)
</pre>

<pre>
gpg --list-secret-keys --verbose --with-subkey-fingerprints
</pre>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.10 Encryption</b></summary>
<br>

<h4>Encryption</h4>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/2.SECURITY/2.03_Encryption">2.SECURITY/2.03_Encryption</a></h4>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/1.INSTALLATION/2.02_Debootstrap">1.INSTALLATION/2.02_Debootstrap</a></h4>

<h4>• Disk Encryption</h4>

<h5>∙ ZuluCrypt (GUI)</h5>

https://mhogomchungu.github.io/zuluCrypt<br>
https://github.com/mhogomchungu/zuluCrypt<br>

<h5>∙ SiriKali (GUI)</h5>

https://mhogomchungu.github.io/sirikali<br>

<code>$ sudo apt install zulucrypt-gui</code><br>

<h5>∙ VeraCrypt (GUI)</h5>

https://veracrypt.fr/en/Downloads.html<br>
https://reddit.com/r/VeraCrypt<br>
https://github.com/veracrypt/VeraCrypt<br>

<p>∙ Command to automount favorite volume at startup session:</p>

<code>/usr/bin/veracrypt %f /dev/sda2</code>

<p>∙ Password less:</p>

<code>$ sudo groupadd veracrypt</code><br>
<code>$ sudo usermod -aG veracrypt "$(whoami)"</code>(or)<br>
<code>$ sudo usermod -aG veracrypt $USER</code><br>
<code>$ sudoedit /etc/sudoers</code><br>

<pre>
%veracrypt ALL=(root) NOPASSWD:/usr/bin/veracrypt

#Allow members of group sudo to execute any command
%sudo ALL=(ALL:ALL) ALL
%veracrypt ALL=(root) NOPASSWD:/usr/bin/veracrypt

#Allow members of group sudo to execute any command
%sudo ALL=(ALL:ALL) ALL
%veracrypt ALL=(root) NOPASSWD:/usr/bin/veracrypt
</pre>

*Reboot 
<code>$ sudo reboot</code><br>

<p>∙ NTFS - Read only error</p>

<code>$ sudo ntfsfix /dev/mapper/veracrypt1</code><br>

<p>In Windowns (WinPE, )</p>

<code>C://> chkdsk /F</code><br>

<p>Close and open again</p>

<h4>• Archive Encryption</h4>


<h5>∙ GnuPG - GNU Privacy Guard</h5>

<pre>
&nbsp; Commands for gnupg
&nbsp; &nbsp; • How to encrypt file
&nbsp; &nbsp; $ gpg -c backup.tar.gz
&nbsp; &nbsp; • How to decrypt file
&nbsp; &nbsp; $ gpg backup.tar.gz.gpg

</pre>

<h4>• Cloud Encryption</h4>

<h5>∙ Cryptomator (GUI)</h5>

https://cryptomator.org<br>
https://github.com/cryptomator/cryptomator<br>
https://github.com/cryptomator/cli<br>
https://reddit.com/r/Cryptomator<br>

<h5>∙ Duplicati (GUI)</h5>

https://duplicati.com<br>
https://github.com/duplicati/duplicati<br>
https://forum.duplicati.com<br>
https://reddit.com/r/duplicati<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.11 Extracting Files</b></summary>
<br>

https://wiki.debian.org/Compression<br>

<h4>All-in-one extract()</h4>

<code>$ sudo apt install -y tar gzip 7zip unrar
 zlib1g bzip2 xz-utils tarlz</code><br>

<p>Add this function to your <code>.bashrc</code> or <code>.bash_profile</code> configure file in your home directory.</p>

<pre>
# Extract common archive files by file extension
function extract() {
    if [ -f $1 ] ; then
        case $1 in
#            *.tar.gz|*.tgz)     tar xzf $1          ;;
#            *.tar|*.tar.xz)     tar xf $1           ;;
#            *.tar.bz2|*.tbz2)   tar xjf $1          ;;
#            *.xz)               unxz $1             ;;
#            *.zip)              unzip $1            ;;
#            *.Z)                uncompress $1       ;;
#            *.tar.zst)          tar -I=unzstd xf $1 ;;
#            *.zst)              unzstd $1           ;;
#            *.7z)               7z x $1             ;;
        esac
    else
        echo "'$1' is not valid archive file."
    fi
}
</pre>

<h4>• TAR (.gz , .tar and .tar.gz)</h4>

<pre>
&nbsp; Commands for .tar archives
&nbsp; &nbsp; • How to create an .tar file with gzip archiver:
&nbsp; &nbsp; $ tar –cvf outarchive.tar ~/Documents
&nbsp; &nbsp; • How to decompress a .tar file with with gzip:
&nbsp; &nbsp; $ tar -xvf archive.tar
</pre>

<pre>
&nbsp; Commands for .tar.gz archives
&nbsp; &nbsp; • How to create an .tar.gz file
&nbsp; &nbsp; $ tar –cvzf outarchive.tar.gz ~/Documents
&nbsp; &nbsp; • To list the contents of a .tar.gz file:
&nbsp; &nbsp; $ tar –tzf archive.tar.gz
&nbsp; &nbsp; • How to decompress a .tar.gz file
&nbsp; &nbsp; $ tar –xvzf archive.tar.gz
&nbsp; &nbsp; $ tar –xvzf archive.tar.gz –C /home/user/Downloads
</pre>

<h4>• GZIP (.gz , .tar and .tar.gz)</h4>

<code>$ sudo apt install gzip</code><br>

<pre>
&nbsp; Commands for .gz archives
&nbsp; &nbsp; • How to create an .gz file
&nbsp; &nbsp; $ gzip outarchive.gz indoc1.pdf
&nbsp; &nbsp; • How to decompress a .gz file
&nbsp; &nbsp; $ gunzip archive.gz
</pre>

<h4>• 7Z (.7z and .zip)</h4>

https://7-zip.org<br>

<code>$ sudo apt install p7zip-full</code><br>

<pre>
&nbsp; Commands for .7z archives
&nbsp; &nbsp; • How to create an .7z file
&nbsp; &nbsp; $ 7z a outarchive.7z indoc1.pdf
&nbsp; &nbsp; • How to decompress a .7z file
&nbsp; &nbsp; $ 7z x archive.7z
</pre>

<pre>
&nbsp; Commands for .zip archives
&nbsp; &nbsp; • How to create an zip file
&nbsp; &nbsp; $ 7z a outarchive.zip indoc1.pdf
&nbsp; &nbsp; • How to decompress a zip file
&nbsp; &nbsp; $ 7z x archive.zip
</pre>

<pre>
&nbsp; Commands for encrypted .7z and .zip archives
&nbsp; &nbsp; • How to create an encrypted .zip file
&nbsp; &nbsp; $ 7z a -p -t7z -scrc=AES256 archive.7z /input/directory
&nbsp; &nbsp; $ 7z a -p -tzip -scrc=AES256 outarchive.zip indoc1.pdf inpdoc2.pdf
&nbsp; &nbsp; $ 7z a -p -tzip -scrc=AES256 archive.zip /input/directory
&nbsp; &nbsp; • How to create an encrypted header .7z file (only)
&nbsp; &nbsp; $ 7z a -p -mhe=on -scrc=AES256 archive.7z input_dir
&nbsp; &nbsp; $ 7z a -p -mhe=on -scrc=AES256 /output/archive.7z /input/directory
&nbsp; &nbsp; • How to decompress a .7z and .zip file that is encrypted
&nbsp; &nbsp; $ 7z x archive.zip 
</pre>

<p>*Encrypted header: no file list contents visible without the password</p>

<h4>• RAR (.rar)</h4>

<code>$ sudo apt install unrar-free</code><br>

<pre>
&nbsp; Commands for .rar archives (*proprietary: extract only)
&nbsp; &nbsp; • How to decompress a rar file
&nbsp; &nbsp; $ unrar e ~/Downloads/filename.rar ~/Downloads/
&nbsp; &nbsp; • How to decompress a rar file encrypted
&nbsp; &nbsp; $ unrar-free -x ~/Downloads/filename.rar ~/Downloads/
&nbsp; &nbsp; • How to decompress a rar file encrypted parts, only unrar the first part01.rar and it goes itself for the rest. Navigate to the directory containing the file:
&nbsp; &nbsp; $ cd /path/to/directory/
&nbsp; &nbsp; $ unrar-free -xp /part01.rar ~/Downloads/
</pre>

<h4>• ZIP (.zip)</h4>

https://infozip.sourceforge.net<br>

<code>$ sudo apt install zip unzip</code><br>

<pre>
&nbsp; Commands for .zip archives
&nbsp; &nbsp; • Add file.txt to z.zip (create z if needed)
&nbsp; &nbsp; $ zip z file.txt
&nbsp; &nbsp; • Zip all files in current dir:
&nbsp; &nbsp; $ zip z *
&nbsp; &nbsp; • Zip files in current dir and subdirs also:
&nbsp; &nbsp; $ zip -r z .
&nbsp; &nbsp; • How to decompress a .zip file:
&nbsp; &nbsp; $ unzip ~/Downloads/filename.zip
&nbsp; &nbsp; • How to unzip multiple .zip files:
&nbsp; &nbsp; $ unzip '*.zip'
&nbsp; &nbsp; • How to decompress a .zip file to directory:
&nbsp; &nbsp; $ unzip filename.zip -d /path/to/directory
&nbsp; &nbsp; $ unzip -d file file.zip
&nbsp; &nbsp; • Unzip Multiple Files (using single quote or backslash)
&nbsp; &nbsp; $ unzip '*.zip'
&nbsp; &nbsp; $ unzip \*.zip
&nbsp; &nbsp; • Locale encoding name error
&nbsp; &nbsp; $ unzip -I (encoding) (FILE_PATH) -d (Destination)
&nbsp; &nbsp; $ unzip -I UTF-8 Desktop.zip
</pre>

<pre>
&nbsp; Commands for encrypted .zip archives
&nbsp; &nbsp; • How to create an encrypted .zip file
&nbsp; &nbsp; $ zip -e filename.zip ~/Downloads/
&nbsp; &nbsp; • How to decompress a encrypted .zip file
&nbsp; &nbsp; $ unzip ~/Downloads/filename.zip
&nbsp; &nbsp; • How to decompress a encrypted .zip file to directory
&nbsp; &nbsp; $ unzip ~/Downloads/filename.zip -d ~/Downloads/
</pre>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.12 Sanitation</b></summary>
<br>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/2.SECURITY/2.06_Sanitization">2.SECURITY/2.06_Sanitization</a></h4>

<h4>Metadata Cleaners</h4>

<code>$ sudo apt install exiftool</code> (CLI)<br>
<code>$ sudo apt install metadata-cleaner</code> (GUI)<br>
<code>$ sudo apt install metacam</code> (GUI)<br>

• Exiftool - https://github.com/exiftool/exiftool<br>
• List of metadata TAGS - https://exiftool.org/TagNames/index.html<br>
• Common Mistakes - https://exiftool.org/mistakes.html<br>
• Metacam - https://packages.debian.org/unstable/graphics/metacam<br>

<h5>∙ Exiftool</h5>

<pre>
&nbsp; Commands for exiftool basic commands
&nbsp; &nbsp; • Remove all metadata from all files possible inside a folder and all its subfolders without backup (take care, might affect the colors)
&nbsp; &nbsp; $ exiftool -v -all:all= -overwrite_original -r /path/to/files/ 
&nbsp; &nbsp; • Shows only selected EXIF metadata:
&nbsp; &nbsp; $ exiftool -v -Model -ImageSize photo.jpg
&nbsp; &nbsp; • Process all files of specified file type (case insensitive extension)
&nbsp; &nbsp; $ exiftool -v -Model -ImageSize -ext jpg /path/to/files/
&nbsp; &nbsp; • recursively process all jpg files under specified directory and sub-directory
&nbsp; &nbsp; $ exiftool -v -r -Model -ImageSize -ext jpg /path/to/files/
</pre>

<h5>∙ Metadata Cleaner</h5>

<pre>
&nbsp; Commands 
&nbsp; &nbsp; $ metadata-cleaner /path/to/file.png
</pre>

<h4>System Sanitation</h4>

<h5>∙ Bleachbit</h5>

<code>$ sudo apt install bleachbit</code><br>

<p>Prevent recovery</p>

<p>In both user profile and root Bleachbit, go to Options -> Preferences -> General Tab and check "Overwrite contents of files to prevent recovery".</p>

</p>Freeze Bug - Free space erase option</p>

<em>Take care with free space erase in root mode, this has several problems. This can block the system from starting because the disk is full of randomized files. </em>

<p>Commands to debug if your are freeze</p>

<code>• Acess tty (teletype)</code><br>
<code>CTRL + ALT + {2,3,4,5,6}</code><br>
<code>• Delete tmp files in root</code><br>
<code>user:</code><br>
<code>password:</code><br>
<code>$ sudo su</code><br>
<code>user@host /: ls</code><br>
<code>user@host /: rm -R tmp*</code><br>
<code>user@host /: sudo reboot</code><br>
<code>• To find the large files in other folders</code><br>
<code>$ df -h</code><br>
<code>$ df -h ~/.cache</code><br>
<code>$ sudo df -h /mnt</code><br>
<code>$ find ~/.cache -xdev -type f -size +1G</code><br>
<code>$ sudo find /root -xdev -type f -size +1G</code><br>
<code>$ rm ~/.cache/tmp*</code><br>
<code>$ sudo rm /root/tmp*</code><br>

<h5>∙ Free space erase from CLI</h5>

<pre>
• List system targets
$ sudo bleachbit -l
• Erase space
$ sudo bleachbit --clean system.cache \
system.clipboard \
system.custom \
system.desktop_entry \
system.free_disk_space \
system.localizations \
system.memory \
system.recent_documents \
system.rotated_logs \
system.tmp \
system.trash 
</pre>

<p>* cron</p>

<h5>∙ Locale Purge</h5>

<p>Mark your preferred language besides en-US</p>

<code>$ sudo apt install -y localepurge</code><br>
<code>$ sudo localepurge</code><br>

<p>In Bleachbit as Administrator, go to Options -> Preferences -> Languages Tab and mark your preferred language besides en-US.Start cleaning, this may take some time.</p>

<h4>Full Disk Sanitation</h4>

https://wiki.debian.org/SSDOptimization<br>
https://wiki.archlinux.org/title/Solid_state_drive<br>

<em>*Not all SSD support sanitize. To properly way to erase a SSD is using the SSDs manufacturer's software. Other methods might not work, due to wear leveling and over-provisioning.</em><br>

<em>*If you use SSDs, enable TRIM in your BIOS. Confirm you are using SSD in the BIOS options.</em><br>

<em>*Consider hardware flaws.</em><br>

<h4>Manufacturers that supply software to update firmware and perform tasks like secure erase</h4>

<ul>
<li><a href="https://forum.corsair.com/blog/storage/the-corsair-ssd-toolbox/">Corsair SSD Toolbox</a></li>
<li><a href="https://semiconductor.samsung.com/consumer-storage/support/tools/">Samsung Magician</a></li>
<li><a href="https://seagate.com/as/en/support/downloads/seatools/">Seagate Seatools</a></li>
<li><a href="https://support.lenovo.com/my/en/downloads/ds019026-thinkpad-drive-erase-utility-for-resetting-the-cryptographic-key-and-erasing-the-solid-state-drive-thinkpad">Lenovo ThinkPad Drive Erase Utility</a></li>
<li><a href="https://crucial.com/support/storage-executive">Crucial Storage Executive</a></li>
<li><a href="https://support.wdc.com/downloads.aspx?p=279">Western Digital Dashboard</a></li>
<li><a href="https://hp.com/us-en/shop/tech-takes/how-to-secure-erase-ssd">HP Secure Erase [ BIOS / UEFI ]</a></li>
<li><a href="https://transcend-info.com/Support/Software-10/">Trendscend SSD Scope</a></li>
<li><a href="https://dell.com/support/kbdoc/en-us/000134997/using-the-dell-bios-data-wipe-function-for-optiplex-precision-and-latitude-systems-built-after-november-2015?lwp=rt">Dell Data Wipe function [ BIOS / UEFI ]</a></li>
<li><a href="https://kb.sandisk.com/app/answers/detail/a_id/15108/~/sandisk-ssd-dashboard-support-information">SanDisk SSD Dashboard</a></li>
<li><a href="https://kingston.com/en/support/technical/ssdmanager">Kingston SSD Manager</a></li>
<li><a href="https://micron.com/products/ssd/storage-executive-software">Micron SSD Management</a></li>
<li><a href="https://intel.com/content/www/us/en/download/19543/intel-memory-and-storage-tool-gui.html?v=t">Intel Memory and Storage Tool</a></li>
</ul>

<h5>∙ ShredOS</h5>

https://github.com/PartialVolume/shredos.x86_64<br>

<h5>∙ Nwipe</h5>

https://github.com/martijnvanbrummelen/nwipe<br>

<code>$ sudo apt install -y nwipe</code><br>

<h5>∙ Hdparm</h5>

<code>$ sudo apt install -y hdparm</code><br>

<pre>
• Commands
$ 
</pre>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.13 Display</b></summary>
<br>

<h4>Utilities</h4>

<h4>Set color temperature of display</h4>

<h5>Redshift</h5>

<code>$ sudo apt install redshift</code> (CLI)<br>
<code>$ sudo apt install redshift-gtk</code> (GUI)<br>

<p>redshift.conf</p>

https://raw.githubusercontent.com/jonls/redshift/master/redshift.conf.sample<br>

<code>$ ~/.config/redshift/redshift.conf</code><br>
<code>$ redshift -P -O TEMPERATURE</code><br>
<code>$ redshift -P -O 4000</code><br>
<code>$ redshift -P -O 6000</code><br>
<code>$ sudo apt install brightnessctl</code><br>
<code>$ brightnessctl s 25% && redshift -P -O 4000</code><br>
<code>$ brightnessctl s 50% && redshift -P -O 6500</code><br>
<code>$ redshift -l LAT:LONG</code><br>

</details>

<!-- ########## -->

<details>
<summary><b>6.14 Files and Folders</b></summary>
<br>

<h4>Synchronize files and folders</h4>

<code>$ sudo apt install grsync</code> (GUI)<br>

<!-- ##### -->

<h4>Duplicated files</h4>

(*by name, size, hash)

<h5>dupeGuru</h5>

<code>$ sudo apt install dupeguru</code> (GUI)<br>

<h5>fdupes (slow)</h5>

<code>$ sudo apt install fdupes</code> (CLI)<br>

<pre>
• Command
$ fdupes -r dir
$ fdupes -r -S .
</pre>

<h5>md5sum</h5>

https://github.com/pixelb/fslint

<code>$ sudo apt install coreutils</code> (CLI) (BUILT-IN)<br>

<pre>
• For small files based on hash
$ find . -type f -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate
• For large ones based on size
$ find . -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate
• For large ones based in based on size first and then hash
$ find . -not -empty -type f -printf "%s\n" | sort -rn | uniq -d |\
xargs -I{} -n1 find . -type f -size {}c -print0 | xargs -0 md5sum |\
sort | uniq -w32 --all-repeated=separate
</pre>


<!-- ##### -->

<h4>Visualize folder tree</h4>

<code>$ sudo apt install tree</code>

<pre>
• List directories only
$ tree -d
• Control the depth of the tree  
$ tree -d -L 2 .
</pre>

</details>

<!-- ########## -->

<details>
<summary><b>6.15 Renamers</b></summary>
<br>

<h4>Renamers</h4>

<h5>File Naming Best Practices</h5>

<p>You might consider including some of the following information in your file names, but you can include any information that will allow you to distinguish your files from one another.</p>

<ul>
	<li>Project or experiment name or acronym</li>
	<li>Location/spatial coordinates</li>
	<li>Researcher name/initials</li>
	<li>Date or date range of experiment</li>
	<li>Type of data</li>
	<li>Conditions</li>
	<li>Version number of file</li>
	<li>Three-letter file extension for application-specific files</li>
</ul>

<sub>Another good idea is to include in the directory a readme.txt file that explains your naming format along with any abbreviations or codes you have used.</sub>

<p>Machine readable</p>

<ul>
  <li>Regular expression and globbing friendly
    <ul>
      <li>Avoid spaces, punctuation, accented characters, case sensitivity</li>
      <li>Easy to compute on</li>
    </ul>
  </li>
  <li>Deliberate use of delimiters</li>
</ul>

<p>Consider these additional tips as you develop a file naming scheme:</p>

<ul>
	<li>A good format for date designations is YYYYMMDD or YYMMDD. This format makes sure all of your files stay in chronological order, even over the span of many years.</li>
	<li>Try not to make file names too long, since long file names do not work well with all types of software.</li>
	<li>Special characters such as ~ ! @ # $ % ^ &amp; * ( ) ` ; &lt; &gt; ? , [ ] { } ' " and | should be avoided.</li>
	<li>When using a sequential numbering system, using leading zeros for clarity and to make sure files sort in sequential order. For example, use "001, 002, ...010, 011 ... 100, 101, etc." instead of "1, 2, ...10, 11 ... 100, 101, etc."</li>
	<li>Do not use spaces. Some software will not recognize file names with spaces, and file names with spaces must be enclosed in quotes when using the command line. Other options include:
	<ul>
		<li>Underscores, e.g. file_name.xxx</li>
		<li>Dashes, e.g. file-name.xxx</li>
		<li>No separation, e.g. filename.xxx</li>
		<li>Camel case, where the first letter of each section of text is capitalized, e.g. FileName.xxx</li>
	</ul>
	</li>
	<li>Periods can be used in files names&nbsp;but consider these points before doing so and proceed cautiously:
	<ul>
		<li>Periods are used in regular expressions.</li>
		<li>Periods at the start of a file name are used to indicate configuration and/or hidden files in a file directory.</li>
		<li>Periods are used to separate file names from file extensions.</li>
	</ul>
	</li>
</ul>

<!-- ########## -->

<h5>Online regex tools</h5>

• Dencode - https://dencode.com<br>
• Commonly Used Software Development Tools - https://ctool.dev</br>
• Text Fixer - https://textfixer.com</br>
• SS64 Syntax Utils - https://ss64.com</br>
• Tools4noobs - https://tools4noobs.com</br>

<!-- ########## -->

<h5>KRename</h5>

<code>$ sudo apt install krename</code> (GUI)<br>

<!-- ########## -->

<h5>GPRename</h5>

<code>$ sudo apt install gprename</code> (GUI)<br>

<!-- ########## -->

<h5>Case Styles</h5>

<code>camelCase</code>
<code>PascalCase</code>
<code>kebab-case</code>
<code>snake_case</code>
<code>UPPER_CASE_(SNAKE_CASE)</code>

<!-- ########## -->

<h5>Bash's built-in commands to rename (Debian/GNU Linux)</h5>

<pre>
&nbsp; • Commands with move 
&nbsp; &nbsp; • Simply rename
&nbsp; &nbsp; $ mv /home/user/oldname /home/user/newname
&nbsp; &nbsp; • Convert Uppercase to Lowercase Characters #FAIL
&nbsp; &nbsp; $ for f in *; do mv -T "$f" "$(echo $f | tr [A-Z] [a-z])"; done
&nbsp; &nbsp; $ for i in $( ls | grep [A-Z] ); do mv -f $i `echo $i | tr 'A-Z' 'a-z'`; done
</pre>

<pre>
&nbsp; • Commands with sed 
&nbsp; &nbsp; • Convert Camel case to kebab-case
&nbsp; &nbsp; $ echo "MyDirectoryFileLine" | sed -e 's/\([A-Z]\)/-\L\1/g'
&nbsp; &nbsp; $ echo "MyDirectoryFileLine" | sed -e 's/\([A-Z]\)/-\L\1/g' -e 's/^-//'
&nbsp; &nbsp; $ echo "MyDirectoryFileLine" | sed -e 's/\([A-Z]\)/-\1/g' -e 's/^-//'
&nbsp; &nbsp; $ echo "MyDirectoryFileLine" | sed -e 's/[A-Z]/-\L&/g' -e 's/^-//'
&nbsp; &nbsp; $ echo "MyDirectoryFileLine" | sed -e 's/[A-Z]/-\l&/g;s/.//'
&nbsp; &nbsp; $ echo "SomeACRONYMInCamelCaseString" | sed -e 's/\([a-z]\)\([A-Z]\)/\1-\L\2/' | sed -e 's/\(.*\)/\L\1/')
&nbsp; &nbsp; • 
&nbsp; &nbsp; $ 
&nbsp; &nbsp; • 
&nbsp; &nbsp; $ 
&nbsp; &nbsp; • 
&nbsp; &nbsp; $ 
</pre>

<!-- ########## -->

<h5>Rename</h5>

<code>$ sudo apt install rename</code> (CLI)<br>

<pre>
&nbsp; • Commands for rename 
&nbsp; &nbsp; • Syntax
&nbsp; &nbsp; $ rename [options] 's/[pattern]/[replacement]/' [file name]
&nbsp; &nbsp; • Replacing the blank space with an underscore (_)
&nbsp; &nbsp; $ rename -v 'y/ /\_/' *.pdf
&nbsp; &nbsp; $ rename -v 'y/ /\_/' ~/Downloads/*
&nbsp; &nbsp; $ rename -v 'y/ /\_/' ~/Downloads/*.pdf
&nbsp; &nbsp; $ rename -v 'y/\n/\_/' ~/Downloads/*.pdf
&nbsp; &nbsp; $ rename -v 'y/\-/\_/' ~/Downloads/*.pdf
&nbsp; &nbsp; • Commands to rename to numbered order
&nbsp; &nbsp; $ cd /Files
&nbsp; &nbsp; • Test the output before (* -n)
&nbsp; &nbsp; $ rename -n 's/.+/our $i; sprintf("input%03d.png", 1+$i++)/e' *
&nbsp; &nbsp; • Apply the change
&nbsp; &nbsp; $ rename 's/.+/our $i; sprintf("input%03d.png", 1+$i++)/e' *
&nbsp; &nbsp; • Delete a Part of a Filename
&nbsp; &nbsp; $ rename -v 's/example//' *.pdf
&nbsp; &nbsp; • Convert Uppercase to Lowercase Characters #FAIL
&nbsp; &nbsp; $ rename -v 'y/[A-Z]/[a-z]/' *.PDF 
&nbsp; &nbsp; $ find my_dir -type f -execdir rename 'y/A-Z/a-z/' {} \;
&nbsp; &nbsp; • Convert Lowercase to Uppercase Characters #FAIL
&nbsp; &nbsp; $ rename -v 'y/[a-z]/[A-Z]/' *.pdf
&nbsp; &nbsp; • Convert to Camel case
&nbsp; &nbsp; $ rename 's/ /_/g' *
</pre>

<!-- ########## -->

<h5>Special Symbols</h5>

<pre>
&#92;n is a symbol for new line
&#92;t is a symbol for tab
&#92;r is for 'return'
</pre>

<p>Note: \n or \t or \r are interpreted inside of &lt;pre&gt; text &lt;&#47;pre&gt; </p>

<h6>Special HTML codes</h6>

<table>
<thead>
<tr>
<th>Char</th>
<th>Numeric<br>code</th>
<th>Named<br>code</th>
<th>Description</th>
</tr>
</thead>
<tbody><tr>
<td>&nbsp;</td>
<td>&amp;#09;</td>
<td>&nbsp;</td>
<td>horizontal tab</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&amp;#10;</td>
<td>&nbsp;</td>
<td>line feed</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&amp;#13;</td>
<td>&nbsp;</td>
<td>carriage return / enter</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&amp;#160;</td>
<td>&amp;nbsp;</td>
<td>non-breaking space</td>
</tr>
</tbody>
</table>

<!-- ########## -->

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.16 Backup</b></summary>
<br>

https://github.com/bit-team/backintime<br>
https://github.com/teejee2008/timeshift<br>
https://github.com/restic/restic<br>

<h4>Recover plan</h4>


<h4>Backup</h4>

<h5>Folders and Files Backup</h5>

<h4>GRSYNC (GUI)</h4>

<code>$ sudo apt install grsync</code><br>

<p>GRSYNC is a graphical interface for the rsync command line program. It can be used for local directory synchronization.</p>

</h4>Copy files and directories (CLI)</h4>

<h5>∙ "Full" Backup</h5>

<pre>
$ cp ~/.config/example/ /media/backup
</pre>

<h5>∙ "Incremental" Backup</h5>
</h5>
<pre>
$ cp -vur ~/.config/example/ /media/backup
</pre>

<sub>*This will preserve the files permissions/ownership.</sub>

<h5>∙ To get the progress information</h5>

<pre>
$ cp -a ~/.config/example/ /media/backup
</pre>

<h4>∙ Transfer progress and speed when copying files (CLI)</h4>

<h6>RSYNC</h6>

https://wiki.archlinux.org/title/Rsync<br>

<code>$ sudo apt install rsync</code>

<pre>
• Copying
$ rsync -ah --progress ~/source /backup/destination
$ rsync -ah --info=progress2 ~/source /backup/destination
$ rsync -rah --info=progress2 ~/source /backup/destination
• Moving
$ rsync -ravzP --remove-sent-files ~/source /backup/destination
• Copy a File or Directory from Local to Remote Machine
$ rsync -ravP Directory/ server@192.168.1.56:/home/server
</pre>

<sub>*This will preserve the files permissions/ownership.</sub>

<h6>DD</h6>

<pre>
$ dd if=~/source of=/backup/destination status=progress
</pre>

<h6>PV</h6>

<code>$ sudo apt install pv</code>

<pre>
$ pv ~/source > /backup/destination
</pre>

<sub>*This won't preserve the files permissions/ownership.</sub>

<h6>CURL</h6>

<pre>
$ curl -o destination FILE://source
</pre>

<sub>*This won't preserve the files permissions/ownership.</sub>

<h4>Disk Imaging and Cloning</h4>

<h5>Clonezilla</h5>

<p>The Free and Open Source Software for Disk Imaging and Cloning</p>

https://clonezilla.org//clonezilla-live-doc.php<br>

<p>Changing disk name</p>

<code>$ cnvt-ocs-dev -d /home/partimag 'image' 'sda3' 'sda2' </code><br>


<h4>Data Integrity</h4>

https://debian.org/doc/manuals/securing-debian-manual/ch04s17.en.html#check-integ<br>

<!-- ########## -->

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.17 Metaverse</b></summary>
<br>

<h4>Vircadia - Open Source Metaverse Platform</h4>

https://vircadia.com<br>

<a href="https://youtube.com/watch?v=4ZPz4rvMEwk">
  <img src="https://markdown-videos-api.jorgenkh.no/url?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D4ZPz4rvMEwk" alt="An introduction to Vircadia - an Open Source desktop and VR metaverse" title="An introduction to Vircadia - an Open Source desktop and VR metaverse"/>
</a>

<h4>Overte - Open source virtual worlds and social VR</h4>

https://overte.org<br>

<a href="https://youtube.com/watch?v=-1tU6H2A7pQ">
  <img src="https://markdown-videos-api.jorgenkh.no/url?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D-1tU6H2A7pQ" alt="Introduction to the Overte project" title="Introduction to the Overte project"/>
</a>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.18 Online Utilities</b></summary>
<br>

<h4>Utilities</h4>

• Message Header Analyzer - https://mha.azurewebsites.net<br>
• Message Header Analyzer - https://github.com/microsoft/MHA<br>
• PhishTank - https://phishtank.org<br>
• Simple Email Reputation - https://emailrep.io<br>
• Whois - https://iana.org/whois<br>
• ViewDNS - https://viewdns.info<br>
• WhoisMyDNS - https://whoismydns.com<br>
• NSLookup - https://nslookup.io<br>
• My-Addr - https://my-addr.com<br>
• Malpedia - https://malpedia.caad.fkie.fraunhofer.de<br>
• CVE Details - https://cvedetails.com<br>
• Exploit Database - https://exploit-db.com<br>
• FileInfo - https://fileinfo.co<br>
• xCyclopedia - https://strontic.github.io/xcyclopedia<br>
• The Windows Binary Index - https://winbindex.m417z.com<br>
• Palo Alto Applipedia - https://applipedia.paloaltonetworks.com<br>
• Windows Securitiy Logs - https://ultimatewindowssecurity.com/securitylog/encyclopedia<br>
• Internet Archive (WayBackMachine) - https://web.archive.org<br>
• Archive web content - https://archive.ph<br>
• Internet Archive - https://archive.org<br>
• HTTrack - https://httrack.com<br>
• IPVOID - https://ipvoid.com<br>
• AbuseIPDB - https://abuseipdb.com<br>
• Grabify IP Logger - https://grabify.link/<br>
• IP Logger - https://iplogger.org<br>
• IP Tracker - https://iplogger.org/ip-tracker<br>
• IP Location Tracker - https://iplogger.org/location-tracker<br>
• IP Location - https://iplocation.net<br>
• URL Checker -  https://iplogger.org/url_checker<br>
• MAC Address Lookup - https://iplogger.org/mac-checker<br>
• MAC Vendor - https://macvendors.com<br>
• IP API<br>
&emsp; - ip-api - https://ip-api.com<br>
&emsp; - ipify - https://ipify.org<br>
&emsp; - ipapi - https://ipapi.co<br>
&emsp; - vpnapi - https://vpnapi.io<br>
&emsp; - ipapi - https://ipapi.com<br>
• The ZMap Project - https://zmap.io<br>
• WiGLE - https://wigle.net<br>
• urlscan.io - https://urlscan.io<br>
• Virus Total - https://virustotal.com<br>
• Hybrid Analysis - https://hybrid-analysis.com<br>
• Cuckoo Sandbox - https://cuckoo.cert.ee<br>
• AlienVault OTX - https://otx.alienvault.com<br>
• IBM X-Force Exchange - https://exchange.xforce.ibmcloud.com<br>
• Cisco Talos - https://talosintelligence.com/reputation_center<br>
• Maltiverse - https://maltiverse.com/collection<br>
• GreyNoise - https://greynoise.io<br>
• SANS Internet Storm Center - https://isc.sans.edu<br>
• Intelligence X - https://intelx.io<br>
• MetaDefender Cloud - https://metadefender.opswat.com<br>
• RiskIQ Community Edition - https://community.riskiq.com/home<br>
• Pulsedive - https://pulsedive.com<br>
• Valhalla YARA Rules - https://valhalla.nextron-systems.com<br>
• ANY.RUN - https://any.run<br>
• Binvis - https://binvis.io<br>
• JoeSandbox - https://joesandbox.com<br>
• Verexif - https://verexif.com/en/<br>
• Reverse Shell Generator - https://revshells.com<br>
• Rainbow Tables (Hashes) - https://hashes.com/en/decrypt/hash<br>
• File Signatures ("Magic Numbers") - https://en.wikipedia.org/wiki/Magic_number_(programming)<br> 
• List of File Signatures - https://en.wikipedia.org/wiki/List_of_file_signatures<br>
• CyberChef - https://gchq.github.io/CyberChef<br>
• explainshell - https://explainshell.com<br>
• Epoch Converter - https://epochconverter.com<br>
• Regex - https://regex-generator.olafneumann.org</br>
• DeHashed - https://dehashed.com<br>
• Dencode - https://dencode.com<br>
• Commonly Used Software Development Tools - https://ctool.dev</br>
• Text Fixer - https://textfixer.com</br>
• SS64 Syntax Utils - https://ss64.com</br>
• Tools4noobs - https://tools4noobs.com</br>
• Text to ASCII Art Generator - https://patorjk.com/software/taag</br>
• Have I Been Pwned - https://haveibeenpwned.com<br>
• Name OSINT - https://namechk.com<br>
• Breach Directory - https://breachdirectory.org<br>
• MD5 Decrypt - https://md5decrypt.net/en/Sha1<br>
• DeepL - https://deepl.com/translator<br>

<br>
</details>

<details>
<summary><b>6.19 Fun</b></summary>
<br>

<h4>Steam OS</h4>

https://store.steampowered.com/steamos<br>

<h4>Linux distribution that transforms devices in consoles</h4>

https://batocera.org<br>

<!-- ########## -->

<br>
</details>

<!-- #################### -->

<details>
<summary><b>6.20 Tips and Tricks</b></summary>
<br>

<h4>Visualize folder tree</h4>

<code>$ sudo apt install tree</code>

<pre>
• List directories only
$ tree -d
• Control the depth of the tree  
$ tree -d -L 2 .
</pre>

<!-- ########## -->

<h4>Schedule a Shutdown in Command Line</h4>

<h6>Shutdown at specific time</h6>

<pre>
$ sudo shutdown -h 23:59
</pre>


<h6>Shutdown at specific date and time</h6>

<p>Since 24 hours (24×60=1440 minutes), you could adapt</p>

<pre>
$ sudo shutdown +1440
</pre>

<p>Execute shutdown +60 at a specific time and day:</p>

<pre>
$ sudo apt install at
$ sudo echo "shutdown +767" | at 08:46am 2024-09-11
</pre>

<!-- ########## -->

<h4>Set an Alarm from the Terminal</h4>

<pre>
$ sleep 5m && mpv alarm.mp3
</pre>

<!-- ########## -->

<h4>Use Terminal as a Stopwatch</h4>

<pre>
$ time cat
CTRL + C
</pre>

<!-- ########## -->

<h4>Commands for you to find large files</h4>

<pre>
$ df -h
$ df -h /home/$USER/Downloads
$ du -h ~/Downloads | sort -rh | head -n 10
$ find ~/Downloads -type f -size +3G -exec du -h {} + | sort -rh
$ find /home/$USER/Downloads -xdev -type f -size +1G
$ find . -size +1M  -printf "%p \t%k kb\n" | sort -k2n
</pre>

<!-- ########## -->

<h4>Editig text with sed in terminal</h4>

<p>Be cautious of using <code>-n</code>code> (quiet) with <code>-i</code> (in-place): the former disables aut in-place omatic printing of lines and the latter changes the file in-place without a backup. Make a backup before editing <code>-i.bak</code> .</p>

<code>$ sed --options [optional SCRIPT] [INPUT STREAM]</code>

<pre>
• Append line after match
$ sed  '/\option/a Hello World' *.txt
• Insert line before match
$ sed  '/\option\/i Hello World' *.txt
• Append text after a line for the specific match only
$ sed  '0,/\option\/a Hello World' *.txt 
• Append text before a line for the specific match only
$ sed  '0,/\option\/i Hello World' *.txt
• Inserting a text file
</pre>

<pre>
$ sed -i -e '1r text1' text2.txt
• If you want to append string in a multiline text
$ sed -i '/pattern/ r snippet.txt' filename
• Batch inserting specific text after pattern in .txt files
$ sed -i '/SearchPattern/aNew Text' *.txt
$ find . -name '*.txt' -exec sed -i -e 's/textp1/textp2\ text.txt/g' {} \;
</pre>

<pre>
• Replacement syntax
$ sed s/regexp/replacement/[flags]
• Replace closed with open on lines containing code
$ sed '/code/ s/closed/open/' text.txt 
• Replace all closed with open on lines containing code
$ sed '/code/ s/closed/open/g' text.txt
• Replace all occurrences of ‘hello’ to ‘world’ in the file input.txt:
$ sed ’s/hello/world/’ input.txt > output.txt
</pre>

<pre>
• Batch removing specific text in .txt files,
  the –i option tells to sed make the change
  in place, inside the file itself
$ sed -i 's/text//' *.txt
• Batch making a backup before editing the file,
  by specifying a suffix when using –i
$ sed -i.bak 's/word//' *.txt
</pre>

<pre>
• Convert Lowercase to Uppercase Characters
$ sed -i -e '/UPPERCASe/,$s/.*/\U&/' text.txt
$ sed 's/[a-z]/\U&/g' < ./myfile.txt
$ echo "HELLO WORLD " | sed 's/[A-Z]/\L&/g'
• Convert Uppercase to Lowercase  Characters
$ echo "hello world" | sed 's/[a-z]/\U&/g'
• Remove leading spaces and tabs from line
$ sed 's/^[ \t]*//' text.txt
• Remove all digits in a range
$ sed 's/\([a-z]*\).*/\1/' text.txt
</pre>

<pre>
*Note, in terminal:
Alt + u	Make uppercase from the cursor position to the end of the word.
Alt + l	Make lowercase from the cursor position to the end of the word/text.
</pre>

<pre>
• 
$ 
• 
$ 
</pre>

<!-- ########## -->

<h4>Reopen maximized browser</h4>

<p>To open maximized browser window use "--start-maximized" as a parameter.</p>

<pre>
$ nano /home/user/Desktop/browser.desktop

[Desktop Entry]
Exec=/usr/bin/browser --start-maximized %U
</pre>

<!-- ########## -->

<h4>Geting windows sizes in shell</h4>

<pre>
$ wmctrl -lG
</pre>

<!-- ########## -->

<h4>Change default editor for <code>visudo</code></h4>

<p>By default, Linux systems use the <code>$VISUAL</code> or <code>$EDITOR</code> environment variables (usually defined in your <code>~/.bashrc</code> file or <code>/etc/profile</code>) as the default editor the <a href="https://linux.die.net/man/8/visudo"><code>visudo</code></a> command. If you&#39;d prefer to use a different editor, such as <a href="https://nano-editor.org/">nano</a>, you can use either of these methods.</p>

<ol>
<li>To <strong>temporarily</strong> use a different editor, run:

<pre>
<code>
<span>$ </span>sudo EDITOR=<span>/path/to</span><span>/editor visudo</span>
</code>
</pre>

For example, to use <code>nano</code>, you would run:

<pre>
<code><span>$ </span>sudo EDITOR=nano visudo</code>
</pre>

</li>

<li> To <strong>permanently</strong> change the default editor, edit the <code>/etc/sudoers</code> file (you can use the <em>temporary</em> method above!) and add the following line to the file near the top, but <em>after</em> <code>Defaults env_reset</code>:

<pre>
<code>Defaults <span>editor</span>=/path/to/<span>editor</span></code>
</pre>

</li>
</ol>

<p><a href="https://unix.stackexchange.com/questions/4408/how-to-set-visudo-to-use-a-different-editor-than-the-default-on-fedora">Reference: https://unix.stackexchange.com/questions/4408/how-to-set-visudo-to-use-a-different-editor-than-the-default-on-fedora</a></p>

<!-- ########## -->

<h4>Test if a bash shell built-in command or external program package</h4>

http://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html
https://www.gnu.org/software/bash/manual/html_node/Shell-Builtin-Commands.html<br>
http://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_chap02.html#tag_02_04<br>
https://en.wikipedia.org/wiki/POSIX<br>
https://packages.debian.org/stable<br>
http://www.gsp.com/cgi-bin/man.cgi?section=1&topic=zshbuiltins<br>

<pre>
• Use type command
$ type -t cd
$ type -t ls
$ type -t test
$ type -t echo
$ type -t apt
$ type -t grep
$ type -t for
• Use builtin command 
$ builtin cd
$ builtin ls
$ builtin test
$ builtin echo
$ builtin apt
$ builtin grep
$ builtin for
• You can use the builtin command enable to show the list of builtin commands and their activation state
$ enable -a
</pre>

<p>Why use the built-in command? It does not depend on granting permissions to install packages, work on reduced sets like linux embedded hardwares (IoTs), reduces the attack surface and has better performance.</p>

<!-- ########## -->

<h4>Changing terminal command output language</h4>

<pre>
• For just a single command, from native language to english 
$ LC_ALL=C man ls
$ LC_ALL=C sudo apt update
</pre>

<!-- ########## -->

<h4>Grep - Global regular expression search</h4>

<pre>
• Commands
$ man find | grep -A 4 -- '-size'
• 
$ man find | grep -e '-size'
• 
$ 
• 
$ 
• 
$ 
</pre>

<!-- ########## -->

<br>
</details>

<hr>
<!--################################### -->

<h2>7. DEV SETUP</h2>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<details>
<summary><b>7.01 System Tweaks</b></summary>
<br>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/5.DEVELOPMENT">5.DEVELOPMENT</a></h4>

<h3>Sytem Tweaks</h3>

 <h5>∙ Terminal</h5>

 <h5>∙ Window Shortcuts</h5>

 <h5>∙ Passwords</h5>

 <h6>Mananger</h6>

 <h6>SSH</h6>

 <h5>∙ Interface</h5>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>7.02 IDEs</b></summary>
<br>

<h3>IDEs</h3>

<!-- ##### -->

<h4>• NeoVim</h4>

https://neovim.io<br>
https://neovim.io/doc/user/starting.html<br>
https://neovim.io/doc/user/usr_01.html#vimtutor<br>
https://github.com/neovim/nvim-lspconfig#suggested-configuration<br>
https://youtube.com/watch?v=RZ4p-saaQkc<br>
https://github.com/rockerBOO/awesome-neovim<br>
https://reddit.com/r/neovim<br>

<h5>∙ Setups</h5>
https://github.com/nvim-lua/kickstart.nvim<br>
https://github.com/LazyVim/LazyVim<br>
https://github.com/LunarVim/LunarVim<br>
https://github.com/NvChad/NvChad<br>
https://spacevim.org/<br>

<h5>∙ Plugins</h5>
https://siddharta.me/configuring-neovim-as-a-python-ide-2023.html<br>
https://thevaluable.dev/vim-php-ide/<br>

<!-- ##### -->

<h4>• VSCodium</h4>

https://github.com/VSCodium/vscodium<br>
https://reddit.com/r/vscodium<br>

 <h5>∙ Extensions</h5>

<!-- ##### -->

<h4>• Sublime-text ®</h4>

https://sublimetext.com/docs/linux_repositories.html<br>
https://reddit.com/r/sublimetext<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>7.03 Git & GitHub</b></summary>
<br>

<h3>Git & GitHub</h3>

<h4>• </h4>


<br>
</details>

<!-- #################### -->

<details>
<summary><b>7.04 Languages</b></summary>
<br>

<h3>Languages</h3>

 <h4>• Python</h4>
 
 <h4>• Go</h4>
 
 <h4>• PHP</h4>
 
 <h4>• Ruby</h4>


<br>
</details>

<!-- #################### -->

<details>
<summary><b>7.05 Others</b></summary>
<br>

<h3>Others</h3>

 <h4>• Deploy</h4>
 
 <h4>• Database</h4>
 
 <h4>• Projects Folder</h4>
 
 <h4>• Team</h4>

<br>
</details>

<hr>
<!--################################### -->

<h2>8. SYSADMIN</h2>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<details>
<summary><b>8.01 Sysadmin</b></summary>
<br>

<h4>Visit our repo tree: <a href="https://github.com/RENANZG/My-Debian-GNU-Linux/tree/main/6.SYSADMIN">6.SYSADMIN</a></h4>

<br>
</details>

<hr>
<!--################################### -->

<h2>9. TROUBLESHOOTING</h2>

👷🛠️UNDER CONSTRUCTION🚧🏗<br>

<details>
<summary><b>9.01 Linux Community</b></summary>
<br>

<h4>Linux Community</h4>

https://forums.debian.net<br>
https://forum.linuxfoundation.org<br>
https://docs.kernel.org<br>
https://linuxquestions.org<br>
https://superuser.com<br>
https://stackoverflow.com<br>
https://howtoforge.com<br>
https://unix.stackexchange.com<br>
https://security.stackexchange.com<br>
https://data.stackexchange.com<br>
https://elinux.org<br>
https://hardforum.com<br>
https://askubuntu.com<br>
https://snbforums.com<br>
https://reddit.com/r/debian<br>
https://reddit.com/r/linuxquestions<br>
https://reddit.com/r/sysadmin<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.02 Audit Logs</b></summary>
<br>

<h4>Audit Logs</h4>

<code>$ sudo dmesg --since -5m</code><br>
<code>$ sudo dmesg -w</code><br>
<code>$ sudo dmesg | grep iwl</code><br>
<code>$ sudo dmesg | grep rtw</code><br>
<code>$ sudo dmesg | grep ath</code><br><code>$ sudo dmesg -w</code><br>
<code>$ sudo dmesg -T | grep xhci</code><br>
<code>$ sudo dmesg -T | grep xhci</code><br>
<code>$ sudo journalctl -k -b -1</code><br>
<code>$ sudo journalctl -p 3 -xb</code><br>
<code>$ sudo journalctl -b | grep -i net</code><br>
<code>$ sudo journalctl -S -1h00m</code><br>
<code>$ sudo journalctl -S today</code><br>
<code>$ sudo journalctl -S today -u name.service</code><br>
<code>$ sudo journalctl -S "2024-01-01 00:00:00"</code><br>
<code>$ sudo journalctl -S "2024-01-01 00:00:00" > ~/journal.txt</code><br>
<code>$ sudo tail /var/log/syslog</code><br>
<code>$ sudo tail -n20 /var/log/syslog</code><br>
<code>$ sudo tail -f /var/log/syslog</code><br>
<code>$ head /home/pat/file.txt</code><br>
<code>$ head -n20 /home/pat/file.txt</code><br>

<h4>Terminal output in English</h4>

<p>To only run a single command in English, you can write the LANG=C directly in front of the command itself, e.g.</p>

<code>LANG=C sudo apt-get update</code><br>

<p>All program output will be in English. You can add a line</p>

<code>export LANG=C</code><br>

<p>to the end of your ~/.bashrc file and restart the terminal.</p>


<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.03 System Boot</b></summary>
<br>

https://wiki.debian.org/KernelHeaders<br>

<h4>Grub</h4>

<p>The simplest way to display your Grub is to press and hold the <code>shift</code> button while booting.</p>

<h4>System Boot</h4>

<h5>∙ Rescue Mode</h5>

<p>Debian Live in Rescue Mode</p>

<h5>∙ rEFInd (GUI)</h5>

<p>Download rEFInd rescue media</p>

https://rodsbooks.com/refind/getting.html<br>

<h5>∙ Grub customizer (GUI)</h5>

<code>$ sudo apt install grub-customizer</code><br>

<h4>∙ Restoring grub</h4>

<code>$ sudo cp /usr/share/grub/default/grub /etc/default/grub </code><br>
<code>$ sudo update-grub</code><br>
<code>$ sudo apt -f install</code><br>

<h4>∙ Menuentries debug</h4>

<code>$ sudo ls /boot</code><br>
<code>$ sudo ls -l /vmlinuz</code><br>
<code>$ sudo ls /boot | grep vmlinuz</code><br>
<code>$ sudo dpkg -l | grep grub</code><br>
<code>$ sudo dpkg -l | grep linux-image</code><br>
<code>$ sudo dpkg -l | grep linux-headers</code><br>
<code>$ sudo ls /sys/firmware</code><br>
<code>$ sudo cat /etc/default/grub</code><br>
<code>$ sudo cat /boot/grub/grub.cfg</code><br>
<code>$ sudo cat /boot/grub/grub.cfg | grep menuentry</code><br>
<code>$ sudo cat /boot/grub/grub.cfg | grep submenu</code><br>
<code>$ sudo cat /etc/grub.d</code><br>
<code>$ sudo cat /etc/grub.d/40_custom</code><br>

<h5>∙ Chroot</h5>

<code>$ sudo</code><br>

<h4>∙ Grub Issues</h4>

<p>Removable Medium Boot</p>

<code>$ sudo grub-install /dev/sdX -v --force-extra-removable</code><br>

<p>Cryptab</p>

<code>$ sudo nano /boot/grub/grub.cfg</code><br>

<pre>
GRUB_DISABLE_OS_PROBER=false
</pre>

<pre>
GRUB_ENABLE_CRYPTODISK=y
</pre>

<code>$ sudo update-grub</code><br>

<h4>Remove Old Kernels</h4>

<p>An easy way to remove old kernels is to use Synaptic Package Manager to search for "linux-image" and "linux-headers" and remove all except the version you are currently using.</p>

<h4>Not recommended</h4>

<code>$ sudo dpkg -l | grep linux-image</code><br>
<code>$ sudo dpkg -l | grep linux-headers</code><br>
<code>$ sudo rm /boot/*-4.18.0-{15,17}-*</code><br>
<code>$ sudo dpkg --configure -a</code><br>
<code>$ sudo apt install -f</code><br>
<code>$ sudo update-grub</code><br>
<code>$ sudo apt autoremove</code><br>
<code>$ sudo apt upgrade</code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.04 Display Manager and Monitors</b></summary>
<br>

<h4>Display Manager and Monitors</h4>

https://wiki.archlinux.org/title/Display_manager<br>
https://baeldung.com/linux/display-managers-install-uninstall<br>
https://github.com/sddm/sddm/releases<br>


<h4>Brightness</h4>

<code>$ sudo apt install -y brightnessctl</code><br>
<code>$ brightnessctl s 100%</code><br>
<code>$ brightnessctl s 70%</code><br>
<code>$ brightnessctl s 50%</code><br>

<h4>Environment variables</h4>

<p>Qt applications can be scaled with the following environment variables, note that many applications are hard-coding sizing and font and thus the result on such app may not be as expected.</p>

<code>$ export QT_AUTO_SCREEN_SET_FACTOR=0</code><br>
<code>$ export QT_SCALE_FACTOR=1</code><br>
<code>$ export QT_FONT_DPI=96</code><br>

<h4>Monitor and resolution</h4>

https://dpi.lv<br>

<code>$ sudo apt install arandr</code> (GUI)<br>
<code>$ sudo apt install xserver-xorg-input-all</code><br>

<p>Debug commands</p>

<code>$ sudo apt install inxi</code><br>
<code>$ sudo inxi -G</code><br>
<code>$ sudo inxi -Fxxrzc0</code><br>

<code>$ sudo xrandr --output eDP-1 --primary</code><br>
<code>$ sudo xrandr --output DP2 --auto --left-to DP1</code><br>
<code>$ sudo xrandr --output LVDS1 --panning 1920x1080 --scale 1.406x1.406</code><br>
<code>$ sudo xrandr --output LVDS1 --panning 1366x768 --scale 1x1 </code><br>

<p>You can make this change permanent for a specific user by adding this to the startup applications:</p>

<code>$ /usr/bin/xrandr --output LVDS1 --panning 1920x1080 --scale 1.406x1.406</code><br>

<p>*Firefox and Thunderbird - Advanced Settings</p>

<code>layout.css.devPixelsPerPx	0.8</code><br>

<h4>SSDM</h4>

<p>Debug commands</p>

<code>$ sudo systemctl status default.target</code><br>
<code>$ sudo systemctl status sddm.service</code><br>
<code>$ sudo systemctl list-unit-files | grep sddm</code><br>
<code>$ sudo ls -la /etc/systemd/system/display-manager.service</code><br>
<code>$ cat /proc/cmdline</code><br>
<code>$ sudo dpkg-reconfigure sddm</code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.05 Network</b></summary>
<br>

https://wiki.ubuntu.com/X/Debugging/WirelessWithoutX<br>
https://wireless.wiki.kernel.org/en/users/drivers/iwlwifi<br>
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/intel<br>
https://intel.com/content/www/us/en/support/articles/000005511/network-and-io/wireless.html<br>
https://wiki.archlinux.org/title/Power_management#USB_autosuspend<br>
https://docs.kernel.org/driver-api/usb/power-management.html<br>

<h4>Troubleshooting a network using OSI model, starting from physical to application layer.</h4>

<h4>First things first:</h4>

<code>$ sudo apt install firmware-realtek</code>
or
<code>$ sudo apt install firmware-iwlwifi</code>
or
<code>$ sudo apt install firmware-atheros</code>


<h4>• Network</h4>

<h5>∙ Debug WiFi</h5>

<code>$ ip link</code><br>
<code>$ nmcli device show</code><br>
<code>$ nmcli dev wifi</code><br>
<code>$ ping localhost</code><br>
<code>$ ping 8.8.8.8</code><br>
<code>$ traceroute 8.8.8.8</code><br>
<code>$ sudo ifconfig wlan0</code><br>
<code>$ sudo iwconfig wlan0</code><br>
<code>$ sudo dmesg | grep iwl</code><br>
<code>$ sudo dmesg | grep rtw</code><br>
<code>$ sudo dmesg | grep ath</code><br>
<code>$ sudo journalctl -b | grep -i net</code><br>

<p>Power up</p>

<code>$ sudo ifconfig eth0 up</code>

<h5>∙ Debug Hardware</h5>

<code>$ sudo lspci</code><br>
<code>$ sudo lspci -v -k</code><br>
<code>$ sudo lspci -v | grep Ethernet</code><br>
<code>$ sudo lspci -Knn | grep Net -A2</code><br>
<code>$ sudo lsusb</code><br>
<code>$ sudo apt install lshw</code><br>
<code>$ sudo lshw -C network</code><br>
<code>$ sudo apt install inxi</code><br>
<code>$ sudo inxi -Fxxz</code><br>

<p>*PCI vs USB - Kernel - Integrated chip - Need to investigate</p>

<p>Listing modules</p>

<code>$ sudo lsmod</code><br>
<code>$ sudo lsmod | grep iwl</code><br>
<code>$ sudo lsmod | grep rtw</code><br>
<code>$ sudo lsmod | grep ath</code><br>

<p>Module info</p>

<code>$ sudo modinfo rtw_8723d</code><br>

<h5>∙ Rfkill</h5>

<code>$ sudo apt install rfkill</code><br>

<pre>
&nbsp; Commands 
&nbsp; &nbsp;$ sudo rfkill list
&nbsp; &nbsp;$ sudo rfkill unblock wifi
</pre>

<h5>∙ Deactivating and Activating WiFi Firmware</h5>

<p>Deactivating module</p>

<code>$ sudo modprobe -vr rtw_8723d</code><br>
<code>$ sudo modprobe -vr rtw_core</code><br>

<p>Activating module</p>

<code>$ sudo modprobe -v rtw_core</code><br>
<code>$ sudo modprobe -v rtw_8723d</code><br>

<h5>∙ Power and suspend control</h5>

<code>$ sudo ls /etc/NetworkManager/conf.d</code><br>
<code>$ sudo touch /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf</code><br>
<code>$ sudo nano /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf</code><br>
<code>$ wifi.powersave = 2</code><br>

or

<code>$ sudo sed -i 's/3/2/' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf</code><br>

Notes:<br>
pcie_aspm.policy=powersasave<br>
pcie_aspm.policy=performance<br>
usbcore<br>

<h5>∙ Wifi stops workin after resume</h5>

<code>$ sudo touch /etc/modprobe.d/50-rtw-core.conf</code><br>
<code>$ sudo nano /etc/modprobe.d/50-rtw-core.conf</code><br>
<code>options rtw_core </code><br>
<code>$ sudo sudo modprobe -rv rtw_9999xy && sudo modprobe -v rtw_6666wz</code><br>

<code>$ sudo </code><br>
<code>$ sudo </code><br>
<code>$ sudo </code><br>

<h5>∙ DNS Issues</h5>

<code>$ ping -c 4 duckduckgo.com</code><br>
<code>$ nslookup duckduckgo.com</code><br>
<code>$ dig +trace +nodnssec duckduckgo.com</code><br>
<code>$ host duckduckgo.com</code><br>

<code>$ sudo resolvectl status</code><br>
<code>$ sudo cat /etc/resolv.conf</code><br>
<code>$ sudo cat /var/run/NetworkManager/resolv.conf</code><br>
<code>nmcli device show wlan0 | grep IP4.DNS</code> </code><br>

<code>$ sudo apt install resolvconf</code><br>
<code>$ sudo resolvconf --list</code><br>
<code>$ sudo resolvconf --enable-updates</code><br>
<code>$ sudo resolvconf -u</code><br>

<code>$ sudo apt install iproute2</code><br>
<code>$ sudo ss -nlup</code><br>
<code>$ sudo</code><br>

<pre>
• Syntax checks
$ sudo dnsmasq --test
• Print errors
$ sudo grep -c dnsmasq /var/log/*
$ sudo grep -c dnsmasq /var/log/syslog
$ sudo dnsmasq --no-daemon --log-queries=extra --log-dhcp --log-debug -C /etc/dnsmasq.conf
</pre>

<p>*Conflicts between dnsmasq and systemd-resolved</p>

<h5>∙ DHCP Issues</h5>

<code>$ sudo apt install tcpdump</code><br>

<code>$ sudo apt install nmap</code><br>

<code>$ sudo apt install wireshark</code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.06 USB Devices</b></summary>
<br>

https://wiki.ubuntu.com/Kernel/Debugging/USB<br>
https://wiki.archlinux.org/title/Power_management#USB_autosuspend<br>
https://docs.kernel.org/driver-api/usb/power-management.html<br>
https://wiki.debian.org/HowToIdentifyADevice/USB<br>
https://wiki.debian.org/HowToIdentifyADevice/PCI<br>
https://kernel.org/doc/html/latest/usb/index.html<br>
https://kernel.org/doc/html/v4.16/driver-api/usb/power-management.html<br>
UAS Issues - https://forums.raspberrypi.com/viewtopic.php?t=245931<br>

Bug - xhci_hcd 0000:15:00.0: WARN Set TR Deq Ptr cmd failed due to incorrect slot or ep state - https://bugzilla.kernel.org/show_bug.cgi?id=202541<br>
Bug - CPU hard lockup related to xhci/dma - https://bugzilla.kernel.org/show_bug.cgi?id=217242<br>
Bug - Debootstrap is very slow. Please use eatmydata to fix this. - https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=700633<br>

<p>Tip: If you are transferring large amounts of data via a problematic USB, use <code>grsync</code> as a manager.</p>

<h4>USB debug</h4>

<code>$ lsusb -t</code><br>
<code>$ lsusb -v</code><br>
<code>$ lsusb -v | grep 1111</code><br>
<code>$ usb-devices</code><br>
<code>$ sudo dmesg -w</code><br>
<code>$ sudo dmesg -T | grep xhci</code><br>
<code>$ sudo lspci -v | grep xhci</code><br>
<code>$ sudo grep -i xhci /boot/config-$(uname -r)</code><br>

<p>See usb device getting plugged in</p>

<code>$ sudo dmesg -wH</code><br>

<p>Firmware</p>

<code>$ sudo modinfo xhci_hcd</code><br>
<code>$ sudo modinfo ehci_hcd</code><br>
<code>$ sudo modinfo btusb</code><br>
<code>$ sudo modprobe -v ohci-pci</code><br>
<code>$ sudo modprobe -v ehci-hcd</code><br>
<code>$ sudo modprobe -v xhci-hcd</code><br>
<code>$ sudo modprobe -v xhci-pci</code><br>

<p>You may try to force your system to use USB 2.0 insted of USB 1.1:</p>

<code>$ sudo modprobe -vr ohci-pci</code><br>
<code>$ sudo modprobe -v ehci-hcd</code><br>

<p>Deactivate</p>

<code>$ sudo modprobe -vr xhci-hcd</code><br>
<code>$ sudo modprobe -vr xhci-pci</code><br>

<p>Activate</p>

<code>$ sudo modprobe -v xhci-hcd</code><br>
<code>$ sudo modprobe -v xhci-pci</code><br>

<p>Power and suspend control</p>

<code>$ sudo cat /etc/tlp.conf</code>
<code>$ grep . /sys/bus/usb/devices/*/power/autosuspend</code><br>
<code>$ grep . /sys/bus/usb/devices/*/power/control</code><br>
<code>$ grep . /sys/bus/usb/devices/*/power/wakeup</code><br>

<h4>If your keyboard and mouse, etc stop working sometimes, see if power manager is affecting you, execute this command:</h4>

<code>$ cat /sys/module/usbcore/parameters/autosuspend</code><br>

<p>You're affected If you get back a "2". To disable it simply writing a -1 to that file, as root:</p>

<code>$ sudo su</code><br>

<code># echo -1 > /sys/module/usbcore/parameters/autosuspend</code><br>

<p>To make the change permanent, edit</p>

<code>$ sudo nano /etc/default/grub</code><br>

<p>and add</p>

<code>usbcore.autosuspend=-1</code><br>

<p>to the end of the command in GRUB_CMDLINE_LINUX_DEFAULT</p>

<code>GRUB_CMDLINE_LINUX_DEFAULT="quiet usbcore.autosuspend=-1"</code><br>

<p>and update grub</p>

<code>$ sudo update-grub</code><br>

<p>Alternativelly:</p>

<code>$ sudo perl -p -i.bak -n -e '{GRUB_CMDLINE_LINUX_DEFAULT} s/"$/ usbcore.autosuspend=-1"/'  /etc/default/grub</code><br>

<code>$ sudo update-grub</code><br>

<h5>UAS Issues</h5>

https://forums.raspberrypi.com/viewtopic.php?t=245931<br>

<p>Symptoms of a misbehaving UAS device</p>

• Slow transference<br>
• Frequent disconnects-reconnects<br>
• Dmesg reports errors relating to a UAS device.<br>

<p>Solving</p>

<p>Plug in the USB device(s) and run the command dmesg</p>

<code>$ sudo dmesg --since -2m</code><br>

<p>Take note of the VID (idVendor) and PID (idProduct) of your USB device(s)</p>

<pre>
(...)
[ 4906.696463] usb 2-1: New USB device found, idVendor=1111, idProduct=2222, bcdDevice=c3.33
(...)
</pre>

<p>Add the quirks to /boot/cmdline.txt</p>

<code>$ sudo nano /boot/cmdline.txt</code><br>

<p>Add the text with your idVendor and idProduct, respectively.

<pre>
usb-storage.quirks=1111:2222:u
</pre>

<pre>
usb-storage.quirks=4444:5555:u,6666:7777:u.,8888:9999:u
</pre>

<p>Reboot</p>

<code>$ sudo reboot</code><br>

<p>Check</p>

<code>$ sudo dmesg | grep usb-storage</code><br>

<h5>udisks2.service</h5>

<code>$ sudo systemctl status udisks2.service</code><br>
<code>$ sudo apt install libblockdev-crypto2 libblockdev-mdraid2 --no-install-recommends</code><br>

<h5>intel_iommu=off</h5>


<h5>legacy USB</h5>

<p>Into bios, have usb 3.0 turned on, an any other options turned on, but turn off legacy usb option.But think that after legacy USB disabling, in some cases, you could lost ability to enter your BIOS, if you have USB keyboard, because your keyboard will not work at the moment when you need to press DEL or F2 or whatever.</p>

<h5>Mouse</h5>

https://github.com/sriemer/fix-linux-mouse<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.07 Bluetooth</b></summary>
<br>

<h4>Bluetooth</h4>

https://wiki.archlinux.org/title/Bluetooth<br>
https://wiki.archlinux.org/title/Bluetooth#Troubleshooting<br>
https://wiki.debian.org/BluetoothUser<br>
https://wiki.debian.org/Bluetooth/Alsa<br>
https://github.com/Arkq/bluez-alsa<br>

<h5>First things first:</h5>

<code>$ sudo apt install firmware-realtek</code><br>
or
<code>$ sudo apt install firmware-iwlwifi</code><br>
or
<code>$ sudo apt install firmware-atheros</code><br>


<h5>Audio compatibility</h5>

<code>$ sudo apt install pulseaudio-module-bluetooth</code><br>
or
<code>$ sudo apt install bluez-alsa-utils</code><br>

<p>Debug</p>

<code>$ sudo service bluetooth status</code><br>
<code>$ hciconfig -a</code><br>
<code>$ hciconfig hci0</code><br>
<code>$ sudo dmesg | grep Bluetooth</code><br>
<code>$ sudo dmesg | grep iwl</code><br>
<code>$ sudo dmesg | grep rtl</code><br>
<code>$ sudo dmesg | grep ath</code><br>

<h5>Connecting Bluetooth</h5>

<pre>
&nbsp; Commands 
&nbsp; &nbsp; • Connecting bluetooth manualy with Bluez
&nbsp; &nbsp; $ bluetoothctl
&nbsp; &nbsp; [bluetooth]# scan on
&nbsp; &nbsp; [bluetooth]# pair xx:xx:xx
&nbsp; &nbsp; [bluetooth]# connect xx:xx:xx 
&nbsp; &nbsp; [bluetooth]# trust xx:xx:xx 
&nbsp; &nbsp; [bluetooth]# block yy:yy:yy
</pre>

<h5>Bluetooth Managment</h5>

<pre>
&nbsp; Commands 
&nbsp; &nbsp; • Bluetooth managment
&nbsp; &nbsp; $ btmgmt
&nbsp; &nbsp; [btmgmt]# info
</pre>

<h5>Bluetooth Audio ALSA Backend (bluealsa)</h5>

https://github.com/arkq/bluez-alsa/wiki/Bluetooth-Pairing-And-Connecting<br>

<code>$ sudo apt install bluez-alsa-utils</code><br>


<h5>Mouse</h5>

https://github.com/sriemer/fix-linux-mouse<br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.08 Sound</b></summary>
<br>

https://wiki.ubuntu.com/DebuggingSoundProblems<br>
https://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture<br>
https://wiki.archlinux.org/title/PulseAudio/Troubleshooting<br>
https://thesofproject.github.io/latest/getting_started/intel_debug/suggestions.html<br>
https://wiki.debian.org/Sound<br>
https://wiki.debian.org/SoundConfiguration<br>
https://alsa-project.org<br>
https://github.com/thesofproject/sof/issues<br>
https://github.com/thesofproject<br>

<h4>First things first:</h4>

<code>$ sudo apt install firmware-sof-signed</code>
<code>$ sudo apt install firmware-intel-sound</code>

<h4>Debug commands</h4>

<p>List of PLAYBACK Hardware Devices</p>

<code>$ aplay -l</code><br>
<code>$ lspci |grep -i audio</code><br>
<code>$ cat /proc/asound/cards</code><br>
<code>$ cat /proc/asound/card*/id</code><br>

<p>List of CAPTURE Hardware Devices</p>

<code>$ arecord -l</code><br>

<h4>Testing</h4>

<code>$ speaker-test</code><br>

<h4>Other debug commands</h4>

<code>$ cat /proc/asound/cards</code><br>
<code>$ cat /proc/asound/modules</code><br>
<code>$ lspci -v | grep Audio</code><br>
<code>$ lsusb</code><br>
<code>$ lsmod | grep snd</code><br>
<code>$ aplay -lL</code><br>
<code>$ amixer</code><br>
<code>$ amixer -c0</code><br>
<code>$ sudo dpkg-reconfigure linux-sound-base</code><br>
<code>$ sudo alsa-info</code><br>

<h4>ALSA</h4>

<p>The "Advanced Linux Sound Architecture" (ALSA) is a part of the Linux kernel. PulseAudio is a sound server that sits between ALSA and user applications, aiming to provide easy automatic sound configuration for users. PulseAudio controls underlying ALSA-level volume controls.</p>

<code>$ sudo apt install alsa-utils</code><br>
<code>$ alsamixer</code><br>
<code>$ amixer -c 0 set Master 100%</code><br>
<code>$ amixer -c 1 set Speaker 50%</code><br>
<code>$ amixer -c 1 set Speaker 3db</code><br>
<code>$ amixer -c 1 set Speaker 2db+</code><br>
<code>$ amixer -c 0 set Mic unmute</code><br>
<code>$ sudo nano /etc/pulse/default.pa</code><br>

<h4>PulseAudio Volume Control</h4>

<p>Allows you to control both the volume of hardware devices and of each playback stream separately. It also allows you to redirect a playback stream to another output device.</p>

<code>$ sudo apt install pavucontrol</code><br>

<h4>Advanced solution</h4>

<p>Install the SOF firmware binaries from the source: https://github.com/thesofproject/sof-bin</p>

<p>Clone the repository:</p>

<code>$ git clone https://github.com/thesofproject/sof-bin.git</code><br>

<p>Change to directory: </p>

<code>$ cd sof-bin</code><br>

<p>Follow: https://github.com/thesofproject/sof-bin#install-process-with-installsh </p>

<code>$ sudo mv /lib/firmware/intel/sof* some_backup_location/</code><br>

<code>$ sudo mv /usr/local/bin/sof-*     some_backup_location/ # optional </code><br>

<code>$ sudo ./install.sh v2.2.x/v2.2</code><br>

<p>Reboot</p>

<code>$ sudo reboot</code><br>


<h4>"Apollo Lake" platform</h4>

https://thesofproject.github.io/latest/getting_started/intel_debug/suggestions.html#es8336-support<br>

<p>Check your kernel configuration, typically available as a /boot/config-*. These options below will allow you to use Sound Open Firmware, start with:</p>

<code>$ grep SND_SOC_INTEL_APL /boot/config-*</code><br>

<p>For your system you could select:</p>

<pre>
ALSA for SoC audio support (CONFIG_SND_SOC=m)
Intel ASoC SST drivers (CONFIG_SND_SOC_INTEL_SST_TOPLEVEL=y)
and the appropriate platform option, which in your case would be "Broxton/ApolloLake platforms" (CONFIG_SND_SOC_INTEL_APL=m)
</pre>

<p>Others options:</p>

<pre>
Sound Open Firmware support (CONFIG_SND_SOC_SOF_TOPLEVEL=y)
SOF support for Intel Audio DSPs (CONFIG_SND_SOC_SOF_INTEL_TOPLEVEL=y)
SOF PCI enumeration support (CONFIG_SND_SOC_SOF_PCI=m)
SOF support for Apollolake (CONFIG_SND_SOC_SOF_APOLLOLAKE_SUPPORT=m)
SOF support for HDA Links (HDA/HDMI) (CONFIG_SND_SOC_SOF_HDA_LINK=y)
SOF support for HDAudio codecs (CONFIG_SND_SOC_SOF_HDA_AUDIO_CODEC=y)
</pre>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.09 Printers</b></summary>
<br>

<h4>Printers</h4>

https://wiki.debian.org/SystemPrinting<br>
https://wiki.ubuntu.com/DebuggingPrintingProblems<br>

<h5>∙ HP</h5>

https://developers.hp.com/hp-linux-imaging-and-printing/install/manual/distros/debian<br>
https://wiki.debian.org/InstallingDebianOn/HP<br>
https://developers.hp.com/hp-linux-imaging-and-printing<br>

<code>$ sudo apt install hplip</code><br>

<h5>∙ EPSON</h5>

https://epson.com/Support/wa00821<br>

<code>$ sudo apt install </code><br>

<h5>∙ Wireless Firewall Ports</h5>

<code>$ </code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.10 Keyboard</b></summary>
<br>

https://pubs.opengroup.org/onlinepubs/7908799/xbd/envvar.html#tag_002_002<br>

<h4>Keyboard debug</h4>

<code>$ locale</code><br>
<code>$ locale -a</code><br>

<h4>Reset Layout</h4>

<code>$ sudo dpkg-reconfigure keyboard-configuration</code><br>
<code>$ sudo service keyboard-setup restart</code><br>
<code>$ sudo update-initramfs -u</code><br>

<h4>Accents not working</h4>

<p>Can't type accented letters in certain programs.</p>

<code>$ </code><br>

<h4>Assign Home and End to Fn + Arrows</h4>

https://superuser.com/questions/428945/defining-keyboard-shortcuts-involving-the-fn-key<br>

https://superuser.com/questions/1069211/assign-home-and-end-to-fnarrows<br>

<code>$ </code><br>

<h4>Remap Apple Magic Keyboard</h4>

https://github.com/dongjinleekr/hid-apple-numberless-ko<br>
https://github.com/isakhauge/nor-apple-keyboard-xmodmap<br>

<br>
</details> 

<!-- #################### -->

<details>
<summary><b>9.11 Locales and Time/Date</b></summary>
<br>

https://man7.org/linux/man-pages/man1/locale.1.html<br>
https://linuxfromscratch.org/lfs/view/stable-systemd/chapter09/locale.html<br>
https://pubs.opengroup.org/onlinepubs/7908799/xbd/envvar.html#tag_002_002<br>

<h3>Locales</h3>

<code>$ locale</code><br>
<code>$ sudo apt reinstall locales</code><br>
<code>$ sudo locale-gen</code><br>
<code>$ sudo locale-gen en_US.UTF-8</code><br>
<code>$ sudo dpkg-reconfigure locales</code><br>
<code>*Logoff</code><br>

<h4>If locale-gen had not results</h4>

<code>$ locale</code><br>
<code>$ export LANGUAGE=en_US.UTF-8</code><br>
<code>$ export LC_ALL=en_US.UTF-8</code><br>
<code>$ export LANG=en_US.UTF-8</code><br>
<code>$ export LC_CTYPE=en_US.UTF-8</code><br>

<p>Even no results</p>
<code>$ export LC_ALL="C.UTF-8"</code><br>
<code>$ sudo dpkg-reconfigure locales</code><br>

<p>Even no results</p>
<pre>
In /etc/locale.gen, uncommenting the line:
en_US.UTF-8 UTF-8 then running:
locale-gen
</pre>

<h4>Switch terminal command output</h4>

UNDER TEST! NOT FULL TESTED!

http://manpages.ubuntu.com/manpages/trusty/man7/locale.7.html<br>

</pre>
• Defitenelly change output language from native language to english
$ env
$ env | egrep -e 'LC_ALL|LANG'
$ cat ~/.bashrc
$ cat ~/.bash_profile
$ LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 LANGUAGE=en_US.UTF-8 $SHELL
</pre>

<p>Bash function for terminal</p>

<p>Switching between DE and EN locales. Put it in your ~/.bashrc (or ~/.bash_profile).</p>

<p>Call it with <code>_configure_locale</code> EN to switch to English.</p>

<pre>
function _configure_locale() { # [profile]
    local profile=${1:-EN}
    case ${profile} in
      DE|DE_DE|de_DE)
          LC_ALL="de_DE.UTF-8"
          LANG="de_DE.UTF-8"
          LANGUAGE="de_DE:de:en_US:en"
          ;;
      EN|EN_US|en|en_US)
          LC_ALL="en_US.UTF-8"
          LANG="en_US.UTF-8"
          LANGUAGE="en_US:en"
          ;;
      *)
          echo "ALERT" "${FUNCNAME}: unknown profile '${profile}'"
          ;;
      esac
      LC_PAPER="de_DE.UTF-8"; # independent from locale
      LESSCHARSET="utf-8";    # independent from locale
      MM_CHARSET="utf-8"      # independent from locale
      echo "locale settings" "${LANG}";
      export LC_ALL LANG LANGUAGE LC_PAPER LESSCHARSET MM_CHARSET
}
</pre>


<h3>Time and Date</h3>

<h4>Control the system time and date</h4>

<code>$ timedatectl</code><br>
<code>$ tzselect</code><br>

<h4>How Reconfigure time and date</h4>

<code>$ sudo dpkg-reconfigure tzdata</code><br>

<h4>NTP</h4>

<code>$ sudo apt install ntpdate && ntpdate in.pool.ntp.org && dpkg-reconfigure tzdata</code><br>

<h5>∙ Coordinated Universal Time - UTC-00:00</h5>

<code>$ </code><br>

<h5>∙ Greenwich Mean Time - GMT</h5>

<code>$ </code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.12 Torrenting</b></summary>
<br>

<h4>General debug</h4>

<pre>
1. Resetting qBittorrent / trying another torrent client
2. Trying another device on same network
3. Trying ethernet instead of Wi-Fi
4. Trying downloading to external storage rather than SSD
5. Stopping all running apps/services in background
6. Running speed tests to see if it also happens outside torrenting
</pre>

<h4>Download speed fluctuations and near zero uploading, speed spikes</h4>

<h5>Possible causes</h5>
   
<pre>
1. Your external disk case, awful flash drive or internal SSD just not being able to handle the simultaneous writes and reads.
2. Your VPN limiting you bandwidth.
3. Your ISP throttling. Torrent traffic throttled even through a VPN.
</pre>

<h5>Possible solutions</h5>

<p>Disk Benchmarks Test</p>
<code>$ sudo apt install gnome-disk-utility</code><br>

<p>For your ISP throttle, try your VPN Obfuscated Servers or P2P Servers.</p>

<p>Do a Leak Test</p>

<a href="https://dnsleaktest.com/">∙ DNSLeakTest.com</a> (run the "Extended test")<br>
<a href="https://ipleak.net/">∙ IPLeak.net</a><br>

<code>curl ipleak.net/json/</code><br>
<code>curl ipinfo.io</code><br>

<p>Alternativelly, begin to VPN+Torrent on PC, wait until throttling begins. Try to play back a 1080p video on your smartphone, try to choose one where you can see the quality difference (for example one with many text elements such as computer hardware benchmarks). A 1080p video needs about 1-2Mbps (250KB/s) bandwidth.</p>

<p>Instead you can try to download something on the phone. This is to find out if it's an issue VPN server/software or with your ISP line as a whole. It's possible for your ISP to only throttle the connection to the VPN server and leave the rest alone.</p>

<h4>Problem 2</h4>

<code>$ sudo </code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.13 Disks</b></summary>
<br>

https://wiki.debian.org/SSDOptimization<br>
https://wiki.archlinux.org/title/Solid_state_drive<br>

<!-- ########## -->

<h4>Disk managers</h4>

<h5>GParted</h5>

<code>$ sudo apt install gparted</code><br>

<h5>Gnome Disk - "Disks"</h5>

<code>$ sudo apt install gnome-disk-utility</code><br>

<!-- ########## -->

<h4>Disk manager with LVM support</h4>

<h5>KDE Partition Manager</h5>

<code>$ sudo apt install partitionmanager</code><br>

<!-- ########## -->

<h4>Disk debug</h4>

<pre>
$ dmesg -T | grep xhci
$ lsusb -tv
</pre>

<pre>
&nbsp; Commands for fdisk
&nbsp; &nbsp; • EXT - Badblock:
&nbsp; &nbsp; $ sudo fdisk -l /dev/sdb
&nbsp; &nbsp; • *NTFS - Badblock:
&nbsp; &nbsp; $ sudo e2fsck -p /dev/sde1
&nbsp; &nbsp; $ sudo e2fsck -c
&nbsp; &nbsp; $ sudo e2fsck -l /dev/sdb1 /badblock/file
</pre>

<h4>Disk Utilities</h4>

<h5>TESTDISK</h5>

https://cgsecurity.org/wiki/TestDisk<br>

<h5>SMARTMONTOOLS</h5>

<code>$ sudo apt install smartmontools</code><br>

<pre>
&nbsp; Commands for smartmontools
&nbsp; &nbsp; • How to :
&nbsp; &nbsp; $ sudo smartctl -a /dev/sda
</pre>

<h5>HDPARM</h5>

<code>$ sudo apt install hdparm</code><br>

<pre>
&nbsp; Commands for hdparm
&nbsp; &nbsp; • How to :
&nbsp; &nbsp; $ sudo hdparm -I /dev/sda
</pre>

<h5>KDISKMARK</h5>

<code>$ sudo apt install -y kdiskmark</code><br>

<h5>DEBUGFS</h5>

<code>$ sudo debugfs</code><br>

<br>
</details>

<!-- #################### -->

<details>
<summary><b>9.14 Hardware</b></summary>
<br>

<h4>Hardware Utilities</h4>

<code>$ sudo apt install lshw</code><br>
<code>$ sudo apt install inxi</code><br>
<code>$ sudo apt install cpu-x</code><br>
<code>$ sudo apt install hardinfo</code><br>
<code>$ sudo apt install s-tui stress</code><br>

<br>
</details>

<hr>

<!--################################### -->

<h2>10. OTHERS</h2>

<details>
<summary><b>10.01 Some Links</b></summary>
<br>

<h4>Links</h4>

https://creativecommons.org<br>
https://fsf.org<br>
https://fsfe.org<br>
https://gnu.org<br>
https://iec.ch/cyber-security<br>
https://iso.org/standards.html<br>
https://linuxfoundation.org<br>
https://linuxfromscratch.org<br>
https://man7.org<br>
https://nist.gov/standards<br>
https://opengroup.org<br>
https://opensource.com<br>
https://opensource.org<br>
https://todogroup.org<br>

<h4>YouTube Links</h4>

https://youtube.com/@DebConfVideos<br>
https://youtube.com/@BlackHatOfficialYT<br>
https://youtube.com/@DEFCONConference<br>
https://youtube.com/@mediacccde<br>
https://youtube.com/@DFRWS<br>
https://youtube.com/@44contv<br>
https://youtube.com/@secwestnet<br>
https://youtube.com/@EkopartyConference<br>
https://youtube.com/@reconmtl<br>
https://youtube.com/@TROOPERScon<br>

<h4>Linux Blogs</h4>

https://0pointer.net/blog/<br>
https://blog.carsoncheng.ca<br>
https://dwarmstrong.org<br>
https://fabianlee.org<br>
https://itsfoss.com<br>
https://lwn.net<br>
https://linux-tips.us<br>
https://linuxcnf.com<br>
https://linuxconfig.org<br>
https://linuxhandbook.com<br>
https://linuxiac.com<br>
https://linuxinsider.com<br>
https://linuxsecurity.com<br>
https://ostechnix.com<br>
https://programmerall.com<br>
https://slant.co<br>
https://techviewleo.com<br>
https://tqdev.com<br>
https://vitux.com<br>

<h4>Others</h4>

• chttps://en.wikiversity.org/wiki/Open_Educational_Resources/Open_Courses<br>
• https://en.wikiversity.org/wiki/Open_Educational_Resources/Open_Textbooks<br>
• https://freecomputerbooks.com<br>
• http://www.freetechbooks.com<br>
• https://www.ibiblio.org/kuphaldt/electricCircuits<br>
• https://www.electronics-tutorials.ws<br>
• https://riptutorial.com/ebook<br>
• https://shellcheck.net<br>
• https://shellscript.sh<br>
• https://shellhacks.com<br>
• https://explainshell.com<br>
• https://regular-expressions.info<br>
• https://notrace.how<br>
• https://anarsec.guide<br>
• https://0x00sec.org<br>

<br>
</details>

<br>

<!--################################### -->

<p align="right"><a href="https://github.com/RENANZG/My-Debian-GNU-Linux?tab=readme-ov-file#">Back to Top ⬆</a></p>

<!--################################### -->

<div id="footer">

<br>
<br>
<br>

<p align="center">Made with ♥</p>
</div>

<!--################################### -->

</body>
</html>
