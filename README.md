
## System Hardening
[**Anonymous Planet** - The Hitchhiker’s Guide to Online Anonymity](https://anonymousplanet.org/) [**(PDF)**](https://anonymousplanet.org/export/guide.pdf)  
[**Whonix** - Essential Host Security](https://www.whonix.org/wiki/Essential_Host_Security)  
[**Whonix** - System Hardening Checklist](https://www.whonix.org/wiki/System_Hardening_Checklist)  
[**CIS Benchmark** - Debian Linux](https://www.cisecurity.org/benchmark/debian_linux)  
[**NIST GOV** - Cybersecurity Framework](https://www.nist.gov/cyberframework)  
[**NSA GOV** - Cybersecurity Advisories & Guidance](https://www.nsa.gov/Press-Room/Cybersecurity-Advisories-Guidance)  
[**Virus Total** - Free virus, malware and URL online scanning](https://www.virustotal.com/gui/home/upload)  
[**ShredOS** - Secure disk erasure/wipe](https://github.com/PartialVolume/shredos.x86_64)  

## Essentials
1.[**Ventoy**](https://www.ventoy.net/en/download.html) - [About Secure BootVentoy in UEFI mode](https://www.ventoy.net/en/doc_secure.html)  
2.[**Clonezilla**](https://clonezilla.org/downloads.php)  
3.[**rEFInd**](http://www.rodsbooks.com/refind/index.html)  
4.[**GParted**](https://gparted.org/livecd.php)  
5.[**ShredOS**](https://github.com/PartialVolume/shredos.x86_64)  
6.[**Tails**](https://tails.boum.org)  
7.[**KaliLinux**](https://www.kali.org/get-kali/#kali-installer-images)  

## Key File in Debian 12 (Bookworm)

https://cloudkid.fr/unlock-a-luks-partition-with-a-usb-key  
https://blog.fidelramos.net/software/unlock-luks-usb-drive  
https://tqdev.com/2022-luks-with-usb-unlock  
https://www.willhaley.com/blog/unlock-luks-volumes-with-usb-key  
https://www.dwarmstrong.org/fde-debian  
https://www.cyberciti.biz/hardware/cryptsetup-add-enable-luks-disk-encryption-keyfile-linux  
https://github.com/aomgiwjc/Unix-Bootstrap-Installs.wiki.git  

## Secure Boot in Debian 12 (Bookworm)  

"Most modern systems will ship with SB enabled - they will not run any unsigned code by default, but it is possible to change the firmware configuration to either disable SB or to enroll extra signing keys." "If you want to build and run your own kernel (e.g. for development or debugging), then you will obviously end up making binaries that are not signed with the Debian key. If you wish to use those binaries, you will need to either sign them yourself and enroll the key used with MOK or disable SB."  
[**YouTube Video** - Use UEFI Secure Boot NOW! (Trafotin)](https://www.youtube.com/watch?v=Mqh9o8YY2dg)  
[**YouTube Video** - Best Practices for UEFI Secure Boot Customization (UEFIForum)](https://www.youtube.com/watch?v=WBemkwMHLJM)  
[**YouTube Video** - Secure Boot from A to Z (The Linux Foundation)](https://www.youtube.com/watch?v=jtLQ8SzfrDU)  
[**YouTube Video** - Secure Boot. In Debian. In Buster. Really (DebConf Videos)](https://www.youtube.com/watch?v=_3mwK6AXo_k)  
[**NSA** - Cybersecurity Technical Report PDF](https://media.defense.gov/2020/Sep/15/2002497594/-1/-1/0/CTR-UEFI-Secure-Boot-Customization-UOO168873-20.PDF)

**Secure Boot**  
https://wiki.debian.org/SecureBoot  
https://www.linuxjournal.com/content/take-control-your-pc-uefi-secure-boot  
https://www.debian.org/security/2020-GRUB-UEFI-SecureBoot/index.en.html  
https://access.redhat.com/documentation/de-de/red_hat_enterprise_linux/8/html/managing_monitoring_and_updating_the_kernel/signing-a-kernel-and-modules-for-secure-boot_managing-monitoring-and-updating-the-kernel  
https://wiki.archlinux.org/title/Unified_Extensible_Firmware_Interface/Secure_Boot

https://github.com/nsacyber/TrustedSHIM
https://github.com/nsacyber/HIRS

**MOK - Machine Owner Key**  
https://www.rodsbooks.com/efi-bootloaders/secureboot.html#mokutil  
https://medium.com/@vvvrrooomm/practical-secure-boot-for-linux-d91021ae6471  
https://paldan.altervista.org/signed-linux-kernel-deb-creation-how-to/?doing_wp_cron=1690057748.1645970344543457031250  

**Method 1**  
👷🛠️🚧🏗  
sudo apt install sbsigntool  
sudo mokutil --sb-state  
sudo mokutil --list-enrolled  
sudo mokutil --enable-validation  
ls /var/lib/shim-signed/mok/  
**Method 2**  
👷🛠️🚧🏗  

**Sign Custom Kernel**  
**Sign VirtualBox**  
**Sign NVIDIA**  
**Sign Ventoy**  
  
