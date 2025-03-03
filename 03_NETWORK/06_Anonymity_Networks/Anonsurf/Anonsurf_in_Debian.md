<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Anonsurf vs. Custom Torsocks</title>
<style>
  /* Generic style */
  body {
       font-family: Arial, sans-serif;
       line-height: 1.6;
       margin: 1em;
       max-width: 800px;
      /* Limit screen maximum width */
       margin-left: auto;
       margin-right: auto;
  }
   h1, h2, h3, h4, h5, h6 {
       font-weight: bold;
       margin-bottom: 0.5em;
  }
   h1 {
       font-size: 2.5em;
       line-height: 1.2;
  }
   h2 {
       font-size: 2em;
       line-height: 1.3;
  }
   h3 {
       font-size: 1.8em;
       line-height: 1.4;
  }
   p {
       margin: 1em 0;
       text-align: justify;
      /* Justify text for better readability */
  }
   a {
       color: #007bff;
       text-decoration: none;
  }
   a:hover {
       text-decoration: underline;
  }
   blockquote {
       margin: 1em 0;
       padding: 0 1em;
       border-left: 3px solid #ccc;
  }
   blockquote cite {
       font-style: italic;
  }
   img {
       max-width: 100%;
       height: auto;
       display: block;
       margin: 1em 0;
  }
   pre {
       background-color: #f8f9fa;
       border: 1px solid #ccc;
       padding: 1em;
       overflow: auto;
       white-space: pre-wrap;
      /* Wrap long lines in preformatted text */
  }
   code {
       font-family: Consolas, Monaco, 'Andale Mono', monospace;
       font-size: 0.9em;
  }
  /* Tables */
   table {
       width: 100%;
       border-collapse: collapse;
       margin-bottom: 1em;
  }
   th, td {
       border: 1px solid #ccc;
       padding: 0.8em;
  }
   th {
       background-color: #f2f2f2;
  }
  /* Lists */
   ul, ol {
       margin: 1em 0;
       padding-left: 2em;
  }
  /* Miscellaneous */
   sup {
       vertical-align: super;
       font-size: smaller;
  }
   sub {
       vertical-align: sub;
       font-size: smaller;
  }
   @media screen and (max-width: 600px) {
      /* Adjustments for smaller screens */
       body {
           font-size: 16px;
          /* Decrease font size for better readability */
           line-height: 1.5;
           margin: 0.5em;
      }
       h1 {
           font-size: 2em;
      }
       h2 {
           font-size: 1.8em;
      }
       h3 {
           font-size: 1.6em;
      }
       th, td {
           padding: 0.6em;
      }
       pre {
           padding: 0.5em;
      }
  }
</style>
</head>
<body>

  <h1>Anonsurf in Debian</h1>

  <h3>Anonsurf vs. Custom Torsocks</h3>

  <table>
    <thead>
      <tr>
        <th>Feature</th>
        <th>Anonsurf</th>
        <th>Custom Torsocks Implementation</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Ease of Use</strong></td>
        <td>Very easy</td>
        <td>Requires technical expertise</td>
      </tr>
      <tr>
        <td><strong>Control</strong></td>
        <td>Limited</td>
        <td>Full control</td>
      </tr>
      <tr>
        <td><strong>System-Wide Routing</strong></td>
        <td>Yes</td>
        <td>Yes (if configured)</td>
      </tr>
      <tr>
        <td><strong>Kill Switch</strong></td>
        <td>Built-in</td>
        <td>Must be implemented manually</td>
      </tr>
      <tr>
        <td><strong>Customizability</strong></td>
        <td>Limited</td>
        <td>Highly customizable</td>
      </tr>
      <tr>
        <td><strong>Learning Curve</strong></td>
        <td>Low</td>
        <td>High</td>
      </tr>
      <tr>
        <td><strong>Time Required</strong></td>
        <td>Minimal</td>
        <td>Significant</td>
      </tr>
    </tbody>
  </table>

  <h3>How to Install Anonsurf on Debian GNU/Linux</h3>
  
  <p><em>WARNING! THE PARROT OS USES A NEWER KERNEL THAN DEBIAN WHICH CAN LEAD TO SERIOUS LIBRARY PROBLEMS. TO MINIMIZE THE RISK OF BREAKING YOUR DEBIAN SYSTEM, CONSIDER CHECKING COMPATIBILITY AND BACKING UP YOUR SYSTEM.</em></p>
  
  https://packages.debian.org/stable/allpackages
  
  <ol>
    <li>
      <p>Install build dependencies:</p>
      <pre><code>
