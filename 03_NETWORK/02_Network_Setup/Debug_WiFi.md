<h4>Debug WiFi by OSI Layers</h4>

<h5>Application Layer (7)</h5>
<ul>
  <li><code><span>$</span> nmcli radio wifi off</code></li>
  <li><code><span>$</span> nmcli radio wifi on</code></li>
  <li><code><span>$</span> sudo ls /etc/NetworkManager/</code></li>
  <li><code><span>$</span> sudo cat /etc/NetworkManager/NetworkManager.conf</code></li>
  <li><code><span>$</span> sudo journalctl -u NetworkManager</code></li>
  <li><code><span>$</span> sudo journalctl -xe NM_CONNECTION=123456 + NM_DEVICE=eth0</code></li>
  <li><code><span>$</span> sudo systemctl status NetworkManager.service</code></li>
  <li><code><span>$</span> sudo systemctl restart NetworkManager.service</code></li>
  <li><code><span>$</span> sudo systemctl status resolvconf.service</code></li>
  <li><code><span>$</span> sudo systemctl restart resolvconf.service</code></li>
  <li><code><span>$</span> sudo systemctl status systemd-resolved.service</code></li>
  <li><code><span>$</span> sudo systemctl restart systemd-resolved.service</code></li>
</ul>

<h5>Presentation Layer (6)</h5>
<ul>
  <li><code><span>$</span> sudo cat /etc/resolv.conf</code></li>
  <li><code><span>$</span> sudo cat /run/resolvconf/resolv.conf</code></li>
  <li><code><span>$</span> sudo cat /lib/systemd/resolv.conf</code></li>
  <li><code><span>$</span> sudo cat /etc/systemd/resolved.conf</code></li>
  <li><code><span>$</span> sudo cat /run/systemd/resolve/stub-resolv.conf</code></li>
  <li><code><span>$</span> sudo cat /var/run/NetworkManager/resolv.conf</code></li>
  <li><code><span>$</span> echo "blacklist conflicting_driver" | sudo tee -a /etc/modprobe.d/blacklist.conf</code></li>
</ul>

<h5>Network Layer (5)</h5>
<ul>
  <li><code><span>$</span> ip address</code></li>
  <li><code><span>$</span> ip route</code></li>
  <li><code><span>$</span> nmcli device show</code></li>
  <li><code><span>$</span> nmcli dev wifi</code></li>
  <li><code><span>$</span> nmcli device show wlan0 | grep IP4.DNS</code></li>
  <li><code><span>$</span> sudo journalctl -b | grep -i net</code></li>
  <li><code><span>$</span> ping -c3 8.8.8.8</code></li>
  <li><code><span>$</span> ping localhost</code></li>
  <li><code><span>$</span> traceroute 8.8.8.8</code></li>
  <li><code><span>$</span> traceroute localhost</code></li>
  <li><code><span>$</span> sudo grep -c dnsmasq /var/log/*</code></li>
  <li><code><span>$</span> sudo grep -c dnsmasq /var/log/syslog</code></li>
  <li><code><span>$</span> sudo dnsmasq --no-daemon --log-queries=extra --log-dhcp --log-debug -C /etc/dnsmasq.conf</code></li>
  <li><code><span>$</span> sudo dhclient -v</code></li>
  <li><code><span>$</span> sudo apt install resolvconf</code></li>
  <li><code><span>$</span> sudo resolvconf --list</code></li>
  <li><code><span>$</span> sudo resolvconf --enable-updates</code></li>
  <li><code><span>$</span> sudo resolvconf -u</code></li>
  <li><code><span>$</span> sudo systemctl status resolvconf.service</code></li>
  <li><code><span>$</span> sudo systemctl restart resolvconf.service</code></li>
  <li><code><span>$</span> sudo apt install systemd-resolved</code></li>
  <li><code><span>$</span> sudo systemctl status systemd-resolved.service</code></li>
  <li><code><span>$</span> sudo systemctl restart systemd-resolved.service</code></li>
</ul>

<h5>Data Link Layer (4)</h5>
<ul>
  <li><code><span>$</span> ip link</code></li>
  <li><code><span>$</span> sudo iwconfig wlan0</code></li>
  <li><code><span>$</span> sudo iwconfig eth0</code></li>
  <li><code><span>$</span> sudo ifconfig wlan0</code></li>
</ul>

<h5>Physical Layer (3)</h5>
<ul>
  <li><code><span>$</span> sudo ifconfig wlan0 down</code></li>
  <li><code><span>$</span> sudo ifconfig wlan0 up</code></li>
  <li><code><span>$</span> sudo ifconfig eth0 down</code></li>
  <li><code><span>$</span> sudo ifconfig eth0 up</code></li>
  <li><code><span>$</span> sudo dmesg | grep iwl</code></li>
  <li><code><span>$</span> sudo dmesg | grep rtw</code></li>
  <li><code><span>$</span> sudo dmesg | grep ath</code></li>
  <li><code><span>$</span> lsusb</code></li>
  <li><code><span>$</span> ls /sys/bus/usb/devices</code></li>
</ul>

<h5>Data Link Layer (2)</h5>
<ul>
  <li><code><span>$</span> ip link</code></li>
  <li><code><span>$</span> sudo iwconfig eth0</code></li>
  <li><code><span>$</span> sudo iwconfig wlan0</code></li>
  <li><code><span>$</span> sudo ifconfig wlan0</code></li>
</ul>

<h5>Physical Layer (1)</h5>
<ul>
  <li><code><span>$</span> sudo ifconfig wlan0 down</code></li>
  <li><code><span>$</span> sudo ifconfig wlan0 up</code></li>
  <li><code><span>$</span> sudo ifconfig eth0 down</code></li>
  <li><code><span>$</span> sudo ifconfig eth0 up</code></li>
  <li><code><span>$</span> sudo dmesg | grep iwl</code></li>
  <li><code><span>$</span> sudo dmesg | grep rtw</code></li>
  <li><code><span>$</span> sudo dmesg | grep ath</code></li>
  <li><code><span>$</span> lsusb</code></li>
  <li><code><span>$</span> ls /sys/bus/usb/devices</code></li>
  <li><code><span>$</span> grep . /sys/bus/usb/devices/*/power/autosuspend</code></li>
  <li><code><span>$</span> grep . /sys/bus/usb/devices/*/power/control</code></li>
  <li><code><span>$</span> grep . /sys/bus/usb/devices/*/power/wakeup</code></li>
  <li><code><span>$</span> sudo modprobe -rv [WIFIMODULE] && sudo modprobe -v [WIFIMODULE]</code></li>
