Find Files using the Find command


Find Files using the Find command

find <options> <path> <expression>

For example, if we go back to the runlevel example we used before, here’s how to look for runlevel files using the find command.

find / -name runlevel*

For example, if we search for all the symbolic links on the host, we would issue the following command.

find / -type l

Parameters can be combined, for example if I am looking for all symbolic links whose filenames are ending with “.service” (to isolate all systemd services for example), I would run the following command.

find / -type l -name *.service

To find files on Linux using a pattern, run the following command

find <path> -name ".<extension>"

find / -name "*.js"

Files files on Linux by owner
When deleting a user on your host, you may want to delete all files associated with this user for example.
Sometimes, users create files out of their home directory and deleting a user home directory isn’t sufficient by itself.
As a consequence, to find files created by a certain user on Linux, run the following command
find <path> -user <user>

For example, to find all files owned by “john” on my host, I would run the following command.
find / -user john

Now what if I want to delete all files owned by john with a simple command?
It can be easily be achieved using the delete flag.
find / -user john -delete


Find files on Linux by permissions
To find all files that have full permissions (a 777 given the binary notation), you can run the following command.
find / -perm 777

Find files with find by size
You can specify a “+” if you are looking for files greater than the size specified.

For example, in order to find files greater than 1 GB on your system, run the following command
find / -size +1G

To find files lower than 10 MBs on your system, run the following command
find / -size -10M

Finally, to search for files that are exactly the size specified in the query, you should not append any plus or minus prefixes to the command.
find / -size 1024k

Find files on Linux by modification date
For example, to look for files modified exactly 3 hours ago, you would run the following command.
find / -mtime 3

To find files modified more than one week ago, you would run the following command
find / -mtime +7

To find files modified less than two days ago, you will run the following command
find / -mtime -2

Find files with dynamic depth
As an example, here is how you can restrict files searches to the current directory, with no children directories being browsed.
find / -maxdepth 1

You can obviously combine this command with the name flag in order to search for files with a given name in the current directory.
find . -maxdepth 1 -name *.tar

Chaining find with -exec
Let’s say for example that you want to find all files modified less than one minute ago
find /home/user -mmin -1

Now let’s say that you want to delete all files that were modified less than one minute ago.
You can chain the find command with the -exec option using this syntax.
find /home/user -mmin -1 -exec echo rm -f '{}' \;

When you are ready to delete those files, simply remove the echo command.
find /home/user -mmin -1 -exec rm -f '{}' \;



Find Files on Linux using the Locate command
To install locate on Debian 10, run the following command.
sudo apt-get install mlocate

Updating your mlocate database
sudo updatedb

If you are looking for a given configuration file on your system, an easy way to find it is to provide its complete file name to the locate command.
locate updatedb.conf

For example, to isolate all files starting with runlevel followed by a number, you would run the following command.
locate --regex runlevel[0-9]+



Search files by content using grep

For example. if you are searching all the files having “error” in their content, located in your home directory, you would type
grep -r error /home/user

Let’s say for example that you want to find the file matching the ‘abc’ pattern in one of your files, you would type
grep -r -E "abc.*" --color /home/user



Find files using which
For example, in order to search for files associated to the “ls” command, you would type
which ls
/usr/bin/ls

Locate binaries using whereis

To execute whereis, simply type “whereis” and append the name of your command.
whereis ls

