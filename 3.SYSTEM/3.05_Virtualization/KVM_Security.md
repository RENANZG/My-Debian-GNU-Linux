# KVM/QEMU security
## Architecture
3 components:
- KVM (in-kernel)
  - kvm.ko
  - kvm-{amd,intel}.ko
- QEMU (userspace)
  - qemu-kvm

kvm.ko implements the virtual CPU and MMU, also emulates a few devices in-kernel for efficiency. kvm-{amd,intel}.ko provides support for Intel VMX and AMD SVM virtualization extensions. qemu-kvm implements the bulk of virtual devices a VM uses.

By far qemu-kvm has the largest attack surface: much more code than the KVM modules, code is mostly ancient.

## Previous QEMU/KVM VM escapes
- CVE-2011-1751 (QEMU)
  - https://nelhage.com/talks/kvm-defcon-2011.pdf
  - bug in PIIX4 Power Management emulation layer in qemu-kvm
- CVE-2015-3456 (QEMU)
  - VENOM
  - https://www.rapid7.com/resources/venom-vulnerability-explained/
  - https://access.redhat.com/articles/1444903
  - The problem exists in the Floppy Disk Controller, which is initialized for every x86 and x86_64 guest regardless of the configuration and cannot be removed or disabled.
  - bug the virtual floppy disk controller (proxmox VMs don't have one)
- CVE-2015-5165 + CVE-2015-7504 (QEMU)
  - http://phrack.org/issues/70/5.html#article
  - CVE-2015-5165: a memory leak vulnerability that affects the RTL8139 network card device emulator
  - ` The combination of these two exploits allows to break out from a VM and execute code on the target host.`
- CVE-2019-14378 (QEMU)
  - https://www.techrepublic.com/article/vm-escape-flaw-in-qemu-allows-for-arbitrary-code-execution-denial-of-service/
  - https://vishnudevtj.github.io/notes/qemu-vm-escape-cve-2019-14378
  - bug in SLiRP user network backend
- CVE-2019-18389 (virglrenderer)
  - https://paper.bobylive.com/Meeting_Papers/BlackHat/Asia-2020/asia-20-Shao-3D-Red-Pill-A-Guest-To-Host-Escape-On-QEMUKVM-Virtio-Device-wp.pdf
  - heap-overflow vulnerability in a third-party library virglrenderer (provides a virtual 3D GPU for the guest machine)
  - library loaded by QEMU
- CVE-2020-14364 (QEMU)
  - out-of-bounds read/write access issue in the USB emulator
  - https://nsfocusglobal.com/qemu-vm-escape-vulnerability-cve-2020-14364-threat-alert/
- CVE-2021-29657 (KVM)
  - https://googleprojectzero.blogspot.com/2021/06/an-epyc-escape-case-study-of-kvm.html

## Mitigations
No mitigations for KVM vulnerabilities, the entire host is compromised.

Mitigations for QEMU vulnerabilities:
- run QEMU as unprivileged user
- sandbox QEMU:
  - seccomp
  - MAC (SELInux or AppArmor)

Youtube links:
- [Security in QEMU: How Virtual Machines Provide Isolation by Stefan Hajnoczi](https://www.youtube.com/watch?v=YAdRf_hwxU8) 
- [Eduardo Otubo: Qemu Sandboxing for dummies.](https://www.youtube.com/watch?v=_7yGiafZdVc)

To apply seccomp just add `--sandbox on` to the QEMU command line arguments.

To check if Apparmor is enabled run `aa-enabled` and `aa-status`.

By default libvirt should implement all 3 mitigations.