</ul>

*SIOCSIFFLAGS<br>
*RTNETLINK<br>

<!-- ##### -->

<h5>∙ Getting help</h5>

<ol>
  <li><strong>Enable Debugging Features:</strong>
    <ul>
      <li>Depending on your Linux distribution, you may need to enable specific debug options. For example, you can enable debug logging for NetworkManager by editing its configuration file:</li>
      <li><code>sudo nano /etc/NetworkManager/NetworkManager.conf</code></li>
      <li>Add the following lines under the <code>[logging]</code> section:</li>
      <li><pre><code>[logging]
level=DEBUG</code></pre></li>
      <li>Save the file and restart NetworkManager:</li>
      <li><code>sudo systemctl restart NetworkManager</code></li>
    </ul>
  </li>
  <li><strong>Send Kernel Logs with Debugging On:</strong>
    <ul>
      <li>After enabling debugging features, gather kernel logs and NetworkManager logs:</li>
      <li><code>sudo dmesg | grep wifi > kernel_logs.txt</code></li>
      <li><code>sudo journalctl -u NetworkManager > nm_logs.txt</code></li>
    </ul>
  </li>
  <li><strong>Be Specific About Hardware and Software:</strong>
    <ul>
      <li>Mention the specific hardware details such as the Wi-Fi adapter model, firmware version, Linux distribution, and kernel version.</li>
    </ul>
  </li>
  <li><strong>Describe What Doesn't Work and What You've Tried:</strong>
    <ul>
      <li>Clearly explain the issues you are facing with your Wi-Fi, such as connection drops, slow speeds, or inability to connect. Mention any troubleshooting steps you've already taken, such as restarting the router, checking network settings, or reinstalling drivers.</li>
    </ul>
  </li>
  <li><strong>Include Wireless Captures:</strong>
    <ul>
      <li>Use tools like Wireshark to capture wireless traffic for further analysis.</li>
      <li>Install Wireshark if not already installed:</li>
      <li><code>sudo apt install wireshark</code></li>
      <li>Capture Wi-Fi packets on your specific interface (e.g., wlan0):</li>
      <li><code>sudo tshark -i wlan0 -w wifi_capture.pcap</code></li>
    </ul>
  </li>
  <li><strong>Contacting Support or Forums:</strong>
    <ul>
      <li>Once you have gathered all the necessary information, consider reaching out to the official support channels of your Wi-Fi adapter's manufacturer, Linux distribution forums, or community support forums like Stack Exchange or Reddit. Provide all the details you've gathered to get more targeted assistance.</li>
    </ul>
  </li>
</ol>
