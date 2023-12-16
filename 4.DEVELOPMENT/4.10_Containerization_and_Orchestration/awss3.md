## Mount AWS S3 Bucket Using `s3fs`
`s3fs` is a [FUSE](http://manpages.ubuntu.com/manpages/precise/man8/mount.fuse.8.html) [(File System in Userspace)](https://en.wikipedia.org/wiki/Filesystem_in_Userspace) extension which allows you to mount an Amazon Web Services (AWS) S3 bucket as native local file system. In other words, no specialized tools are required.

We will use `s3fs` package from the Ubuntu repositories. You can install `s3fs` by building it from source; see [`s3fs` Github repository](https://github.com/s3fs-fuse/s3fs-fuse) for details.

Switch to the `root` user *before* performing the other steps:
```bash
sudo su -
```

Install `s3fs`:
```bash
apt-get install -y s3fs
```

Create the *system* `s3fs` password file using the appropriate AWS S3 credentials (access key ID and secret access key).
```bash
echo AWS_ACCESS_KEY_ID:AWS_SECRET_ACCESS_KEY > /etc/passwd-s3fs
chmod 600 /etc/passwd-s3fs
```
`/etc/passwd-s3fs` can contain multiple sets of credentials (access key ID and secret access key pair combinations) with each on its own line in the file.

Create file system directories to mount S3 bucket and for caching S3 bucket contents. The cache directory is optional, but will improve performance when using S3 bucket with large number of files.
```bash
mkdir /tmp/cache
mkdir /mnt/s3-bucket
chmod 777 /tmp/cache /mnt/s3-bucket
```

Mount the S3 bucket using `s3fs`. (Note: This mount is temporary/non-persistent. See below for mounting the file system on boot using `/etc/fstab`.)
```bash
s3fs s3-bucket-name /mnt/s3-bucket -o passwd_file=/etc/passwd-s3fs -o allow_other,use_cache=/tmp/cache
```
Replace `s3-bucket-name` with the desired S3 bucket for the credentials specified in `/etc/passwd-s3fs` from above. Note that `rw` means to mount the file system as "read-write" (the default setting); if you want to mount as "read-only", change this to `ro`.

Test the S3 bucket file system mount. You should see a "standard" file system listing. And, of course, you can use GUI file managers by navigating to `/mnt/s3-bucket`.
```bash
ls -lrt /mnt/s3-bucket
```

To mount the S3 bucket as your (non-root) user ID, at a *regular* (non-root) command prompt run `id ${USER}`. You should see something *like*:
```bash
id ${USER}
uid=1000(tim) gid=1000(tim) groups=1000(tim),4(adm),24(cdrom),27(sudo),30(dip),33(www-data),46(plugdev),107(input),121(lpadmin),131(lxd),133(sambashare),998(docker)
```
Use the `uid` and `gid` values above to run `s3fs`:
```bash
s3fs s3-bucket-name /mnt/s3-bucket -o passwd_file=/etc/passwd-s3fs -o allow_other,use_cache=/tmp/cache,uid=1000,umask=077,gid=1000
```
If you get an error about not being allowed to use `allow_other` as regular user, you will need to uncomment the `user_allow_other` line in `/etc/fuse.conf` FUSE configuration file.

To configure your system to automatically ("permanently") mount the S3 bucket when it boots, do the following. (This assumes that you are still logged in as `root` user.)
```bash
echo s3fs#s3-bucket-name /mnt/s3-bucket fuse _netdev,rw,nosuid,nodev,allow_other,nonempty,uid=1000,umask=077,uid=1000 0 0 >> /etc/fstab
```
Mount (re-mount) the file system to ensure that it works properly.
```bash
mount -a
```

That\'s it! Now you can transparently work with your S3 buckets just like they are local files.


[Reference1: https://sysadminxpert.com/how-to-mount-s3-bucket-on-linux-instance/](https://sysadminxpert.com/how-to-mount-s3-bucket-on-linux-instance/)
[Reference2: https://winscp.net/eng/docs/guide_amazon_s3_sftp#mounting](https://winscp.net/eng/docs/guide_amazon_s3_sftp#mounting)
