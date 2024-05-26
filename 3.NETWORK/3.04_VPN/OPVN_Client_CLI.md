
👷🛠️UNDER CONSTRUCTION🚧🏗<br>


<h3>Configure OpenVPN (CLI) for VPN in Debian</h3>

<h4>1. Download an OpenVPN configuration file for Linux</h4>


<h4>2. See your OpenVPN username and password</h4>


<h4>3. Manually configure OpenVPN (CLI)</h4>


<code>$ sudo apt install openvpn</code>

<code>$ sudo apt install openresolv</code>


<h5>DNS update script</h5>

<pre>

/etc/openvpn/update-resolv-conf



</pre>


or

<pre>
sudo wget "https://raw.githubusercontent.com/RENANZG/5.NETWORK/5.04_VPN/update-resolv-conf.sh" -O "/etc/openvpn/update-resolv-conf"

$ sudo chmod +x "/etc/openvpn/update-resolv-conf"
</pre>

<h4>4. Connect to a VPN server using OpenVPN</h4>


<code>$ sudo openvpn ~/Downloads/config.ovpn</code>

<p>Enter your OpenVPN username and password when prompted. Check for DNS leaks.</p>