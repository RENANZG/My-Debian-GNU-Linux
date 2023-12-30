<h2>How to Install and Setup Qemu/KVM on Debian 12</h2>


<a href="https://wiki.debian.org/KVM">• Debian Wiki - KVM</a><br>
<a href="https://wiki.archlinux.org/title/KVM">• Arch Linux Wiki - KVM</a><br>
<a href="https://wiki.qemu.org/Hosts/Linux#QEMU_on_Linux_hosts">• Qemu  Qemu on Linux Hosts</a><br>
<a href="https://linux-kvm.org">• Linux KVM</a><br>
<a href="https://qemu.org">• QEMU</a><br>
<a href="https://libvirt.org">• Libvirt</a><br>
<a href="https://xenproject.org">• Xen Project</a><br>
<a href="https://cloud.debian.org/images/cloud/">• Debian Official Cloud Images</a><br>
<a href="https://www.whonix.org/wiki/KVM">• KVM — Using Whonix with KVM (Kernel Virtual Machine)</a><br>

<h3>• Hypervisor</h3>

<p>KVM, Kernel-based Virtual Machine, is a hypervisor built into the Linux kernel. It is similar to Xen in purpose but much simpler to get running. Unlike native QEMU, which uses emulation, KVM is a special operating mode of QEMU that uses CPU extensions (HVM) for virtualization via a kernel module.</p>

<p>The difference between a type 1 hypervisor and a type 2 hypervisor. KVM is a type 1 hypervisor, it is able to run on bare metal, while QEMU is a type 2 hypervisor, it runs on top of the operating system. QEMU will utilize KVM in order to utilize the machine’s physical resources for the virtual machines. In brief, QEMU uses emulation; KVM uses processor extensions (HVM) for virtualization.</p>

<img src="3.System/3.05_QEMU-KVM/QEMU-KVM_Chart.png">

<h3>• Verify hardware support for VT-x/vmx/svm</h3>

<pre>
$ lscpu | grep Virtualization
$ grep --color -iE 'vmx|svm' /proc/cpuinfo
</pre>

<h3>• Install QEMU/KVM</h3>

<pre>
$ sudo apt install --no-install-recommends qemu-kvm qemu-system-x86 libvirt-daemon-system libvirt-clients virt-manager gir1.2-spiceclientgtk-3.0 dnsmasq qemu-utils iptables
</pre>

<h3>• Verify installation</h3>

<pre>
$ lsmod | grep -i kvm
</pre>

<h3>• Add your user to group</h3>

<pre>
$ sudo adduser "$(whoami)" libvirt
$ sudo adduser "$(whoami)" kvm
</pre>

<p>Note that reboot is required after QEMU/KVM is installed or users are added to groups.</p>
<p>Note that AppArmor could block softwares.</p>

<h3>• Cloud Image Settings</h3>

<p>Those cloud images are intended to be used with cloud-init to set up the VM, including users networking etc. Alternatively you can grab an image with "nocloud" in the name, those have a root login with no password. all qcow2 images come with cloud-init to get ssh key from metadata server. User seems to be debian, and then sudo -i to grant root privileges.</p>

<p>https://lists.debian.org/debian-cloud/2013/05/msg00121.html</p>

<p>Copy the .qcow2 image to folder</p>

<pre>
$ sudo mv ~/Downloads/image.qcow2 /var/lib/libvirt/images
or
$ mkdir ~/cloud_images && cd ~/cloud_images
$ wget https://cloud.debian.org/images/cloud/bookworm/20231210-1591/debian-12-generic-amd64-20231210-1591.qcow2
</pre>

<p><b>&#9888; Permission Denied Error,</b> it's recommended to check if this directory <code>/var/lib/libvirt/images</code> exists and run your install from there.</p>
<p>Don't use the chown, add your username to the proper groups to kvm or libvirt.</p>
<p>At your own risk, to avoid permission errors use</p>
<p><code>$ sudo chown "$(whoami)" /dev/kvm </code></p>
<p>And verify</p>
<p><code>$ ls -l /dev/kvm</code></p>

<sub><a href="https://cloud.debian.org/images/cloud/">Debian Official Cloud Images</a></sub><br>
<sub><a href="https://wiki.debian.org/ThomasChung/CloudImage">How to import Cloud Image</a></sub><br>

