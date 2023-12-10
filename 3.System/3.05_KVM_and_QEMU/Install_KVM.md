https://wiki.debian.org/KVM

• Verify hardware support for VT-x/vmx/svm:

$ lscpu | grep Virtualization

$ grep --color -iE 'vmx|svm' /proc/cpuinfo

• Install:

$ sudo apt install virt-manager qemu-system libvirt-daemon-system qemu-utils

• Verify installation:

$ lsmod | grep -i kvm

$ sudo usermod -aG libvirt, kvm $USER

• Launch

$ virt-manager


