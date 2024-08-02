<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Installing Bubblewrap on Debian</title>
</head>
<style>
   body {
       font-family: Arial, sans-serif;
       margin: 20px;
  }
   h1, h2, h3, h4, h5, h6 {
       font-family: Arial, sans-serif;
  }
   blockquote {
       border-left: 8px solid #fafafa;
       padding: 1rem;
  }
   pre, code {
       background-color: #d6d6d6;
  }
   pre < code {
       background-color: #d6d6d6;
  }
</style>

<body>

  <h1>Installing Bubblewrap on Debian</h1>
  <ul>
    <li><a href="https://github.com/containers/bubblewrap">Bubblewrap GitHub Repository</a></li>
    <li><a href="https://wiki.archlinux.org/title/Bubblewrap">ArchWiki - Bubblewrap</a></li>
    <li><a href="https://wiki.archlinux.org/title/Bubblewrap/Examples">ArchWiki - Bubblewrap Examples</a></li>
    <li><a href="https://man.archlinux.org/man/community/bubblewrap/bwrap.1.en">Bubblewrap Man Page</a></li>
    <li><a href="https://www.linuxfromscratch.org/blfs/view/svn/general/bubblewrap.html">LFS - Bubblewrap</a></li>
    <li><a href="https://github.com/mgord9518/aisap">AISAP - Tool to make sandboxing AppImages easy.</a></li>
    <li><a href="https://man7.org/linux/man-pages/man1/strace.1.html">strace Man Page</a></li>
    <li><a href="https://appimage.org/">AppImage Official</a></li>
    <li><a href="https://docs.appimage.org/user-guide/run-appimages.html">Running AppImages</a></li>
    <li><a href="https://github.com/AppImage/AppImageKit/wiki/FUSE">AppImage Wiki - FUSE</a></li>
    <li><a href="https://man7.org/linux/man-pages/man7/capabilities.7.html">Linux Capabilities Overview</a></li>
    <li><a href="https://man7.org/linux/man-pages/man7/capabilities.7.html#DESCRIPTION">CAP_SYS_ADMIN Capability</a></li>
    <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html">POSIX sh -c</a></li>
    <li><a href="https://www.gnu.org/software/bash/manual/bash.html#Shell-Builtin-Commands">Bash Manual - Shell Builtin Commands</a></li>
  </ul>

  <p>
    Bubblewrap is a tool for constructing sandbox environments. It allows you
    to isolate processes from the rest of the system, though the level
    of security depends on how it's configured.
  </p>

  <h3>Installation Steps</h3>

  <ol>
    <li>Open your terminal.</li>
    <li>Update your package list:
      <pre><code>
      sudo apt update
      </code></pre>
    </li>
    <li>Install Bubblewrap:
      <pre><code>
      sudo apt install bubblewrap
      </code></pre>
    </li>
    
    <h3>Permissions for FUSE (Filesystem in Userspace)</h3>
    
    <P>To ensure that the user running bwrap has the appropriate
     permissions to access FUSE and the relevant directories. You might 
     need to adjust permissions or add the user to the fuse group.</p>
    
    <li>Verify the user permissions for fuse:
      <pre><code>
      fusermount --version
      ls -l /dev/fuse
      sudo usermod -aG fuse $(whoami)
      newgrp fuse
      </code></pre>
    </li>
    <li>Create the group:
      <pre><code>
      sudo groupadd fuse
      ls -l /dev/fuse
      </code></pre>
    </li>
    <li>Log out and log back in, or use the newgrp command
      <pre><code>
      newgrp fuse
      </code></pre>
    </li>
     <li>To ensure the user_allow_other option is enabled in /etc/fuse.conf,
       check it:
      <pre><code>
      ls -l /dev/fuse
      sudo sh -c 'echo "user_allow_other" >> /etc/fuse.conf'
      </code></pre>
     </li>
     <li>To address FUSE-related issues, ensure to do bind mount
       correctly to the sandbox, e.g.:
      <pre><code>
      --ro-bind /etc/mtab /etc/mtab
      </code></pre>
     </li>
  </ol>

  <h3>Commands to debug bwrap:</h3>
  
  <ol>
    <li>
      <p>Run some <code>bwrap</code> commands to test basic functionality and debug:</p>
      <pre><code>
      bwrap --bind / / --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "echo Hello"
      </code></pre>
      <pre><code>
      bwrap --bind /bin /bin --bind /lib /lib --bind /lib64 /lib64 --bind /usr /usr --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "echo Hello"
      </code></pre>
      <pre><code>
      bwrap --bind / / --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "env"
      </code></pre>
      <pre><code>
      bwrap --bind / / --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "ls -l /"
      </code></pre>
      <pre><code>
      bwrap --bind / / --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "ldd /path/to/your/application"
      </code></pre>
      <pre><code>
      bwrap --debug --bind / / --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "echo Hello"
      </code></pre>
      <pre><code>
      bwrap --bind / / --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "ls -l /dev"
      </code></pre>
      <pre><code>
      bwrap --bind / / --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "mount"
      </code></pre>
      <pre><code>
      bwrap --bind / / --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "strace /path/to/your/application"
      </code></pre>
      <pre><code>
      bwrap --bind / / --dev-bind /dev /dev --proc /proc --ro-bind /sys /sys /bin/bash -c "stat /path/to/file"
      </code></pre>
    </li>
    <li>
      <p>Check system logs for any errors related to <code>bwrap</code>:</p>
      <pre><code>
      dmesg | grep bwrap
      </code></pre>
    </li>
    <li>
      <p>Verify that the necessary executables and libraries are present and
        accessible:</p>
      <pre><code>
      which sh
      echo $PATH
      ls -l /bin/bash
      ls -l /bin/sh
      ls -l /usr/bin/sh
      ls -l /bin/echo
      </code></pre>
    </li>
    <li>
      <p>Check for SELinux or AppArmor interference:</p>
      <pre><code>
      # For SELinux
      sudo setenforce 0
      # For AppArmor
      sudo aa-status
      </code></pre>
    </li>
    <li>
      <p>Other useful commands:</p>
      <pre><code>
      # Check for bwrap binary
      which bwrap
      # Verify bwrap version
      bwrap --version
      # List all mounts in the system
      mount
      # Check the current kernel version
      uname -r
      # Check if all necessary libraries are present for a binary
      ldd /bin/bash
      ldd /bin/echo
      # Check if the user has appropriate permissions
      id
      # Verify if bubblewrap is in the user's path
      echo $PATH | grep -q $(dirname $(which bwrap)) && echo "bwrap is in PATH" || echo "bwrap is NOT in PATH"
      </code></pre>
    </li>
  </ol>

  <!-- ############################## -->

  <h2>Bubblewrap Features</h2>

  <p>Bubblewrap (bwrap) is a lightweight sandboxing tool that allows you to
    run applications in isolated environments. Here are some of its key
    security features:</p>

  <h3>Namespaces</h3>

  <p>Namespaces are a Linux kernel feature that isolates and virtualizes system
    resources for a process or a group of processes. Bubblewrap uses several
    types of namespaces:</p>

  <ul>
    <li><strong>PID Namespace:</strong> Isolates the process ID number space,
      ensuring that processes inside the namespace cannot see or interact
      with processes outside.</li>
    <li><strong>Mount Namespace:</strong> Isolates the filesystem mount points,
      allowing processes to have a different view of the filesystem.</li>
    <li><strong>Network Namespace:</strong> Isolates network interfaces, IP
      addresses, routing tables, and firewall rules.</li>
    <li><strong>IPC Namespace:</strong> Isolates interprocess communication
      resources, such as shared memory and message queues.</li>
    <li><strong>User Namespace:</strong> Isolates user and group ID numbers,
      allowing a process to have different user IDs inside and outside
      the namespace.</li>
  </ul>

  <h3>Seccomp Filters</h3>

  <p>Seccomp (secure computing mode) is a Linux kernel feature that restricts
    the system calls a process can make. Bubblewrap uses seccomp filters
    to limit the system calls available to the sandboxed application, reducing
    the potential attack surface.</p>

  <h3>Other Security Features</h3>

  <ul>
    <li><strong>Chroot:</strong> Changes the apparent root directory for the
      sandboxed process, restricting its access to the filesystem.</li>
    <li><strong>Capabilities:</strong> Allows fine-grained control over the
      privileges of processes, reducing the need for full root privileges.</li>
    <li><strong>Resource Limits:</strong> Sets limits on the resources a process
      can use, such as CPU time, memory, and file descriptors.</li>
  </ul>

  <h2>Comparing Bubblewrap</h2>

  <p>While both Bubblewrap and virtual machines provide isolation, they differ
    significantly in their implementation and use cases. AppArmor is another
    tool for mandatory access control in Linux. Here is a comparison table:</p>

  <table>
  <thead>
    <tr>
      <th>Feature</th>
      <th>Bubblewrap</th>
      <th>AppArmor</th>
      <th>SELinux</th>
      <th>Virtual Machines</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Isolation</td>
      <td>Uses Linux namespaces and seccomp filters for process and filesystem
        isolation.</td>
      <td>Uses mandatory access control policies to restrict programs' capabilities.</td>
      <td>Enforces security policies using SELinux contexts and labels for
        fine-grained access control.</td>
      <td>Provides full hardware-level isolation using hypervisors.</td>
    </tr>
    <tr>
      <td>Performance</td>
      <td>Lightweight with minimal overhead since it runs directly on the host
        OS.</td>
      <td>Lightweight, as it applies security profiles to existing processes.</td>
      <td>Generally lightweight but can add overhead due to policy enforcement.</td>
      <td>Heavier due to the overhead of running a separate OS and virtual
        hardware.</td>
    </tr>
    <tr>
      <td>Resource Usage</td>
      <td>Low resource usage as it shares the host OS kernel and resources.</td>
      <td>Low resource usage, as it enforces policies without duplicating OS
        resources.</td>
      <td>Low to moderate resource usage, depending on the complexity of policies
        and number of labels.</td>
      <td>High resource usage as it requires dedicated CPU, memory, and storage
        for each VM.</td>
    </tr>
    <tr>
      <td>Security</td>
      <td>Strong isolation but dependent on the security of the host OS kernel.</td>
      <td>Provides granular security controls, reducing the risk of unauthorized
        access.</td>
      <td>Offers comprehensive and granular security controls, making it highly
        secure when properly configured.</td>
      <td>Very strong isolation, as each VM is a separate instance with its
        own OS.</td>
    </tr>
    <tr>
      <td>Flexibility</td>
      <td>Highly flexible for running isolated processes and applications within
        the same OS.</td>
      <td>Flexible in defining policies, but depends on predefined profiles
        or custom policy creation.</td>
      <td>Highly flexible with extensive policy options and context definitions
        for various use cases.</td>
      <td>Ideal for running different operating systems and completely isolated
        environments.</td>
    </tr>
    <tr>
      <td>Startup Time</td>
      <td>Very fast, almost instantaneous.</td>
      <td>Very fast, as it applies profiles to already running processes.</td>
      <td>Fast, as it operates within the existing OS but can vary with policy
        complexity.</td>
      <td>Slower, as it involves booting an entire operating system.</td>
    </tr>
    <tr>
      <td>Use Cases</td>
      <td>Ideal for isolating applications, testing, and development environments.</td>
      <td>Ideal for securing specific applications and limiting their permissions.</td>
      <td>Best for enforcing strict security policies across the entire system
        and for compliance requirements.</td>
      <td>Best for running different OSes, full application stacks, and legacy
        software.</td>
    </tr>
    <tr>
      <td>References</td>
      <td><a href="https://github.com/containers/bubblewrap">Bubblewrap</a></td>
      <td><a href="https://gitlab.com/apparmor/apparmor">AppArmor</a></td>
      <td><a href="https://selinuxproject.org/page/Main_Page">SELinux</a></td>
      <td><a href="https://www.linux-kvm.org/page/Main_Page">KVM-QEMU</a></td>
    </tr>
  </tbody>
  </table>
  
  <h3>Security Vulnerabilities (CVEs)</h3>

  <p>Like any software, Bubblewrap has had some security vulnerabilities.
    However, it has a relatively low number of serious CVEs compared to
    more complex systems like virtual machines. It's important to keep
    Bubblewrap and the underlying system up to date to mitigate these risks.
    For detailed and updated information on CVEs related to Bubblewrap,
    refer to the official security advisories and CVE databases.</p>

  <h2>Creating a Sandboxed Folder for Bubblewrap Installations</h2>

  <p>Creating a sandboxed folder for Bubblewrap installations is not strictly
    necessary, but it can be beneficial depending on your specific use
    case and security requirements.</p>

  <h3>Advantages of Using a Sandboxed Folder</h3>

  <ul>
    <li><strong>Isolation:</strong> By isolating applications in a dedicated
      folder, you restrict their access to the entire filesystem.</li>
    <li><strong>Security:</strong> Sandboxing applications can mitigate risks
      from potentially malicious software by limiting their access to sensitive
      system resources.</li>
    <li><strong>Organization:</strong> Managing sandboxed applications becomes
      easier when they are contained in a separate, well-defined folder.</li>
  </ul>

  <!-- ############################## -->

  <h2>Basic Configuration</h2>

  <p>
    To run an application with Bubblewrap, use the <code>bwrap</code> command
    followed by the command you want to execute. Here are some examples
    with AppImages:
  </p>

  <h3>Example 1: Running an AppImage with Bubblewrap</h3>

  <pre><code>
  bwrap --dev-bind / / --ro-bind $HOME/myapp.AppImage /app sh -c '/app/myapp.AppImage'
  </code></pre>

  <p>
    This command runs <code>myapp.AppImage</code> inside a sandbox where
    the entire root filesystem is bind-mounted read-write, and the AppImage
    itself is bind-mounted read-only into the <code>/app</code> directory.
  </p>

  <h3>Example 2: Running an AppImage with Display Access</h3>

  <pre><code>
  bwrap --dev-bind / / --ro-bind $HOME/myapp.AppImage /app sh -c 'export DISPLAY=:0 && /app/myapp.AppImage'
  </code></pre>

  <p>
    This command allows <code>myapp.AppImage</code> to access the X server
    by setting the display environment variable (<code>DISPLAY=:0</code>)
    within the sandbox.
  </p>

  <h3>Example 3: Limiting Filesystem Access</h3>

  <pre><code>
  bwrap --ro-bind $HOME/myapp.AppImage /app sh -c '/app/myapp.AppImage'
  </code></pre>

  <p>
    This command provides read-only access to
    <code>myapp.AppImage</code> within the sandbox, but does not provide
    full root filesystem access which may be required by some applications.
  </p>

  <h3>Example 4: Ensuring Executable Permissions</h3>

  <pre><code>
  bwrap --ro-bind $HOME/myapp.AppImage /app sh -c '/app/myapp.AppImage'
  </code></pre>

  <p>
    This command runs <code>myapp.AppImage</code> assuming it is already
    executable. If not, ensure it is executable before running it within
    Bubblewrap.
  </p>

  <h3>Example 5: Using Bubblewrap with AppImages in Automation</h3>

  <pre><code>
  if bwrap --ro-bind $HOME/myapp.AppImage /app sh -c '/app/myapp.AppImage'; then
    echo "AppImage executed successfully."
  else
    echo "Error executing AppImage."
  fi
  </code></pre>

  <p>
    This script checks the execution status of
    <code>myapp.AppImage</code> within the Bubblewrap sandbox and provides
    appropriate feedback.
  </p>

  <!-- ############################## -->

  <h2>How to Create a Sandboxed Folder for Bubblewrap Installations</h2>

  <ol>
    <li><strong>Choose a Location:</strong> Decide where to create the sandboxed
      folder, such as in your home directory (<code>~/sandbox</code>) or
      another suitable location.</li>
    <li><strong>Set Permissions:</strong> Ensure appropriate permissions are
      set for the sandboxed folder, limiting write access as needed.</li>
    <li><strong>Configure Bubblewrap:</strong> Specify this sandboxed folder
      when using Bubblewrap to bind-mount files or execute sandboxed applications.</li>
  </ol>

  <h3>Example Usage with Bubblewrap and a Sandboxed Folder</h3>

  <p>Assuming you have a sandboxed folder named <code>~/sandbox</code>:</p>

  <pre><code>
  bwrap --ro-bind $HOME/myapp.AppImage \
  ~/sandbox/myapp sh -c '~/sandbox/myapp/myapp.AppImage'
  </code></pre>

  <p>
    This command binds <code>myapp.AppImage</code> as read-only into <code>~/sandbox/myapp</code>    and executes it from within the sandboxed folder.
  </p>

  <h4>Using <code>strace</code> with <code>bwrap</code></h4>

  <p>Strace could help to see what files the program you are trying to sandbox
    needs access to. It can be installed using <code>apt install
    strace</code> .</p>

  <h4>Step 1: Running <code>strace</code> on the Program</h4>

  <p>To monitor the system calls made by a program and identify which files
    it accesses, you can use <code>strace</code> with the <code>-e trace=file</code>    option. For example, to trace the program <code>example_program</code>:</p>
  <pre><code>strace -e trace=file -o strace_output.txt example_program</code></pre>
  <p>This command will save the output to <code>strace_output.txt</code>.</p>

  <h4>Step 2: Interpreting the <code>strace</code> Output</h4>

  <p>The <code>strace</code> output will include lines for each file operation.
    Look for lines containing <code>open</code>, <code>access</code>, <code>stat</code>,
    and similar system calls. Here is an example line from <code>strace</code>:</p>
  <pre><code>openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3</code></pre>
  <p>This line shows that the program tried to open <code>/etc/ld.so.cache</code>.</p>

  <h4>Step 3: Creating <code>bwrap</code> Rules</h4>

  <p>Based on the <code>strace</code> output, you can create <code>bwrap</code>    rules to grant the necessary file access. For example, to allow read-only
    access to <code>/etc/ld.so.cache</code>, you can use:</p>

  <pre><code>
  bwrap --ro-bind /etc/ld.so.cache /etc/ld.so.cache example_program
  </code></pre>

  <p>Here is a more comprehensive example based on multiple file accesses:</p>

  <pre><code>
  bwrap \
    --ro-bind /etc/ld.so.cache /etc/ld.so.cache \
    --ro-bind /lib/x86_64-linux-gnu /lib/x86_64-linux-gnu \
    --ro-bind /usr/lib/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu \
    --dev /dev \
    example_program
  </code></pre>

  <p>This example binds necessary libraries and device files in read-only
    mode.
  </p>

  <h4>Step 4: Testing and Iteration</h4>

  <p>After setting up the initial <code>bwrap</code> configuration, run the
    program within the sandbox to ensure it works correctly. If it fails,
    re-examine the <code>strace</code> output for missing file accesses
    and update the <code>bwrap</code> rules accordingly.</p>

  <!-- ############################## -->

  <h2>FUSE (Filesystem in Userspace) Error</h2>

  <p><em>Warning! It may cause troubles in your system.</em></p>

  <p>AppImages require FUSE version 2 to run. Filesystem in Userspace (FUSE)
    is a system that lets non-root users mount filesystems.</p>

  <p>The error message "fusermount: mount failed: Operation not permitted"
    indicates that the AppImage requires FUSE (Filesystem in Userspace)
    to mount itself, but FUSE is not available or not properly set up within
    the <code>bwrap</code> environment.</p>

  <p>To address this issue, ensure FUSE is installed and working on your system:</p>

  <pre><code>
  sudo modprobe -v fuse
  lsmod | grep fuse
  sudo apt-get install fuse
  </code></pre>

  <p>Create the fuse group is necessary for FUSE operations.</p>

  <pre><code>
  sudo groupadd fuse
  sudo usermod -aG fuse $(whoami)
  newgrp fuse
  ls -l /dev/fuse
  </code></pre>

  <p>To ensure the user_allow_other option is enabled in /etc/fuse.conf</p>

  <pre><code>
  ls -l /dev/fuse
  sudo sh -c 'echo "user_allow_other" >> /etc/fuse.conf'
  </code></pre>

  <p>AppImage extraction workround.</p>

  <p>Alternatively, run the AppImage with <code>--appimage-extract</code>    to extract its contents manually, then run the extracted application
    without FUSE:</strong>
  </p>

  <pre><code>
  /home/user/.local/share/AppImages/myapp/myapp.AppImage --appimage-extract
  </code></pre>

  <p>This will create a directory named <code>squashfs-root</code> containing
    the extracted files. You can then run the application directly from
    this directory.</p>

  <h2>Official Demos</h2>

  <p>bubblewrap-shell.sh</p>

  <pre><code>
  #!/usr/bin/env bash
  # Use bubblewrap to run /bin/sh reusing the host OS binaries (/usr), but with
  # separate /tmp, /home, /var, /run, and /etc. For /etc we just inherit the
  # host&#039;s resolv.conf, and set up &quot;stub&quot; passwd/group files.  Not sharing
  # /home for example is intentional.  If you wanted to, you could design
  # a bwrap-using program that shared individual parts of /home, perhaps
  # public content.
  #
  # Another way to build on this example is to remove --share-net to disable
  # networking.
  set -euo pipefail
  (exec bwrap --ro-bind /usr /usr \
      --dir /tmp \
      --dir /var \
      --symlink ../tmp var/tmp \
      --proc /proc \
      --dev /dev \
      --ro-bind /etc/resolv.conf /etc/resolv.conf \
      --symlink usr/lib /lib \
      --symlink usr/lib64 /lib64 \
      --symlink usr/bin /bin \
      --symlink usr/sbin /sbin \
      --chdir / \
      --unshare-all \
      --share-net \
      --die-with-parent \
      --dir /run/user/$(id -u) \
      --setenv XDG_RUNTIME_DIR &quot;/run/user/`id -u`&quot; \
      --setenv PS1 &quot;bwrap-demo$ &quot; \
      --file 11 /etc/passwd \
      --file 12 /etc/group \
      /bin/sh) \
    11&lt; &lt;(getent passwd $UID 65534) \
    12&lt; &lt;(getent group $(id -g) 65534)
  </code></pre>

  <p>flatpak-run.sh</p>

  <pre><code>