sudo apt install valac nim gcc libsoup2.4-dev libnotify-dev libvte-2.91-dev  git
      </code></pre>
    </li>
    <li>
      <p>Install runtime dependencies</p>
        <ul>
          <li>
      <pre><code>
sudo apt install sudo pkexec iptables tor nyx
      </code></pre>
      <p>Ensure the following runtime dependencies are already installed indicated by <code>ii</code>:</p>
        <ul>
            <li><code>dpkg -l | grep systemd</code></li>
            <li><code>dpkg -l | grep libglib2.0-0</code></li>
            <li><code>dpkg -l | grep libgtk-3-0</code></li>
            <li><code>dpkg -l | grep libnotify4</code></li>
            <li><code>dpkg -l | grep libsoup2.4-1</code></li>
            <li><code>dpkg -l | grep libvte-2.91-0</code></li>
        </ul>
    </li>
    <li>
      <p>Clone the Anonsurf repository:</p>
      <pre><code>
git clone https://gitlab.com/parrotsec/packages/anonsurf.git
cd anonsurf
      </code></pre>
    </li>
    <li>
      <p>Build and install Anonsurf:</p>
      <pre><code>
make build
sudo make install
      </code></pre>
    </li>
    <li>
      <p>Start Anonsurf:</p>
      <pre><code>
sudo anonsurf start
      </code></pre>
    </li>
    <li>
      <p>Verify that your traffic is routed through Tor:</p>
      <pre><code>
curl https://api.ipify.org?format=json
      </code></pre>
    </li>
  </ol>

  <h3>Testing the Kill Switch</h3>

  <p>To test the kill switch functionality, follow these steps:</p>
  <ol>
    <li>
      <p>Start Anonsurf:</p>
      <pre><code>
sudo anonsurf start
      </code></pre>
    </li>
    <li>
      <p>Verify that your traffic is routed through Tor:</p>
      <pre><code>
curl https://api.ipify.org?format=json
      </code></pre>
    </li>
    <li>
      <p>Stop the Tor service to simulate a connection failure:</p>
      <pre><code>
sudo systemctl stop tor
      </code></pre>
    </li>
    <li>
      <p>Attempt to access the internet. The kill switch should block all traffic:</p>
      <pre><code>
curl https://api.ipify.org?format=json
      </code></pre>
      <p>If the kill switch is working, this command will fail or timeout.</p>
    </li>
    <li>
      <p>Restart Tor and Anonsurf to restore connectivity:</p>
      <pre><code>
sudo systemctl start tor
sudo anonsurf start
      </code></pre>
    </li>
  </ol>

  <h3>Mantain Anonsurf Updated</h3>

  <ol>
    <li>
      <p>Pull the Anonsurf repository:</p>
      <pre><code>
cd anonsurf
git pull https://gitlab.com/parrotsec/packages/anonsurf.git
      </code></pre>
    </li>
    <li>
      <p>Build and install Anonsurf:</p>
      <pre><code>
make build
sudo make install
      </code></pre>
    </li>
  </ol>

  <h3>Anonsurf Usage Information</h3>
  
  <table>
    <thead>
      <tr>
        <th>Option</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>help</code></td>
        <td>Show help table. Try <code>man anonsurf</code> for more info.</td>
      </tr>
      <tr>
        <td><code>start</code></td>
        <td>Start system-wide Tor transparent proxy.</td>
      </tr>
      <tr>
        <td><code>stop</code></td>
        <td>Stop Tor proxy and return to clearnet.</td>
      </tr>
      <tr>
        <td><code>changeid</code></td>
        <td>Change your identity on Tor network randomly.</td>
      </tr>
      <tr>
        <td><code>status</code></td>
        <td>Show current status of connection under Tor proxy.</td>
      </tr>
      <tr>
        <td><code>myip</code></td>
        <td>Check public IP address.</td>
      </tr>
      <tr>
        <td><code>status-boot</code></td>
        <td>Check if Anonsurf is enabled at boot.</td>
      </tr>
      <tr>
        <td><code>enable-boot</code></td>
        <td>Enable Anonsurf at boot.</td>
      </tr>
      <tr>
        <td><code>disable-boot</code></td>
        <td>Disable Anonsurf at boot.</td>
      </tr>
    </tbody>
  </table>

  <h3>References</h3>
  
  <ul>
    <li><a href="https://gitlab.com/parrotsec/packages/anonsurf" target="_blank">Anonsurf GitLab Repository</a></li>
    <li><a href="https://www.parrotsec.org/" target="_blank">Parrot OS Official Website</a></li>
    <li><a href="https://www.torproject.org/" target="_blank">Tor Project</a></li>
  </ul>

</body>
</html>