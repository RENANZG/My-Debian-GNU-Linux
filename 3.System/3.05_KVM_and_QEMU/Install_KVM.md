<h2>How to Install and Setup Qemu/KVM on Debian 12</h2>

https://wiki.debian.org/KVM</br>
https://wiki.archlinux.org/title/KVM</br>
https://wiki.qemu.org/Hosts/Linux#QEMU_on_Linux_hosts</br>
https://linux-kvm.org</br>
https://qemu.org</br>
https://libvirt.org</br>
https://xenproject.org</br>
<a href="https://www.whonix.org/wiki/KVM">KVM — Using Whonix with KVM (Kernel Virtual Machine)</a><br>

<h5>Hypervisor</h5>

<pre>
KVM, Kernel-based Virtual Machine, is a hypervisor built into the Linux kernel. It is similar to Xen in purpose but much simpler to get running. Unlike native QEMU, which uses emulation, KVM is a special operating mode of QEMU that uses CPU extensions (HVM) for virtualization via a kernel module.
</pre>
<pre>
The difference between a type 1 hypervisor and a type 2 hypervisor. KVM is a type 1 hypervisor, it is able to run on bare metal, while QEMU is a type 2 hypervisor, it runs on top of the operating system. QEMU will utilize KVM in order to utilize the machine’s physical resources for the virtual machines. In brief, QEMU uses emulation; KVM uses processor extensions (HVM) for virtualization.
</pre>

<img src="3.System/3.1_System_Install/3.1.2_KVM_and_QEMU/KVM-and-QEMU.png">

<h3>• Verify hardware support for VT-x/vmx/svm:</h3>

<pre>
$ lscpu | grep Virtualization
$ grep --color -iE 'vmx|svm' /proc/cpuinfo
</pre>

<h3>• Install:</h3>

<pre>
$ sudo apt install virt-manager qemu-system libvirt-daemon-system qemu-utils
</pre>

<h3>• Verify installation:</h3>

<pre>
$ lsmod | grep -i kvm
$ sudo usermod -aG libvirt, kvm $USER
</pre>

<p>To create your VM's is to make sure you this directory <code>/var/lib/libvirt/images</code> and run your install from there.</p>

<pre>
$ cp /download/system.iso /var/lib/libvirt/images
</pre>

<h3>• Launch GUI</h3>

<pre>
$ virt-manager
</pre>

<h3>• Launch CLI</h3>

<pre>
$ virt-install --connect qemu:///system --memory memory=1024 --sysinfo emulate --vcpus 1 --cpu host --clock offset=utc --boot hd --network network=default,model=virtio --graphics spice --autoconsole graphical --video qxl --cdrom /var/lib/libvirt/images/debian-12.0.0-amd64-DVD-1.iso --name debian12-$(date +%Y%m%d-%H%M%S)-$$-$(printf '%04x' $RANDOM) --disk pool=default,size=5,bus=virtio,format=raw --osinfo name=debian12
</pre>

<h3>• Network</h3>

https://michael.kjorling.se/blog/2022/linux-kvm-host-nftables-guest-networking</br>
https://forums.gentoo.org/viewtopic-t-1148450-highlight-nftables+qemu.html?sid=b7116aa6a5c66d12890a1bd2418ced34</br>
