<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KVM/QEMU Security</title>
</head>
<body>
    <h1>KVM/QEMU Security</h1>
    <h2>Architecture</h2>
    <p>The architecture consists of three main components:</p>
    <ul>
        <li>KVM (in-kernel)
            <ul>
                <li>kvm.ko</li>
                <li>kvm-{amd,intel}.ko</li>
            </ul>
        </li>
        <li>QEMU (userspace)
            <ul>
                <li>qemu-kvm</li>
            </ul>
        </li>
    </ul>
    <p>kvm.ko implements the virtual CPU and MMU and emulates some devices in-kernel for efficiency. kvm-{amd,intel}.ko provides support for Intel VMX and AMD SVM virtualization extensions. qemu-kvm implements most of the virtual devices used by a VM.</p>

    <h2>Previous QEMU/KVM VM Escapes (CVEs)</h2>
    <ul>
        <li><strong>CVE-2007-1320 (QEMU)</strong>: Buffer overflow in the RTNETLINK handling.</li>
        <li><strong>CVE-2011-1751 (QEMU)</strong>: Vulnerability in PIIX4 Power Management emulation layer.</li>
        <li><strong>CVE-2015-3456 (QEMU)</strong> (VENOM): Vulnerability in the Floppy Disk Controller.</li>
        <li><strong>CVE-2015-3456 (QEMU)</strong>: Buffer overflow in USB EHCI emulator.</li>
        <li><strong>CVE-2015-3456 (QEMU)</strong>: Memory leakage in Cirrus CLGD 54xx VGA emulator.</li>
        <li><strong>CVE-2015-3456 (QEMU)</strong>: Buffer overflow in the megasas storage controller.</li>
        <li><strong>CVE-2015-3456 (QEMU)</strong>: Buffer overflow in the vmware_vga device emulator.</li>
        <li><strong>CVE-2015-3456 (QEMU)</strong>: Buffer overflow in the IDE AHCI disk controller.</li>
        <li><strong>CVE-2015-5165 + CVE-2015-7504 (QEMU)</strong>: Vulnerabilities in RTL8139 network card device emulator.</li>
        <li><strong>CVE-2016-10155 (QEMU)</strong>: Buffer overflow in the USB XHCI emulator.</li>
        <li><strong>CVE-2019-12155 (QEMU)</strong>: Heap-based buffer overflow in the SLiRP networking library.</li>
        <li><strong>CVE-2019-13164 (QEMU)</strong>: Use-after-free vulnerability in the USB redirector.</li>
        <li><strong>CVE-2019-15890 (QEMU)</strong>: Integer overflow in the NE2000 NIC emulator.</li>
        <li><strong>CVE-2020-14364 (QEMU)</strong>: Out-of-bounds read/write access issue in the USB emulator.</li>
        <li><strong>CVE-2021-20181 (QEMU)</strong>: Heap buffer overflow in the Virtio GPU device.</li>
        <li><strong>CVE-2021-25217 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3396 (QEMU)</strong>: Buffer overflow in the Cirrus CLGD 54xx VGA emulator.</li>
        <li><strong>CVE-2021-3409 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3528 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3608 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3612 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3613 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3615 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3616 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3617 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3618 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3619 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3620 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3621 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3622 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <li><strong>CVE-2021-3623 (QEMU)</strong>: Buffer overflow in the XHCI USB controller emulation.</li>
        <!-- Add more CVEs if needed -->
     </ul>

		<p><a href="https://www.cvedetails.com/vendor/7506/Qemu.html">CVE Details - Qemu</a></p>

    <h2>Mitigations</h2>
    <p>Consider the following mitigations for improving KVM/QEMU security:</p>
    <ul>
        <li><strong>For KVM Vulnerabilities:</strong> No specific mitigations available; the entire host is compromised.</li>
        <li><strong>For QEMU Vulnerabilities:</strong>
            <ul>
                <li>Run QEMU as an unprivileged user.</li>
                <li>Apply sandboxing techniques:
                    <ul>
                        <li>Use <code>seccomp</code> to restrict system calls.</li>
                        <li>Implement Mandatory Access Control (MAC) using tools like SELinux or AppArmor.</li>
                    </ul>
                </li>
                <li>Regularly update QEMU and related components to the latest versions.</li>
                <li>Perform security audits and vulnerability assessments regularly.</li>
            </ul>
        </li>
    </ul>

    <h2>Additional Resources</h2>
    <p>Explore these resources for further understanding and security practices:</p>
    <ul>
        <li><a href="https://www.youtube.com/watch?v=YAdRf_hwxU8">Security in QEMU: How Virtual Machines Provide Isolation by Stefan Hajnoczi</a></li>
        <li><a href="https://www.youtube.com/watch?v=_7yGiafZdVc">Eduardo Otubo: Qemu Sandboxing for dummies</a></li>
    </ul>

    <p>For detailed implementation of <code>seccomp</code>, add <code>--sandbox on</code> to the QEMU command line. Check AppArmor status using <code>aa-enabled</code> and <code>aa-status</code>.</p>
    <p>By default, libvirt should implement most security mitigations.</p>
</body>
</html>
