<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Using Tor as a VPN on Debian</title>
</head>
<body>

  <h1>Using Tor as a VPN on Debian</h1>

  <p><strong>Disclaimer:</strong> Tor is not a VPN. While Tor provides anonymity by routing traffic through multiple nodes, it does not encrypt all traffic like a VPN. Use this guide with caution and understand the limitations of Tor.</p>

  <h2>Introduction</h2>
  <p>The <code>torsocks</code> command allows you to route the network traffic of applications through the Tor network. This is useful for applications that do not natively support SOCKS proxies.</p>

  <h2>Required Packages</h2>
  <ul>
    <li><code>tor</code>: The core Tor service for anonymizing communication.</li>
    <li><code>torsocks</code>: A wrapper to route traffic through the Tor SOCKS proxy.</li>
    <li><code>nyx</code>: A terminal-based Tor status monitor.</li>
  </ul>

  <h2>Setting Up Tor on Debian</h2>

  <h3>Step 1: Install Tor</h3>
  <p>Update your package list and install Tor:</p>
  <pre><code>
sudo apt update
sudo apt install tor
  </code></pre>

  <h3>Step 2: Configure Tor</h3>
  <p>Edit the Tor configuration file to enable the SOCKS and Control ports:</p>
  <pre><code>
sudo nano /etc/tor/torrc
  </code></pre>
  <p>Add the following lines:</p>
  <pre><code>
SOCKSPort 9050
ControlPort 9051
  </code></pre>
  <p><strong>Security Note:</strong> If you enable the ControlPort, ensure it is protected with a password or restricted to local access. Unauthorized access to the ControlPort can compromise your anonymity.</p>

  <h3>Step 3: Restart Tor and Verify</h3>
  <p>Restart the Tor service and verify that it is listening on the configured ports:</p>
  <pre><code>
sudo systemctl enable --now tor.service
sudo netstat -nlt | grep 905
  </code></pre>

  <h2>Installing Nyx</h2>
  <p>Nyx is a terminal-based tool to monitor Tor's status. Install it with:</p>
  <pre><code>
sudo apt install nyx
sudo nyx
  </code></pre>

  <h2>Installing and Configuring Torsocks</h2>

  <h3>Step 1: Install Torsocks</h3>
  <p>Install the <code>torsocks</code> package:</p>
  <pre><code>
sudo apt install torsocks
  </code></pre>

  <h3>Step 2: Configure Torsocks</h3>
  <p>Edit the <code>torsocks</code> configuration file:</p>
  <pre><code>
sudo nano /etc/torsocks.conf
  </code></pre>
  <p>Ensure the following lines are present:</p>
  <pre><code>
TorAddress 127.0.0.1
TorPort 9050
  </code></pre>

  <h3>Step 3: Test Torsocks</h3>
  <p>Verify that your traffic is routed through Tor by comparing your real IP address with the Tor IP address:</p>
  <pre><code>
curl https://api.ipify.org?format=json
torsocks curl https://api.ipify.org?format=json
  </code></pre>
  <p>The second command should return a different IP address, indicating that Tor is working.</p>

  <h2>Tor Control Port Security</h2>
  <p>To secure the ControlPort, add the following line to <code>/etc/tor/torrc</code>:</p>
  <pre><code>
CookieAuthentication 1
  </code></pre>
  <p>This ensures that only processes with access to the Tor authentication cookie can use the ControlPort.</p>

  <h2>Creating a Kill Switch for Torsocks</h2>
  <p>A kill switch ensures that all traffic is blocked if the Tor connection drops. Use the following iptables rules:</p>
  <pre><code>
sudo iptables -P OUTPUT DROP
sudo iptables -A OUTPUT -o lo -j ACCEPT
sudo iptables -A OUTPUT -m state --state ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -d 127.0.0.1 -p tcp --dport 9050 -j ACCEPT
  </code></pre>
  <p><strong>Warning:</strong> Misconfiguring iptables can block all network traffic. Test these rules in a safe environment before relying on them.</p>

  <h3>Persistent Kill Switch</h3>
  <p>To make the kill switch persistent across reboots, save the rules to <code>/etc/iptables/rules.v4</code> and configure your system to apply them on startup.</p>

  <h2>Additional Torsocks Usage Examples</h2>
  <p>Here are some examples of using <code>torsocks</code> with other commands:</p>
  <pre><code>
torsocks wget -qO - https://example.com
torsocks git pull
torsocks ssh user@service.onion
torsocks --isolate ssh user@service.onion
  </code></pre>

  <h2>References</h2>
  <ul>
    <li><a href="https://www.torproject.org/docs/debian.html">Tor Project: Official Tor Documentation</a></li>
    <li><a href="https://wiki.debian.org/Tor">Debian Wiki: Tor Installation Guide</a></li>
    <li><a href="https://manpages.debian.org/unstable/torsocks/torsocks.8.en.html">Debian Man Pages: Torsocks Documentation</a></li>
    <li><a href="https://trac.torproject.org/projects/tor/wiki/doc/TorifyHOWTO/KillSwitch">Tor Project: Kill Switch Documentation</a></li>
    <li><a href="https://github.com/torsocks/torsocks/blob/master/doc/torsocks.8.txt">Torsocks Documentation: Kill Switch Example</a></li>
  </ul>

</body>
</html>