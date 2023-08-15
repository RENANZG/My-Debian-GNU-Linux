## SYSTEM BASICS

### System Hardening Must Have
<table>
  <tr>
   <td><a href="https://anonymousplanet.org/" target="_blank"><b>Anonymous Planet</b> - The Hitchhiker’s Guide</a><a href="https://anonymousplanet.org/export/guide.pdf" target="_blank">&nbsp(PDF)</a></td>
   <td><a href="https://www.virustotal.com/gui/home/upload" target="_blank"><b>Virus Total</b> - Free virus, malware and URL online scanning</a></td>
  </tr>
   <tr>
  <td><a href="https://www.whonix.org/wiki/Essential_Host_Security" target="_blank"><b>Whonix</b> - Essential Host Security</a></td>
  <td><a href="https://github.com/PartialVolume/shredos.x86_64" target="_blank"><b>ShredOS</b> - Secure disk erasure/wipe</a></td>
  </tr>
  <tr>
  <td><a href="https://www.whonix.org/wiki/System_Hardening_Checklist" target="_blank"><b>Whonix</b> - System Hardening Checklist</a></td>
  <td><a href="https://cryptomator.org/" target="_blank"><b>Cryptomator</b> - Put a lock on your cloud</a></td>
  </tr>
  <tr>
  <td><a href="https://www.kicksecure.com/wiki/Documentation" target="_blank"><b>Kicksecure</b> - Documentation</a></td>
  <td></td>
  </tr>
  <tr>
  <td><a href="https://www.cisecurity.org/benchmark/debian_linux" target="_blank"><b>CIS Benchmark</b> - Debian Linux Guides</a></td>
  <td></td>
  </tr>
  <tr>
  <td><a href="https://www.nsa.gov/Press-Room/Cybersecurity-Advisories-Guidance" target="_blank"><b>NSA GOV</b> - Cybersecurity Advisories & Guidance</a><a href="https://github.com/nsacyber" target="_blank">&nbsp(GitHub)</a></td>
  <td></td>
  </tr>
  <tr>
  <td><a href="https://www.nist.gov/cyberframework" target="_blank"><b>NIST GOV</b> - Cybersecurity Framework</a></td>
  <td></td>
  </tr>
</table>

### Essential Tools
<table>
  <tr>
    <td><a href="https://www.ventoy.net/en/download.html" target="_blank"><b>1. Ventoy</b></a></td>
    <td><a href="https://www.ventoy.net/en/doc_secure.html" target="_blank">(Secure Boot)</a></td>
    <td><a href="https://www.ventoy.net/en/download.html" target="_blank">(Checksums)</a></td>
     <td><a href="https://tails.net/news/new_domain/index.en.html" target="_blank"><b>6. Tails</b></a></td>
    <td><a href="" target="_blank">(Secure Boot)</a></td>
    <td><a href="" target="_blank">(Checksums)</a></td>
  </tr>
<tr>
   <td><a href="http://www.rodsbooks.com/refind/getting.html" target="_blank"><b>2. rEFInd</b></a></td>
    <td><a href="http://www.rodsbooks.com/refind/secureboot.html" target="_blank">(Secure Boot)</a></td>
    <td><a href="https://sourceforge.net/p/refind/code/ci/master/tree/" target="_blank">(Checksums)</a></td> 
    <td><a href="https://www.kali.org/get-kali/#kali-installer-images" target="_blank"><b>7. KaliLinux</b></a></td>
    <td><a href="" target="_blank">(Secure Boot)</a></td>
    <td><a href="" target="_blank">(Checksums)</a></td>
  </tr>
 <tr>
     <td><a href="https://clonezilla.org/downloads.php" target="_blank"><b>3. Clonezilla</b></a></td>
    <td><a href="https://clonezilla.org/downloads.php" target="_blank">(Secure Boot)</a></td>
    <td><a href="https://clonezilla.org/downloads.php" target="_blank">(Checksums)</a></td>
    <td><a href="https://www.openpgp.org/software/" target="_blank"><b>8. OpenPGP</b></a></td>
    <td><a href="https://github.com/OpenPGP/openpgp.org" target="_blank">(Git Hub)</a></td>
    <td><a href="https://keys.openpgp.org/" target="_blank">(Checksums)</a></td>
  </tr>
  <tr>
    <td><a href="https://gparted.org/livecd.php" target="_blank"><b>4. GParted</b></a></td>
    <td><a href="https://gparted.org/download.php" target="_blank">(Secure Boot)</a></td>
    <td><a href="https://gparted.org/gpg-verify.php" target="_blank">(Checksums)</a></td>
    <td><a href="" target="_blank"></a></td>
    <td><a href="" target="_blank"></a></td>
    <td><a href="" target="_blank"></a></td>
  </tr>
  <tr>
    <td><a href="https://github.com/PartialVolume/shredos.x86_64" target="_blank"><b>5. ShredOS</b></a></td>
    <td><a href="" target="_blank">(Secure Boot)</a></td>
    <td><a href="" target="_blank">(Checksums)</a></td>
    <td><a href="" target="_blank"></a></td>
    <td><a href="" target="_blank"></a></td>
    <td><a href="" target="_blank"></a></td>
   </tr>
