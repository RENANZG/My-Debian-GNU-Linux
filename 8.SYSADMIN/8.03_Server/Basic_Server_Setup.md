# A Simple Guide for Manually Setting Up an Ubuntu Server
### Perform system updates and cleanup
```
sudo apt-get install screen
screen
screen -list
screen -raAd
```
```
apt update && apt upgrade -y && apt autoremove -y && apt autoclean && apt clean
```
```
sudo journalctl --vacuum-size=50M
```
### Install essential packages
```
sudo add-apt-repository universe
```
```
sudo apt install -y curl nano certbot cron ufw htop dialog
```
### Install Speedtest
```
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest
speedtest
```
### Create a SWAP file
```
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo sysctl vm.swappiness=10
sudo sysctl vm.vfs_cache_pressure=50
sudo nano /etc/sysctl.conf
vm.swappiness=10
vm.vfs_cache_pressure=50
```
### Change SSH Port
```
sudo nano /etc/ssh/sshd_config
sudo systemctl reload sshd
```
### SettingUp Cron
```
sudo systemctl enable cron
crontab -e
```
```
00 22 * * * /usr/bin/apt-get update && /usr/bin/apt-get upgrade -y && /usr/bin/apt-get autoremove -y && /usr/bin/apt-get autoclean -y && /usr/bin/apt-get clean -y
30 22 * * * /sbin/shutdown -r
```
### Obtaining SSL Certificate
```
sudo certbot certonly --standalone --preferred-challenges http --agree-tos --email mymail@gmail.com -d sub.domain.com
```
### Installing X-UI
```
bash <(curl -Ls https://raw.githubusercontent.com/alireza0/x-ui/master/install.sh)
```
For Iran Servers
```
wget https://github.com/alireza0/x-ui/releases/download/1.5.5/x-ui-linux-amd64.tar.gz
sudo tar -xvf x-ui-linux-amd64.tar.gz
cd /home/ubuntu/x-ui
sudo chmod +x x-ui.sh
sudo ./x-ui.sh
```
### Installing Pi-Hole
```
curl -sSL https://install.pi-hole.net | bash
pihole -a -p
sudo nano /etc/lighttpd/lighttpd.conf
sudo service lighttpd restart
```
### Erlang MTProto proxy
```
curl -L -o mtp_install.sh https://git.io/fj5ru && bash mtp_install.sh
```
### WARP Proxy
```
bash <(curl -fsSL git.io/warp.sh) proxy
```
WARP XrayConfig
```
{
  "protocol": "socks",
  "settings": {
    "servers": [
      { 
        "address": "127.0.0.1",
        "port":40000
      }
    ]
  },
  "tag":"warp"
},
```
### Hysteria II
```
bash <(curl -fsSL https://raw.githubusercontent.com/deathline94/Hysteria-Installer/main/hysteria.sh)
```
### TUIC v5
```
bash <(curl -fsSL https://raw.githubusercontent.com/deathline94/tuic-v5-installer/main/tuic-installer.sh)
```
### Change Local DNS to PiHole
```
sudo nano /etc/resolv.conf
nameserver 127.0.0.53
sudo systemctl daemon-reload
```
### qbittorrent-nox
```
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt install qbittorrent-nox
sudo nano /etc/systemd/system/qbittorrent-nox.service
qbittorrent-nox
sudo adduser --system --group qbittorrent-nox
sudo adduser root qbittorrent-nox
sudo systemctl daemon-reload
sudo systemctl enable qbittorrent-nox
sudo systemctl start qbittorrent-nox
sudo systemctl status qbittorrent-nox
```
qbittorrent-nox.service
```
[Unit]
Description=qBittorrent-nox
After=network.target

[Service]
Type=forking
ExecStart=/usr/bin/qbittorrent-nox -d --webui-port=8000
Restart=on-failure

[Install]
WantedBy=multi-user.target
```
### Enable UFW
```
sudo nano /etc/default/ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow SSHPORT/tcp
sudo ufw limit SSHPORT/tcp
sudo ufw allow 443
sudo ufw enable
sudo ufw status verbose
sudo systemctl enable ufw
```
### Useful Commands
For tasks like testing network speed and other related measurements.
```
netstat -tulnp
sudo shutdown -r now
cat /proc/cpuinfo
wget https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso
curl -sL network-speed.xyz | bash
```
