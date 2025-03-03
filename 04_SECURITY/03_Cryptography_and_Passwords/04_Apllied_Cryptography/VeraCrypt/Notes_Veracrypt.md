
====================================
VERACRYPT ON LINUX

Download VeraCrypt for Debian GNU/Linux

Download the Debian 12 .deb file from VeraCrypt's website, open the termonal and run:

$ sudo apt install -f ./veracrypt-XX-Debian-XX-amd64.deb

*Installing the package with dpkg -i command may cause dependency errors.

For information on command line usage applying to the Linux run:

$ veracrypt –h

====================================
PARTITION TABLE

MBR vs GPT

In VeraCrypt, there is 2TB limitation for GPT drives, either non-system or system.

fallocate -l 4T large_4TB.img

mkfs.ext4 large_4TB.img

====================================
FILESYSTEM

EXT4

LVM

LUKS and EXT4 are not native to Windows.

Windows compatibility

NTFS vs exFAT

In order to format a volume as exFat so it can be used across platforms, you’ll need to install the exFat tools.

sudo apt install -y exfat-fuse exfatprogs

====================================
PARTITIONING

Run the mkfs.ext4 on the unmounted device.

cfdisk
fdisk
parted

====================================
NORMAL ENCRYPTED VOLUME

veracrypt -t -c --volume-type=normal --filesystem=ext4 --random-source=/dev/urandom /dev/sda1

HIDDEN ENCRYPTED VOLUME

veracrypt -t -c --volume-type=hidden --filesystem=ext4 --random-source=/dev/urandom /dev/sda1

====================================
MOUNT VERACRYPT VOLUME CORRECTLY

switch of sudo which will make it exit with a value of 0 only if the user is allowed to run sudo
veracrypt –l

It bypasses sudo session detection by sending dummy password
--use-dummy-sudo-password

====================================

LAZY INITIALIZATION

Normally disabling lazy initialization should solve the problem since all inode tables and the journal will be initialized with zeroes during formatting.

mkfs.ext4 -E lazy_itable_init=0,lazy_journal_init=0 /dev/mapper/veracryptX

====================================

TROUBLESHOOT

$ sudo veracrypt --filesystem=none /dev/sdX1 -m readonly,system
$ sudo fdisk /dev/mapper/veracrypt1
$ sudo parted /dev/mapper/veracrypt1

fsck
e2fsck

Coping veracrypt1 volume to raw disk

$ sudo dd if=/dev/mapper/veracrypt1 of=/dev/sdc4 status=progress

====================================
COMMANDS

$ sudo mount -t ext4 /dev/sdc1 /media/veracrypt2

$ sudo veracrypt --text --mount /dev/sdb1 /media/veracrypt2 --protect-hidden yes --verbose

$ sudo veracrypt --text --mount /dev/sdb1 /media/veracrypt2 --protect-hidden no --verbose

This command will prompt to provide the backup header file
sudo veracrypt --text --restore-headers /dev/sdX1

====================================

Writing the filesystem directly to the block

you don't need to partition a block device if you just want one partition

filesystem directly to the block
Partition-less disks
superfloppy
Veracrypt RAW partition bootsector
File or partition/device-based encryption

Detached headers is a special use case. Since few people use it, support for it may also be lacking in some places. So I don't recommend using them. I also don't recommend using a drive without a partition table. This setup has too many pitfalls.

"VeraCrypt RAW partition boot sector"

 "superfloppy" is synonymous with "partition-less disks" and is related to "filesystem directly to the block," but it is not synonymous with "RAW encrypted partition."


http://testcrypt.sourceforge.net/
photorec (part of the testdisk suite) to look at the raw disk


I always make a partition table, some tools or operating systems can cause data corruption because they assume disks should be partitioned.

I highly recommend following the trend of making one big partition instead of formatting the entire
block device. Many programs out there fail to understand this and expect partitioning, breaking without
one.

The only situation where it might not work, is if you encrypt the whole disk, that is, including the first sector with the boot sector and the partition table (but I doubt that). However that's a bad idea anyway, because this means operating systems will think the disk is blank and might overwrite the first sector (that's not so bad because there's a backup encryption header at the end, but still) or even if they don't repeatedly ask you to initialize the drive with a partition table whenever you reboot or plug it in (what specifically happens depends on the operating system).

This is called a superfloppy, because the old floppy disks used to also just have a raw filesystem without partitioning. I believe nowadays some usb flash drives are formatted that way, but uncommon.

Without a partition table you don't have a partition type and it's just a guess what's on it.

====================================
https://www.reddit.com/r/VeraCrypt/comments/mr004x/long_post_it_seems_the_only_benefit_of_veracrypt/

 My clarification of this partition table encryption being the source of the problem

  Beautiful. Thank you for clarifying that for me. I'm starting to get it. So just to see if I understand correctly:

  (A) Full-Disk Encryption is more of a general term, which can apply to a scenario where either

  the full disk and the partition table is encrypted, or where

  2. the full disk and everything except the partion table is encrypted (i.e. partition table remains un-encrypted)

  (B) In the Veracrypt full-disk encryption scenario I've described where you are prompted to initialize the drive, it is because the partition table is encrypted (as in scenario 2).

  (C) There's pretty much no need to encrypt the partition table (as in scenario 2) in Windows using Veracrypt since all you're doing is encrypting something that doesn't need to be encrypted at the cost of potential major errors related to initialization dangers and definite annoyances with backup programs (another detail I've seen in my research).

  That seems pretty conclusive. To me. BTW I really appreciate the dialogue.

Confirmation by /u/ERIFNOMI of my clarification

  You've basically got it. In setup 2, you don't necessarily encrypt every partition. For example, it's common to not encrypt your bootloader. If you're encrypting for data security/privacy reasons, you're really just making sure that no one can walk off with your HDD and access the data. Your bootloader isn't data you care about. It's a pain in the ass when it's encrypted though. If my bootloader was encrypted, I'd have to decrypt it just to chose which OS I want to boot. You could then store keys in that encrypted bootloader to unlock your OS for booting, which is fine if you're booting Linux, but I also (reluctantly) use Windows for gaming, and I'm not sure grub can handle unlocking a bitlocker volume. But now that I've typed that out, I realize I don't think I've ever looked into it. Might be something I look into.

  But everything else, dead on. To Windows, a VeraCrypt FDE disk looks like a disk without a partition table. "Initializing" a disk is Windows speak for creating an empty partition table.

  And yes, hiding the partition table really just make it a little bit harder for someone to infer that there is some encrypted data in the disk. It doesn't really matter though. They can't get to the data or even infer anything about the data that they couldn't alo infer from the VeraCrypt case except they would know where the start and end of a partition is. Not really much of a data leak there.

Hopefully these comments will help other novices in the future to be aware of the potential issues with FDE in VeraCrypt (and why there's really not much point.

====================================
<h4>References</h4>

<p><a href="https://www.veracrypt.fr/en/Home.html">https://www.veracrypt.fr/en/Home.html</a></p>
<p><a href="https://www.veracrypt.fr/en/Documentation.html">https://www.veracrypt.fr/en/Documentation.html</a></p>
<p><a href="https://www.reddit.com/r/VeraCrypt">https://www.reddit.com/r/VeraCrypt</a></p>
<p><a href="https://sourceforge.net/p/veracrypt/discussion/technical/">https://sourceforge.net/p/veracrypt/discussion/technical/</a></p>