
## System Hardening Must Have
[**Anonymous Planet** - The Hitchhiker’s Guide to Online Anonymity](https://anonymousplanet.org/) [**(PDF)**](https://anonymousplanet.org/export/guide.pdf)  
[**Whonix** - Essential Host Security](https://www.whonix.org/wiki/Essential_Host_Security)  
[**Whonix** - System Hardening Checklist](https://www.whonix.org/wiki/System_Hardening_Checklist)  
[**Kicksecure** - Documentation](https://www.kicksecure.com/wiki/Documentation)  
[**CIS Benchmark** - Debian Linux](https://www.cisecurity.org/benchmark/debian_linux)  
[**NIST GOV** - Cybersecurity Framework](https://www.nist.gov/cyberframework)  
[**NSA GOV** - Cybersecurity Advisories & Guidance](https://www.nsa.gov/Press-Room/Cybersecurity-Advisories-Guidance)  
[**Virus Total** - Free virus, malware and URL online scanning](https://www.virustotal.com/gui/home/upload)  
[**ShredOS** - Secure disk erasure/wipe](https://github.com/PartialVolume/shredos.x86_64)  

## Essential Tools
<table>
  <tr>
    <td><a href="https://www.ventoy.net/en/download.html" target="_blank"><b>1. Ventoy</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></td>
    <td><a href="https://www.ventoy.net/en/doc_secure.html" target="_blank">(Secure Boot)</a></td>
    <td><a href="https://www.ventoy.net/en/download.html" target="_blank">(Checksums)</a></td>
  </tr>
<tr>
    <td><a href="https://clonezilla.org/downloads.php" target="_blank"><b>2. Clonezilla&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</b></a></td>
    <td><a href="" target="_blank">(Secure Boot)</a></td>
    <td><a href="" target="_blank">(Checksums)</a></td>
  </tr>
 <tr>
    <td><a href="http://www.rodsbooks.com/refind/index.html" target="_blank"><b>3. rEFInd</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></td>
    <td><a href="https://www.ventoy.net/en/doc_secure.html" target="_blank">(Secure Boot)</a></td>
    <td><a href="" target="_blank">(Checksums)</a></td>
  </tr>
  <tr>
    <td><a href="https://gparted.org/livecd.php" target="_blank"><b>4. GParted</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></td>
    <td><a href="https://gparted.org/download.php" target="_blank">(Secure Boot)</a></td>
    <td><a href="https://gparted.org/gpg-verify.php" target="_blank">(Checksums)</a></td>
  </tr>
  <tr>
    <td><a href="https://github.com/PartialVolume/shredos.x86_64" target="_blank"><b>5. ShredOS</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></td>
    <td><a href="" target="_blank">(Secure Boot)</a></td>
    <td><a href="" target="_blank">(Checksums)</a></td>
  </tr>
  <tr>
    <td><a href="https://tails.net/news/new_domain/index.en.html" target="_blank"><b>6. Tails</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></td>
    <td><a href="" target="_blank">(Secure Boot)</a></td>
    <td><a href="" target="_blank">(Checksums)</a></td>
  </tr>
  <tr>
    <td><a href="https://www.kali.org/get-kali/#kali-installer-images" target="_blank"><b>7. KaliLinux</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></td>
    <td><a href="" target="_blank">(Secure Boot)</a></td>
    <td><a href="" target="_blank">(Checksums)</a></td>
  </tr>
</table>

## Key File in Debian 12 (Bookworm)

<details>
<summary>Key File References</summary>  
<ul>
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

"Most modern systems will ship with SB enabled - they will not run any unsigned code by default, but it is possible to change the firmware configuration to either disable SB or to enroll extra signing keys." "If you want to build and run your own kernel (e.g. for development or debugging), then you will obviously end up making binaries that are not signed with the Debian key. If you wish to use those binaries, you will need to either sign them yourself and enroll the key used with MOK or disable SB."  


<details>
<summary>Secure Boot References</summary>  
<ul>
<li>https://wiki.debian.org/SecureBoot</li>
<li>https://www.linuxjournal.com/content/take-control-your-pc-uefi-secure-boot</li>
<li>https://www.debian.org/security/2020-GRUB-UEFI-SecureBoot/index.en.html</li>
<li>https://www.elstel.org/debcheckroot</li>
<li>https://0pointer.net/blog/authenticated-boot-and-disk-encryption-on-linux.html</li>
<li>https://stack.nexedi.com/P-VIFIB-Enhanced.UEFI.Secure.Boot.Debian</li>
<li>https://wiki.archlinux.org/title/Unified_Extensible_Firmware_Interface/Secure_Boot</li>
<li>https://www.kicksecure.com/wiki/Verified_Boot</li>
<li>https://github.com/nsacyber/TrustedSHIM</li>
<li>https://github.com/nsacyber/HIRS</li>
<li>https://www.rodsbooks.com/efi-bootloaders/secureboot.html#mokutil</li>
<li><a href="https://media.defense.gov/2020/Sep/15/2002497594/-1/-1/0/CTR-UEFI-Secure-Boot-Customization-UOO168873-20.PDF" target="_blank">NSA - Cybersecurity Technical Report PDF</a></li>
</ul>
</details>  

<details>
<summary>Secure Boot in Practice References</summary>  
<ul>
<li>https://github.com/sitmsiteman/secure-boot-in-debian-based-distro</li>
<li>https://medium.com/@vvvrrooomm/practical-secure-boot-for-linux-d91021ae6471</li>
<li>https://github.com/Batu33TR/secureboot-mok-keys</li>
<li>https://github.com/M-P-P-C/Signing-an-Ubuntu-Kernel-for-Secure-Boot</li>
<li>https://help.ggcircuit.com/knowledge/how-to-inject-custom-secure-boot-keys-example</li>
<li>https://paldan.altervista.org/signed-linux-kernel-deb-creation-how-to/?doing_wp_cron=1690057748.1645970344543457031250 
<li>https://access.redhat.com/documentation/de-de/red_hat_enterprise_linux/8/html/managing_monitoring_and_updating_the_kernel/signing-a-kernel-and-modules-for-secure-boot_managing-monitoring-and-updating-the-kernel</li>
</ul>
</details>  

<details>
<summary>YouTube Video References</summary>  
<ul>
<li>Use UEFI Secure Boot NOW! (Trafotin)](https://www.youtube.com/watch?v=Mqh9o8YY2dg)  </li>
<li>Best Practices for UEFI Secure Boot Customization (UEFIForum)](https://www.youtube.com/watch?v=WBemkwMHLJM)  </li>
<li>Secure Boot from A to Z (The Linux Foundation)](https://www.youtube.com/watch?v=jtLQ8SzfrDU)  </li>
<li>Secure Boot. In Debian. In Buster. Really (DebConf Videos)](https://www.youtube.com/watch?v=_3mwK6AXo_k)  </li>
</ul>ul>
</details> 


👷🛠️🚧🏗  
## :green_circle: $\textcolor{green}{Essential\ Tutorial}$  
<details>
<summary><b>Sign Debian 12 Bookworm (Stable)</b></summary>  
Create the public and private key for signing the kernel:

```
openssl req -config ./mokconfig.cnf -new -x509 -newkey rsa:2048 -nodes -days 36500 -outform DER -keyout "MOK.priv" -out "MOK.der"
```

Convert the key also to PEM format (mokutil needs DER, sbsign needs PEM):
```
openssl x509 -in MOK.der -inform DER -outform PEM -out MOK.pem
```

Enroll the key to your shim installation:
```
sudo mokutil --import MOK.der
```

You will be asked for a password, you will just use it to confirm your key selection in the next step, so choose any.

Restart your system. You will encounter a blue screen of a tool called MOKManager. Select "Enroll MOK" and then "View key". Make sure it is your key you created in step 2. Afterwards continue the process and you must enter the password which you provided in step 4. Continue with booting your system.

Verify your key is enrolled via:
```
sudo mokutil --list-enrolled
```

Sign your installed kernel (it should be at /boot/vmlinuz-[KERNEL-VERSION]):
```
sudo sbsign --key MOK.priv --cert MOK.pem /boot/vmlinuz-[KERNEL-VERSION] --output /boot/vmlinuz-[KERNEL-VERSION].signed
```

Copy the initram of the unsigned kernel, so we also have an initram for the signed one.
```
sudo cp /boot/initrd.img-[KERNEL-VERSION]{,.signed}
```

Update your grub-config
```
sudo update-grub
```
Reboot your system and select the signed kernel. If booting works, you can remove the unsigned kernel:
```
sudo mv /boot/vmlinuz-[KERNEL-VERSION]{.signed,}
sudo mv /boot/initrd.img-[KERNEL-VERSION]{.signed,}
sudo update-grub
```

Now your system should run under a signed kernel and upgrading GRUB2 works again. If you want to upgrade the custom kernel, you can sign the new version easily by following above steps again from step seven on. Thus BACKUP the MOK-keys (MOK.der, MOK.pem, MOK.priv).

<a href="https://github.com/Batu33TR/secureboot-mok-keys/tree/main" target="_blank">Credits - Batu33TR</a>

</details> 

👷🛠️🚧🏗  
## :yellow_circle: $\textcolor{gold}{Intermediate\ Tutorial}$  
<details>
<summary><b>Sign VirtualBox</b></summary>  

</details> 

<details>
<summary><b>Sign NVIDIA</b></summary>  

</details> 

<details>
<summary><b>Sign Ventoy</b></summary>  

</details>   

👷🛠️🚧🏗  
## :red_circle: $\textcolor{red}{Advanced\ Tutorial}$  
<details>  
<summary><b>Sign Custom Kernel</b></summary>  

</details>   






  
