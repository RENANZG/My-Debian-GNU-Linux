# VNC
## Set up VNC over SSH on debian
### Server
Install software:
```
sudo apt install mate-desktop-environment lightdm tightvncserver
```

Then configure lightdm to start-up VNCServer:
```
sudo vim /etc/lightdm/lightdm.conf
    [VNCServer]
    enabled=true
    command=Xvnc
    port=5900
    listen-address=127.0.0.1
    width=1280
    height=960
    depth=16
```

### Client
Add an entry in your SSH config file:
```
Host <server>
    Hostname <ip>
    User <user>
    IdentityFile ~/.ssh/<key>
    IdentitiesOnly yes
    localforward 5900 localhost:5900
```

Then connect to the server to start the tunnel, and connect to 127.0.0.1 to VNCViewer. This should give you a graphical login prompt on the server as if connecting from the console.
