## Configure remote access with XRDP
Historically, remote access on Linux was handled through the [VNC (Virtual Network Computing)](https://en.m.wikipedia.org/wiki/Virtual_Network_Computing) platform, such as with [x11vnc](https://github.com/LibVNC/x11vnc). However, recently, the [Remote Desktop Protocol (RDP)](https://en.m.wikipedia.org/wiki/Remote_Desktop_Protocol) developed for Microsoft Windows has gained popularity on Linux using the [XRDP](https://xrdp.org/) tool. Here's how to set it up on Ubuntu.

1. Install XRDP from the Ubuntu repositories.
   ```
   $ sudo apt-get install -y xrdp dbus-x11
   ```
2. After installation, Ubuntu will automatically launch the XRDP service. To confirm that it launched properly, run:
   ```
   $ sudo systemctl status xrdp
   ```
   You should see output similar to the following. The main thing to confirm is that it shows that the service is `active (running)` next to `Active`.
   ```
   ● xrdp.service - xrdp daemon
     Loaded: loaded (/lib/systemd/system/xrdp.service; enabled; vendor prese>
     Active: active (running) since Thu 2021-07-22 06:37:19 CDT; 29min ago
       Docs: man:xrdp(8)
             man:xrdp.ini(5)
    Process: 58107 ExecStartPre=/bin/sh /usr/share/xrdp/socksetup (code=exit>
    Process: 58115 ExecStart=/usr/sbin/xrdp $XRDP_OPTIONS (code=exited, stat>
   Main PID: 58116 (xrdp)
      Tasks: 2 (limit: 8740)
     Memory: 16.6M
     CGroup: /system.slice/xrdp.service
             ├─58116 /usr/sbin/xrdp
             └─58124 /usr/sbin/xrdp
    ```
3. XRDP uses the `/etc/ssl/private/ssl-cert-snakeoil.key` SSL certificate file for authentication. Access to this file is limited to members of the `ssl-cert` group, so we must add the `xrdp` user to that group with this command:
   ```
   $ sudo adduser xrdp ssl-cert
   ```
4. To ensure that XRDP service is enabled, so that it starts on system boot, run:
   ```
   $ sudo systemctl enable xrdp
   ```
   As in step #2 above, you can check the status again to ensure that it's running and `enabled`.
5. To avoid an authentication warning on the Ubuntu machine after logging in (see step #5 below), we must add a [Policy Kit](https://www.freedesktop.org/software/polkit/docs/latest/) rule, as indicated below.
   ```
   $ sudo nano /etc/polkit-1/localauthority.conf.d/02-allow-colord.conf

   polkit.addRule(function(action, subject) {
       if ((action.id == "org.freedesktop.color-manager.create-device" || action.id == "org.freedesktop.color-manager.create-profile" || action.id == "org.freedesktop.color-manager.delete-device" || action.id == "org.freedesktop.color-manager.delete-profile" || action.id == "org.freedesktop.color-manager.modify-device" || action.id == "org.freedesktop.color-manager.modify-profile") && subject.isInGroup("{group}"))
       {
           return polkit.Result.YES;
       }
   });
   ```
   Restart the xrdp service for the change to take effect.
   ```
   $ sudo systemctl restart xrdp
   ```
6. Connect to your Ubuntu machine from another machine. If you are connecting from a Windows machine, you can use the standard Remote Desktop client (Start --> Windows Accessories --> Remote Desktop Connection _or_ Start --> Run --> mstsc.exe). Enter the IP address or hostname of your Ubuntu machine to connect. In a few seconds, you'll be prompted to log in; log in using the same **Ubuntu** username and password that you usually use. (You may also be prompted about SSL certificate validation, which you will need to accept.)

   For connecting from another Ubuntu (or other Linux) machine, there are various RDP clients that you can use, including:
      - [Remmina](https://remmina.org/)*
      - [Vinagre](https://wiki.gnome.org/Apps/Vinagre)*
      - [TigerVNC](https://tigervnc.org/)* - To use TigerVNC with RDP, enter the IP address or hostname in the _viewer_ connection window followed by **:3389**. This means to connect on TCP port 3389, which is the port that RDP listens on.
      - [KRDC](https://apps.kde.org/krdc/)*
      - [X2Go](https://wiki.x2go.org/doku.php)*
      *Indicates that these are available in standard Ubuntu repositories (i.e., install using `sudo apt-get install`).
7. If you get a black (blank) screen on the remote machine after logging in remotely, you'll need to make a simple adjustment on the Ubuntu machine (the one that you are accessing remotely) in the script to launches the X11 window manager for XRDP. Do the following:
   ```
   sudo nano /etc/xrdp/startwm.sh
   ```
   Add the lines below right _below/after_ `if` block concerning `/etc/profile` near the bottom of the file.
   ```
   unset DBUS_SESSION_BUS_ADDRESS
   unset XDG_RUNTIME_DIR
   ```
   After making the change, the file should looking something like this:
   ```
   ...
   if test -r /etc/profile; then
           . /etc/profile
   fi

   unset DBUS_SESSION_BUS_ADDRESS
   unset XDG_RUNTIME_DIR

   test -x /etc/X11/Xsession && exec /etc/X11/Xsession
   exec /bin/sh /etc/X11/Xsession
   ```
   Finally, restart and enable the `xrdp` service to ensure the change takes effect.

[Reference1: https://linuxize.com/post/how-to-install-xrdp-on-ubuntu-18-04/](https://linuxize.com/post/how-to-install-xrdp-on-ubuntu-18-04/)
[Reference2: https://www.tecmint.com/install-xrdp-on-ubuntu/](https://www.tecmint.com/install-xrdp-on-ubuntu/)
[Reference3: https://linoxide.com/xrdp-connect-ubuntu-linux-remote-desktop-via-rdp-from-windows/](https://linoxide.com/xrdp-connect-ubuntu-linux-remote-desktop-via-rdp-from-windows/)
