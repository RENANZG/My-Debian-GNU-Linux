UNDER CONSTRUCTION

<h2> Secure Shell (SSH) on the Server</h2>

<p>In the initrd phase, you will have to secure shell into the server after a reboot and enter the passphrase.</p>

<p>Server providers used to offer a virtualization with KVM and serial console access is also possible.</p>

<p>You would be able to interact with the emulated boot process, but with a fake BIOS and a virtual network with netboot image that started a QEMU connected to a VNC server, so by connecting to the VNC server.</p>

<code>$ sudo apt install debian-archive-keyring</code>


<hr>

deny ping request
nano /etc/ufw/before.rules 

-A ufw-before-input -p icmp --icmp-type destination-unreachable -j ACCEPT 
-A ufw-before-input -p icmp --icmp-type source-quench -j ACCEPT 
-A ufw-before-input -p icmp --icmp-type time-exceeded -j ACCEPT 
-A ufw-before-input -p icmp --icmp-type parameter-problem -j ACCEPT 
-A ufw-before-input -p icmp --icmp-type echo-request -j ACCEPT 