#!/usr/bin/env bash
  # For this to work you first have to run these commands:
  #  curl -O http://sdk.gnome.org/nightly/keys/nightly.gpg
  #  flatpak --user remote-add --gpg-key=nightly.gpg gnome-nightly http://sdk.gnome.org/nightly/repo/
  #  flatpak --user install gnome-nightly org.gnome.Platform
  #  flatpak --user install gnome-nightly org.gnome.Weather

  mkdir -p ~/.var/app/org.gnome.Weather/cache ~/.var/app/org.gnome.Weather/config ~/.var/app/org.gnome.Weather/data

  (
    exec bwrap \
    --ro-bind ~/.local/share/flatpak/runtime/org.gnome.Platform/x86_64/master/active/files /usr \
    --lock-file /usr/.ref \
    --ro-bind ~/.local/share/flatpak/app/org.gnome.Weather/x86_64/master/active/files/ /app \
    --lock-file /app/.ref \
    --dev /dev \
    --proc /proc \
    --dir /tmp \
    --symlink /tmp /var/tmp \
    --symlink /run /var/run \
    --symlink usr/lib /lib \
    --symlink usr/lib64 /lib64 \
    --symlink usr/bin /bin \
    --symlink usr/sbin /sbin \
    --symlink usr/etc /etc \
    --dir /run/user/`id -u` \
    --ro-bind /etc/machine-id /usr/etc/machine-id \
    --ro-bind /etc/resolv.conf /run/host/monitor/resolv.conf \
    --ro-bind /sys/block /sys/block \
    --ro-bind /sys/bus /sys/bus \
    --ro-bind /sys/class /sys/class \
    --ro-bind /sys/dev /sys/dev \
    --ro-bind /sys/devices /sys/devices \
    --dev-bind /dev/dri /dev/dri \
    --bind /tmp/.X11-unix/X0 /tmp/.X11-unix/X99 \
    --bind ~/.var/app/org.gnome.Weather ~/.var/app/org.gnome.Weather \
    --bind ~/.config/dconf ~/.config/dconf \
    --bind /run/user/`id -u`/dconf /run/user/`id -u`/dconf  \
    --unshare-pid \
    --setenv XDG_RUNTIME_DIR &amp;quot;/run/user/`id -u`&amp;quot; \
    --setenv DISPLAY :99 \
    --setenv GI_TYPELIB_PATH /app/lib/girepository-1.0 \
    --setenv GST_PLUGIN_PATH /app/lib/gstreamer-1.0 \
    --setenv LD_LIBRARY_PATH /app/lib:/usr/lib/GL \
    --setenv DCONF_USER_CONFIG_DIR .config/dconf \
    --setenv PATH /app/bin:/usr/bin \
    --setenv XDG_CONFIG_DIRS /app/etc/xdg:/etc/xdg \
    --setenv XDG_DATA_DIRS /app/share:/usr/share \
    --setenv SHELL /bin/sh \
    --setenv XDG_CACHE_HOME ~/.var/app/org.gnome.Weather/cache \
    --setenv XDG_CONFIG_HOME ~/.var/app/org.gnome.Weather/config \
    --setenv XDG_DATA_HOME ~/.var/app/org.gnome.Weather/data \
    --file 10 /run/user/`id -u`/flatpak-info \
    --bind-data 11 /usr/etc/passwd \
    --bind-data 12 /usr/etc/group \
    --seccomp 13 \
    /bin/sh) \
    11&amp;lt; &amp;lt;(getent passwd $UID 65534 ) \
    12&amp;lt; &amp;lt;(getent group $(id -g) 65534)  \
    13&amp;lt; `dirname $0`/flatpak.bpf \
    10&amp;lt;&amp;lt;EOF
  [Application]
  name=org.gnome.Weather
  runtime=runtime/org.gnome.Platform/x86_64/master
  EOF
  </code></pre>

  <p>userns-block-fd.py</p>

  <pre><code>
  #!/usr/bin/env python3

  import os, select, subprocess, sys, json

  pipe_info = os.pipe()
  userns_block = os.pipe()

  pid = os.fork()

  if pid != 0:
    os.close(pipe_info[1])
    os.close(userns_block[0])

    select.select([pipe_info[0]], [], [])

    data = json.load(os.fdopen(pipe_info[0]))
    child_pid = str(data[&#039;child-pid&#039;])

    subprocess.call([&quot;newuidmap&quot;, child_pid, &quot;0&quot;, str(os.getuid()), &quot;1&quot;])
    subprocess.call([&quot;newgidmap&quot;, child_pid, &quot;0&quot;, str(os.getgid()), &quot;1&quot;])

    os.write(userns_block[1], b&#039;1&#039;)
  else:
    os.close(pipe_info[0])
    os.close(userns_block[1])

    os.set_inheritable(pipe_info[1], True)
    os.set_inheritable(userns_block[0], True)

    args = [&quot;bwrap&quot;,
            &quot;bwrap&quot;,
            &quot;--unshare-all&quot;,
            &quot;--unshare-user&quot;,
            &quot;--userns-block-fd&quot;, &quot;%i&quot; % userns_block[0],
            &quot;--info-fd&quot;, &quot;%i&quot; % pipe_info[1],
            &quot;--bind&quot;, &quot;/&quot;, &quot;/&quot;,
            &quot;cat&quot;, &quot;/proc/self/uid_map&quot;]

    os.execlp(*args)
  </code></pre>

</body>

</html>