</table>

How to check the iso file (SHA256SUMS)  
https://www.gnu.org/software/coreutils/manual/html_node/Summarizing-files.html  
<details>
<summary>Manual method</summary>  
The SHA-256 checksum hashes in a file called SHA256SUMS in the same directory listing as the download page.  
First open a terminal and go to the correct directory to check a downloaded iso file:  
cd download_directory  
Then run the following command from within the download directory.  
sha256sum name.iso  
sha256sum should then print out a single line after calculating the hash:  
sdd31231c0421be56f39c7a31245c423fgcc3b048ds321a3e83d2c4d714fa9a76 *name.iso  
Compare the hash (the alphanumeric string on left) that your machine calculated with the corresponding hash in the SHA256SUMS file.  
</details>

</table>
<details>
<summary>Semi-automatic method</summary>  
First download the SHA256SUMS and SHA256SUMS.gpg files to the same directory as the iso. Then run the following commands in a terminal.  
cd download_directory  
sha256sum -c SHA256SUMS 2>&1 | grep OK  
The sha256sum line should output a line such as:  
name.iso: OK  
If the OK for your file appears, that indicates the hash matches.  
</details>  

## SYSTEM INSTALLATION 

### ◼️ Hardware

**Points to check**  
1.Security  
2.Compatibility  
3.Performance  
4.Cost benefit  

### ◼️ Installation  

**Installation Guide**  
Linux on UEFI:A Quick Installation Guide  
http://www.rodsbooks.com/linux-uefi/  
Linux Dabbler - Scripts to run after installing debian  
https://github.com/linuxdabbler/debian-install-scripts  
Nilsmeyer - An ansible role for bootstrapping new Debian based systems, including setting up partitions, file systems, encryption (luks), RAID and LVM  
https://github.com/nilsmeyer/ansible-debootstrap  
**Partitioning scenarios: advantages and disadvantages**  
https://wiki.archlinux.org/title/dm-crypt/Encrypting_an_entire_system  
https://wiki.archlinux.org/title/dm-crypt/Device_encryption#top-page   

**Encryption** 

<details>
<summary>Key File in Debian 12 (Bookworm) References</summary>  
<ul>
 <li>https://github.com/aomgiwjc/Unix-Bootstrap-Installs/wiki/Debian-BTRFS-Luks-Encryption-Installation-Method---Jan.-2023</li>
<li>https://cloudkid.fr/unlock-a-luks-partition-with-a-usb-key</li>
<li>https://blog.fidelramos.net/software/unlock-luks-usb-drive</li>
<li>https://tqdev.com/2022-luks-with-usb-unlock</li>
<li>https://www.willhaley.com/blog/unlock-luks-volumes-with-usb-key</li>
<li>https://www.dwarmstrong.org/fde-debian</li>
<li>https://www.cyberciti.biz/hardware/cryptsetup-add-enable-luks-disk-encryption-keyfile-linux</li>
<li>https://github.com/aomgiwjc/Unix-Bootstrap-Installs.wiki.git</li>
</ul>
</details>  

## Debian Secure Boot 