<h3>• Set qcow2 image password</h3>

https://wiki.debian.org/ThomasChung/CloudImage#Reset_root_password_on_cloud_image<br>
https://wiki.debian.org/Cloud/#What_is_the_default_user_name_on_the_Debian_cloud_images.3F<br>


<h4>Virt-customize</h4>

<pre>$ sudo apt install cloud-image-utils</pre>
<pre>$ sudo virt-customize -v -a "your-qcow2-image" --root-password password: "your-password-here"</pre>
<pre>$ sudo virt-customize -v -a ~/debian-12-generic-amd64-20231210-1591.qcow2 --root-password password: 123</pre>

<h4>SSH Keypair</h4>

<p>In order to use ssh public/private key login later, we need to generate a keypair.  cloud-init will embed the public side of the key into the running OS.</p>

<pre>$ ssh-keygen -t rsa -b 4096 -f id_rsa -C test1 -N "" -q</pre>

<p>This creates files named “id_rsa” and “id_rsa.pub”.</p>

<h4>Cloud-init Configuration</h4>

https://cloud-init.io<br>


<p>Create a file named “cloud_init.cfg” with the below content. Replace the “<sshPUBKEY>” placeholder in the file above, with the content of “id_rsa.pub”.</p>

<pre>
#cloud-config
hostname: test1
fqdn: test1.example.com
manage_etc_hosts: true
users:
  - name: ubuntu
    sudo: ALL=(ALL) NOPASSWD:ALL
    groups: users, admin
    home: /home/ubuntu
    shell: /bin/bash
    lock_passwd: false
    ssh-authorized-keys:
      - <sshPUBKEY>
# only cert auth via ssh (console access can still login)
ssh_pwauth: false
disable_root: false
chpasswd:
  list: |
     ubuntu:linux
  expire: False

package_update: true
packages:
  - qemu-guest-agent
# written to /var/log/cloud-init-output.log
final_message: "The system is finally up, after $UPTIME seconds"
</pre>

<h3>• Launch (GUI)</h3>

<pre>
$ virt-manager
</pre>

<p>Start Menu → Applications → System → Virtual Machine Manager → Start System → Click open → Click the play symbol</p>

<h3>• Launch (CLI)</h3>

<p>Install</p>

<pre>
$ virt-install --connect qemu:///system --memory memory=1024 --sysinfo emulate --vcpus 1 --cpu host --clock offset=utc --boot hd --network network=default,model=virtio --graphics spice --autoconsole graphical --video qxl --cdrom /var/lib/libvirt/images/debian-12.0.0-amd64-DVD-1.iso --name debian12-$(date +%Y%m%d-%H%M%S)-$$-$(printf '%04x' $RANDOM) --disk pool=default,size=5,bus=virtio,format=raw --osinfo name=debian12
</pre>

<p>Start</p>

<pre>
$ sudo virsh start Debian12-XXX
</pre>

<sub>In general, virtual machine needs to<br> be given at least 1 GB of RAM and 1 processor core</sub><br>
<sub>You could auto resize VM with window in options</sub><br>
<sub><a href="https://linux.die.net/man/1/qemu-img">Linux man page - qemu-img</a></sub><br>

<h3>• Notes</h3>

<p>You can mount your qcow2 image under your host after converting it to raw, and make your changes even in a chroot to it, before uploading the image to your hipervisor.</p>


<h3>• Encrypted Containers</h3>

<h3>• KVM without X</h3>

<h3>• Network</h3>

<h4>∙ Network Start</h4>

<p>Ensure QEMU/KVM default networking is enabled and has started.</p>

<pre>
$ sudo virsh -c qemu:///system net-autostart default
</pre>

<pre>
$ sudo virsh -c qemu:///system net-start default
</pre>

<h4>∙ Firewall</h4>

<p>Configure firewall</p>

https://michael.kjorling.se/blog/2022/linux-kvm-host-nftables-guest-networking<br>
https://forums.gentoo.org/viewtopic-t-1148450-highlight-nftables+qemu.html?sid=b7116aa6a5c66d12890a1bd2418ced34<br>


<h3>• Uninstalling</h3>

<h4>∙ Cleaning</h4>