<details>
<summary><b>Introduction</b></summary>  
    "Most modern systems will ship with SB enabled - they will not run any unsigned code by default, but it is possible to change the firmware configuration to either disable SB or to enroll extra signing keys." "The whole point of Secure Boot is to prevent malware from gaining control of the computer. Therefore, when booting with Secure Boot active, Fedora 18 and later, Ubuntu 16.04 and later, and probably other distributions restrict actions that some Linux users take for granted. For instance, Linux kernel modules must be signed, which complicates use of third-party kernel drivers, such as Nvidia's and AMD/ATI's proprietary video drivers. More recent kernels may, if Secure Boot is active, also check that they were launched from a boot loader that honors Secure Boot, and shut down if this was not the case.    
    To launch a locally-compiled kernel, you must sign it with a MOK and register that MOK with the system. (In both cases, you can register a hash rather than sign the binary; but this approach results in an ever-growing database in NVRAM, which is undesirable.) The extent of such restrictions is entirely up to those who develop and sign the boot loader launched by Shim and the kernel launched by that boot loader, though. Some distributions ship kernels that are relatively unencumbered by added security restrictions.  

    As a practical matter, if you want to use Shim, you have two choices: You can run a distribution that provides its own signed version of Shim, such as Fedora 18 or later or Ubuntu 12.10 or later; or you can run a signed version from such a distribution or from another source, add your own MOK, and sign whatever binaries you like. This first option is quite straightforward if you happen to want to use a distribution that ships with Shim, and it requires little extra elaboration." "If you want to build and run your own kernel (e.g. for development or debugging), then you will obviously end up making binaries that are not signed with the Debian key. If you wish to use those binaries, you will need to either sign them yourself and enroll the key used with MOK or disable SB."    
</details>  
<details>
<summary>Secure Boot References</summary>  
<ul>
<li>https://www.rodsbooks.com/efi-bootloaders</li>
<li>https://www.rodsbooks.com/efi-bootloaders/controlling-sb.html</li>
<li>https://www.rodsbooks.com/efi-bootloaders/secureboot.html</li>
<li>https://www.debian.org/security/2020-GRUB-UEFI-SecureBoot/index.en.html</li>
<li>https://www.elstel.org/debcheckroot</li>
<li>https://www.kicksecure.com/wiki/Verified_Boot</li>
<li>https://0pointer.net/blog/authenticated-boot-and-disk-encryption-on-linux.html</li>
<li>https://stack.nexedi.com/P-VIFIB-Enhanced.UEFI.Secure.Boot.Debian</li>
<li>https://wiki.ubuntu.com/UEFI/SecureBoot</li>
<li>https://wiki.ubuntu.com/UEFI/SecureBoot/DKMS</li>
<li>https://kernel-team.pages.debian.net/kernel-handbook/</li>
</li>https://www.kernel.org/doc/html/v4.20/admin-guide/module-signing.html</li>
<li>https://wiki.archlinux.org/title/Unified_Extensible_Firmware_Interface/Secure_Boot</li>
<li>https://github.com/nsacyber/TrustedSHIM</li>
<li>https://github.com/nsacyber/HIRS</li>
<li>https://manpages.debian.org/stretch/keyutils/keyctl.1.en.html</li>
<li>https://manpages.debian.org/testing/pesign/pesign.1.en.html</li>
<li>https://manpages.debian.org/testing/libnss3-tools/index.html</li>
<li><a href="https://media.defense.gov/2020/Sep/15/2002497594/-1/-1/0/CTR-UEFI-Secure-Boot-Customization-UOO168873-20.PDF" target="_blank">NSA - Cybersecurity Technical Report PDF</a></li>
</ul>
</details>  

<details>
<summary>Secure Boot in Practice References</summary>  
<ul>
<li>https://www.rodsbooks.com/efi-bootloaders/secureboot.html#using_signed</li>
<li>https://www.rodsbooks.com/efi-bootloaders/controlling-sb.html</li>
<li>https://www.rodsbooks.com/efi-bootloaders/sb-modules.html</li>
<li>https://wiki.debian.org/SecureBoot</li>
<li>https://github.com/sitmsiteman/secure-boot-in-debian-based-distro</li>
<li>https://github.com/Batu33TR/secureboot-mok-keys</li>
<li>https://github.com/M-P-P-C/Signing-an-Ubuntu-Kernel-for-Secure-Boot</li>
<li>https://medium.com/@vvvrrooomm/practical-secure-boot-for-linux-d91021ae6471</li>
<li>https://askubuntu.com/questions/762254/why-do-i-get-required-key-not-available-when-install-3rd-party-kernel-modules</li>
<li>https://help.eset.com/efs/8.1/en-US/secure-boot.html</li>
<li>https://help.ggcircuit.com/knowledge/how-to-inject-custom-secure-boot-keys-example</li>
<li>https://www.lastdragon.net/?p=2513</li>
<li>https://blogs.oracle.com/linux/post/the-machine-keyring</li>
<li>https://paldan.altervista.org/signed-linux-kernel-deb-creation-how-to/?doing_wp_cron=1690057748.1645970344543457031250 </li>
<li>https://www.linuxjournal.com/content/take-control-your-pc-uefi-secure-boot</li>
<li>https://access.redhat.com/documentation/de-de/red_hat_enterprise_linux/8/html/managing_monitoring_and_updating_the_kernel/signing-a-kernel-and-modules-for-secure-boot_managing-monitoring-and-updating-the-kernel</li>
</ul>
</details>  

<details>
<summary>YouTube Video References</summary>  
<ul>
<li>Use UEFI Secure Boot NOW! (Trafotin)](https://www.youtube.com/watch?v=Mqh9o8YY2dg)</li>
<li>Best Practices for UEFI Secure Boot Customization (UEFIForum)](https://www.youtube.com/watch?v=WBemkwMHLJM)</li>
<li>Secure Boot from A to Z (The Linux Foundation)](https://www.youtube.com/watch?v=jtLQ8SzfrDU)</li>
<li>Secure Boot. In Debian. In Buster. Really (DebConf Videos)](https://www.youtube.com/watch?v=_3mwK6AXo_k)</li>
<li>EFI secure boot con Debian 11 (La cueva del ultimo dragon Last Dragon)](https://www.youtube.com/watch?v=33-CL2fBvlE)</li>
</ul>
</details> 

## :green_circle: $\textcolor{green}{Essential\ Tutorial}$  

👷🛠️🚧🏗  ---UNDER WORK---  
```diff
- Debian Bug report logs - #989463 please align shim-signed dkms behaviour with Ubuntu  
- https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=989463  
- Debian Bug report logs - #928300 shim-signed: secure boot via removable media path unavailable  
- https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=928300  
```  
<DIV class="section" id="VERDE">
<details>
<summary><b>Sign Debian 12 (Bookworm) Kernel for Secure Boot</b></summary>  
<p></p>

<b>1.First steps <b/>   

Has the system booted via Secure Boot?
```
$ su -
Password:
# mokutil --sb-state
SecureBoot enabled
```
or
```
$ sudo mokutil --sb-state
SecureBoot enabled
```
What keys are on my system?
```
sudo mokutil --list-enrolled 
```

Also the command modinfo prints the signature if available, for example:
```
# modinfo /lib/modules/6.1.0-11-amd64/kernel/mm/zsmalloc.ko 
```

<b>2.Place to auto-generated MOK<b/>

MOK - Machine Owner Key

<details>
<summary><b>Introduction</b></summary>  
"The use of mokutil that's most relevant to this page is to import a MOK. In this context, importing refers to storing a MOK in the computer's NVRAM, along with a flag to tell Shim and MokUtil that the MOK is there and ready to be enlisted when you next reboot the computer. Keys can be added and removed in the MOK list by the user, entirely separate from the distro CA key. Unlike Debian, Ubuntu has chosen to place their auto-generated MOK at "/var/lib/shim-signed/mok/", which some software--such as Oracle's virtualbox package -expect to be present. Note that using this same location may result in future conflicts. Warning: The MOK.key file is extremely sensitive! An attacker who gains access to it could generate binaries that your computer would accept as authorized. You should change permissions to prevent unauthorized access, and ideally store it on an encrypted external storage medium and unplug it when you're not signing binaries.If you see the key there (consisting of the files MOK.der, MOK.pem and MOK.priv) then you can use these, rather than creating your own.
</details>

First make sure the key doesn't exist yet:
```
$ ls /var/lib/shim-signed/mok/
```
To create a folder to MOK key:
```
$ su -
# mkdir -p /var/lib/shim-signed/mok/
```
You can choose another place like "/etc/mok_key/" since there is no standard location at the moment.
```
# mkdir -p /etc/mok_key/
```

<b>3.Generating a new key<b/>

Before you create the public and private key for signing the kernel, you need to access the folder you created to be the destination of the keys:
```
# cd /var/lib/shim-signed/mok/
or
# cd /etc/mok_key/
```
Then create the public and private key for signing the kernel:
```
# openssl req -config ./mokconfig.cnf -new -x509 -newkey rsa:2048 -nodes -days 36500 -outform DER -keyout "MOK.priv" -out "MOK.der" -subj "/CN=My Name/"
```
------------------------------------------------------------------------
or alternatively:
```
# openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -days 36500 -subj "/CN=My Name/"
```
Convert the key also to PEM format (mokutil needs DER, sbsign needs PEM):
```
# openssl x509 -in MOK.der -inform DER -outform PEM -out MOK.pem
```
------------------------------------------------------------------------
<b>4.Enrolling your key<b/>

Enroll the key to your shim installation:

```
$ sudo mokutil --import MOK.der
```
```
$ sudo mokutil --import /var/lib/shim-signed/mok/MOK.der # prompts for one-time password

```
You will be asked for a one-time <b>password (remember and type it correctly)</b>, you will just use it to confirm your key selection in the next step (you won't need this password beyond this point, though) , so choose any.

<b>5.Restart and Verify</b>

Restart your system. Changes to the MOK keys may only be confirmed directly from the console at boot time. You will encounter a blue screen of a tool called MOKManager. Select "Enroll MOK" and then "View key". Make sure it is your key you created in step 3. Afterwards continue the process and you must enter the password which you provided in step 4. Continue with booting your system.

Verify your key is already enrolled, if the MOK was loaded correctly, with:
```
$ sudo mokutil --list-enrolled
or
$ sudo mokutil --test-key /var/lib/shim-signed/mok/MOK.der
```
Others commands
```
# sbverify --list /boot/vmlinuz-6.1.0-11-amd64
# sbverify --cert /etc/mok_key/mok.crt /boot/vmlinuz-6.1.0-11-amd64
```
<b>6.Sign your installed kernel (or any other efi binary)</b>

<DIV class="subsection" id="6.1" >
<details>
<summary><b>6.1 Modern method: </b> Signing the Debian kernel modules with DKMS</summary> 

Building Debian kernel modules with DKMS. The dkms frameworks allows building kernel modules "on the fly" on the local system instead of building them centrally on the Debian infrastructure, DKMS could automatically sign kernel updated modules. If you install the kernel modules through the apt repository, chances are that modules have already been signed by the DKMS signing key. In that case, the traditional method won't work. And the thing you only need to do is to enroll the DKMS signing key into your machine. On systems that use SecureBoot, you will need a Machine Owner Key (MOK) to load DKMS modules. Generate it, enroll it, sign modules with it and then you will be able to load the signed modules. 

It depends on the dkms package:
```
$ sudo apt install dkms
```

In order for dkms to automatically sign kernel modules, it must be told which key to sign the module with. This is done by adding two configuration values to "/etc/dkms/framework.conf", adjusting paths as required:

  mok_signing_key="/var/lib/shim-signed/mok/MOK.priv"
  mok_certificate="/var/lib/shim-signed/mok/MOK.der"

<\details>

<DIV class="subsubsection" id="6.2.1">
<details>
<summary>DKMS Sign Helper</summary>  
If these values are provided and dkms is able to build modules but does not attempt to sign them, then it is likely that sign_tool is missing. This is more common in older and/or custom kernels.
In "/etc/dkms/framework.conf", add:
```
sign_tool="/etc/dkms/sign_helper.sh"
```
Create "/etc/dkms/sign_helper.sh" with:
```
/lib/modules/"$1"/build/scripts/sign-file sha512 /root/.mok/client.priv /root/.mok/client.der "$2"
```
Set Linux kernel info variables
```
$ VERSION="$(uname -r)"
$ SHORT_VERSION="$(uname -r | cut -d . -f 1-2)"
$ MODULES_DIR=/lib/modules/$VERSION
$ KBUILD_DIR=/usr/lib/linux-kbuild-$SHORT_VERSION
```
<\details> 

<DIV class="subsubsection" id="6.2.2">
<details>
<summary>Making DKMS modules signing by DKMS signing key usable with the secure boot</summary>  

If you install the kernel modules through the apt repository, chances are that modules have already been signed by the DKMS signing key. In that case, the traditional method won't work. And the thing you only need to do is to enroll the DKMS signing key into your machine. Here is how we can do that:

First, use the method mentioned in Verifying if a module is signed to check if the modules are signed by DKMS signing key.

Next, find the location of the mok signing key and mok certificate. You can view the location in /etc/dkms/framework.conf, and the default location is /var/lib/dkms.

Then, run the following command to enroll the key into the machine:
```
$ sudo mokutil --import /var/lib/dkms/mok.pub # prompts for one-time password and /var/lib/mok.pub can be changed, if mok certificate isn't located there.
$ sudo mokutil --list-new # recheck your key will be prompted on next boot

<rebooting machine then enters MOK manager EFI utility: enroll MOK, continue, confirm, enter password, reboot>

$ sudo dmesg | grep cert # verify your key is loaded
```
<\details> 
</DIV>
</DIV>
</DIV>

<DIV class="subsection" id="6.2">  
<details>  
<summary><b>6.2 Traditional method:</b> signing the Debian kernel modules with sbsigntool</summary>  
Sign the installed Kernel using the key created according to the location you gave it, this will create a new signed vmlinuz. Sign vmlinuz using sbsign,it should be at /boot/vmlinuz-[KERNEL-VERSION]:

To check your Kernel version, you can also use the command:
```
$ uname -r
```
Signing vmlinuz using sbsign:
```
$ sudo sbsign --key MOK.priv --cert MOK.pem /boot/vmlinuz-[KERNEL-VERSION] --output /boot/vmlinuz-[KERNEL-VERSION].signed
for example
$ sudo sbsign --key /var/lib/shim-signed/mok/MOK.priv --cert /var/lib/shim-signed/mok/MOK.pem "/boot/vmlinuz-6.1.0-11-amd64" --output "/boot/vmlinuz-6.1.0-11-amd64.tmp"
```
------------------------------------------------------------------------
or alternatively:
```
$ sudo sbsign --key MOK.priv --cert MOK.pem "/boot/vmlinuz-$VERSION" --output "/boot/vmlinuz-$VERSION.tmp"
```
------------------------------------------------------------------------
Copy the initram of the unsigned kernel, so we also have an initram for the signed one.This will create a new signed vmlinuz: remove the unsigned one and restore the original name of the signed one:
```
$ sudo mv "/boot/vmlinuz-$VERSION.tmp" "/boot/vmlinuz-$VERSION"
for example
$ sudo mv "/boot/vmlinuz-6.1.0-11-amd64.tmp" "/boot/vmlinuz-6.1.0-11-amd64"
```

------------------------------------------------------------------------
or alternatively:
```
$ sudo cp /boot/initrd.img-[KERNEL-VERSION]{,.signed}
```
or alternatively:
```
$ sudo rm /boot/initrd.img-[KERNEL-VERSION]
$ sudo mv whatever/boot/initrd.img-[KERNEL-VERSION]{,.signed} /boot/
```
------------------------------------------------------------------------
Update your grub-config
```
$ sudo update-grub
```
Reboot your system and select the signed kernel. If booting works, you can remove the unsigned kernel:
```
$ sudo mv /boot/vmlinuz-[KERNEL-VERSION]{.signed,}
$ sudo mv /boot/initrd.img-[KERNEL-VERSION]{.signed,}
$ sudo update-grub
```
Now your system should run under a signed kernel and upgrading GRUB2 works again. If you want to upgrade the custom kernel, you can sign the new version easily by following above steps again from step seven on. Thus BACKUP the MOK-keys (MOK.der, MOK.pem, MOK.priv).  

Verifying if a module is signed. The command modinfo prints the signature if available, for example:
```
$ sudo modinfo /boot/vmlinuz-6.1.0-11-amd64
```
Others commands
```
$ sudo dmesg | grep cert
$ sudo sbverify --list /boot/vmlinuz-6.1.0-11-amd64
$ sudo sbverify --cert /etc/mok_key/mok.crt /boot/vmlinuz-6.1.0-11-amd64
```
</details>  
</DIV>
</DIV>
</DIV>  

<details>
<summary><b>Reset Secure Boot for Kernel or Modules</b></summary>  

  **Reset Key for Kernel**
---UNDER WORK---
https://www.rodsbooks.com/efi-bootloaders/controlling-sb.html#setuputil

"The ASUS permits to you restore the default keys, so this isn't really vital if you're starting from the factory defaults with this model; but if yours doesn't offer such a reset-to-defaults option or if you've modified the keys, saving them may be prudent. As the name implies, this option also erases all your Secure Boot keys. (It does not erase your MOKs, though.)"

  **Reset MOK Keys for Modules**
---UNDER WORK---
https://www.rodsbooks.com/efi-bootloaders/controlling-sb.html#key-revocation

```
$ mokuitil --sb-state
SecureBoot disabled
```

```
$ mokutil --disable-validation
```
Backup. Exports to list (ideally store it on an encrypted external storage medium).
```
$ mokutil --export
```
Shows all keys.
```
$ ls -1 MOK*
```
Shows you keys enrolled.
```
$ mokutil --list-enrolled
```
Delete those not enrolled to maintain secure boot.
```
$ mokutil --delete MOK-0001.der
```
To remove all (MOKs being a list and not just a single MOK, you can make the shim trust keys from several different vendors, allowing dual- and multi-boot)
```
$ mokutil --reset --mok
```
```
$ mokutil --reset
```
Uninstall the modules, if it was made with "make".
```
cd ~/realtekwifiborad
sudo make uninstall
```
Reset de modules and unload them in Kernel
```
sudo depmod 
sudo update-initramfs -u -k all
```



</details>   

## :yellow_circle: $\textcolor{gold}{Intermediate\ Tutorial}$  

👷🛠️🚧🏗  

<details>
<summary><b>rEFInd Bootloader</b></summary>  

https://wiki.ubuntu.com/EFIBootLoaders  

</details>   

<details>
<summary><b>Sign WIFI Module for Secure Boot</b></summary>  

</details> 

<details>
<summary><b>Sign NVIDIA Module for Secure Boot</b></summary>  
https://github.com/NVIDIA/open-gpu-kernel-modules  
</details> 

<details>
<summary><b>Sign VirtualBox Module for Secure Boot</b></summary>  

https://superuser.com/questions/1438279/how-to-sign-a-kernel-module-ubuntu-18-04  
https://askubuntu.com/questions/760671/could-not-load-vboxdrv-after-upgrade-to-ubuntu-16-04-and-i-want-to-keep-secur/768310#768310  
https://stegard.net/2016/10/virtualbox-secure-boot-ubuntu-fail  
https://gist.github.com/reillysiemens/ac6bea1e6c7684d62f544bd79b2182a4  

In order to get VirtualBox working without simply disabling UEFI Secure Boot, then you'll need to do the following:  

1. Create a personal public/private RSA key pair to sign the kernel modules. As recommended in the link below, I chose to store the key/pair in the /root/module-signing/ directory.
```
sudo -i
mkdir /root/module-signing
cd /root/module-signing
openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=YOUR_NAME/"
chmod 600 MOK.priv
```
Use mokutil, a tool to import or delete the machine owner keys (MOK), to import the public key, and then enroll it when the machine is rebooted. The password in this step is a temporary use password you'll only need to remember for a few minutes.
```
mokutil --import /root/module-signing/MOK.der
input password:
input password again:
```
Reboot the machine. When the bootloader starts, you should see a screen asking you to press a button to enter the MOK manager EFI utility. Note that any external external keyboards won't work in this step. Select Enroll MOK in the first menu, then continue, and then select Yes to enroll the keys, and re-enter the password established in step 2. Then select OK to continue the system boot.

Future kernel updates would require the updated kernels to be signed again, so it makes sense to put the signing commands in a script that can be run at a later date as necessary. A sample script /root/module-signing/sign-vbox-modules is given below.
```
#!/bin/bash

for modfile in $(dirname $(modinfo -n vboxdrv))/*.ko; do
  echo "Signing $modfile"
  /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
                                /root/module-signing/MOK.priv \
                                /root/module-signing/MOK.der "$modfile"
done
```
Add execution permission, and run the script above as root from the /root/module-signing/ directory.
```
sudo -i
cd /root/module-signing
chmod 700 /root/module-signing/sign-vbox-modules ./sign-vbox-modules
```
Load vboxdrv module and launch VirtualBox.
```
modprobe vboxdrv 
```
</details> 



<details>
<summary><b>Sign Ventoy</b></summary>  

</details>   

## :red_circle: $\textcolor{red}{Advanced\ Tutorial}$  

👷🛠️🚧🏗  

<details>  
<summary><b>Sign Custom Secure Keys</b></summary>  
https://github.com/nsacyber/Hardware-and-Firmware-Security-Guidance/blob/master/secureboot/Linux.md  
</details>   
<details>  
<summary><b>Sign with TPM 2.0</b></summary>  
https://github.com/squarooticus/efi-measured-boot  
</details>  

## SOFTWARES  

### Browser  

**Extensions**

### Passwords  
https://keepassxc.org/  
### Email  
https://emailselfdefense.fsf.org/en/workshops.html  
https://www.linuxbabe.com/security/encrypt-emails-gpg-thunderbird  
https://keys.openpgp.org/about/usage  
https://efail.de/  
### Utility  

  
