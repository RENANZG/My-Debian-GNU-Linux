<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tamper-Proof Encryption with VeraCrypt</title>
    <style>
        body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
        margin: 20px;
        }
        table {
        width: 100%;
        border-collapse: collapse;
        }
        th, td {
        border: 1px solid #000;
        padding: 8px;
        text-align: left;
        }
        th {
        background-color: #f2f2f2;
        }
        pre, code {
        background-color: #f4f4f4;
        padding: 10px;
        border-radius: 5px;
        display: block;
        margin: 2px 0;
        overflow-x: auto;
        }
        pre < code {
        background-color: #f4f4f4;
        padding: 10px;
        border-radius: 5px;
        display: block;
        margin: 2px 0;
        overflow-x: auto;
        }        
        button {
        margin-top: 5px;
        padding: 5px 5px;
        font-size: 1em;
        cursor: pointer;
        }
    </style>
</head>
<body>

  <h4>Tamper-Proof Encryption with VeraCrypt</h4>

  <h5>Step 1: Create a VeraCrypt Volume</h5>

  <p>Open a terminal and create a new VeraCrypt volume:</p>

  <pre><code>$ veracrypt --create /path/to/your_volume.tc</code></pre>
  <button onclick="navigator.clipboard.writeText('veracrypt --create /path/to/your_volume.tc')">Copy</button>

  <p>Follow the prompts to set up the volume:</p>

  <ul>
  <li>Select the volume type (Standard or Hidden).</li>
  <li>Specify the volume size.</li>
  <li>Choose the encryption algorithm and hash algorithm.</li>
  <li>Set the password for the volume.</li>
  <li>Format the volume with the desired filesystem.</li>
  </ul>

  <h5>Step 2: Mount the VeraCrypt Volume</h5>

  <p>To mount the volume, use the following command:</p>

  <pre><code>$ sudo veracrypt /path/to/your_volume.tc /mnt/veracrypt1</code></pre>
  <button onclick="navigator.clipboard.writeText('sudo veracrypt /path/to/your_volume.tc /mnt/veracrypt1')">Copy</button>

  <p>You will be prompted to enter the password for the
  volume.</p>

  <h5>Step 3: Copy Data to the VeraCrypt Volume</h5>

  <p>After mounting the volume, you can copy the data you want
  to protect into the mounted directory:</p>

  <pre><code>$ sudo cp -r /path/to/your_data /mnt/veracrypt1/</code></pre>
  <button onclick="navigator.clipboard.writeText('sudo cp -r /path/to/your_data /mnt/veracrypt1/')">Copy</button>

  <h5>Step 4: Unmount the VeraCrypt Volume</h5>

  <p>Once you have copied your data, unmount the volume to
  ensure it is securely encrypted:</p>

  <pre><code>$ sudo veracrypt -d /mnt/veracrypt1</code></pre>
  <button onclick="navigator.clipboard.writeText('sudo veracrypt -d /mnt/veracrypt1')">Copy</button>

  <h5>Step 5: Set Up Tamper-Proof Mechanisms</h5>

  <p>To make the encryption tamper-proof, you can utilize hash
  functions to detect any unauthorized modifications. Follow
  these steps:</p>

  <ol>
  <li>Create a SHA256 hash of the encrypted volume:</li>
  <pre><code>$ sha256sum /path/to/your_volume.tc > /path/to/your_volume.tc.sha256</code></pre>
  <button onclick="navigator.clipboard.writeText('sha256sum /path/to/your_volume.tc > /path/to/your_volume.tc.sha256')">Copy</button>
  <li>Store the hash securely. This hash will be used to
  verify the integrity of the encrypted volume.</li>
  </ol>

  <h5>Step 6: Verify the Integrity of the Encrypted
  Volume</h5>

  <p>Whenever you want to ensure that the volume has not been
  tampered with, you can verify its hash:</p>

  <pre><code>$ sha256sum -c /path/to/your_volume.tc.sha256</code></pre>
  <button onclick="navigator.clipboard.writeText('sha256sum -c /path/to/your_volume.tc.sha256')">Copy</button>

  <p>If the output says <code>OK</code>, the volume is intact.
  Otherwise, it has been tampered with.</p>

  <h5>Step 7: Automount the Volume at Startup (Optional)</h5>

  <p>If you want to automount the volume at startup, create a
  script with the following content:</p>

  <pre><code>
  #!/bin/bash
  veracrypt --text --non-interactive --password='your_password' --mount /path/to/your_volume.tc /mnt/veracrypt1
  </code></pre>
  <button
  onclick="navigator.clipboard.writeText('#!/bin/bash\nveracrypt --text --non-interactive --password=\'your_password\' --mount /path/to/your_volume.tc /mnt/veracrypt1')">Copy</button>

  <p>Save the script, make it executable, and set it to run at
  startup:</p>

  <pre><code>$ chmod +x /path/to/your_script.sh</code></pre>
  <button onclick="navigator.clipboard.writeText('chmod +x
  /path/to/your_script.sh')">Copy</button>

  <pre><code>$ sudo crontab -e</code></pre>
  <button onclick="navigator.clipboard.writeText('sudo crontab -e')">Copy</button>

  <p>Add the following line to the crontab file to run the
  script at startup:</p>

  <pre><code>@reboot /path/to/your_script.sh</code></pre>
  <button onclick="navigator.clipboard.writeText('@reboot /path/to/your_script.sh')">Copy</button>

  <h5>Step 8: Secure the Script</h5>

  <p>Ensure that only root or authorized users can read the
  script by setting appropriate permissions:</p>

  <pre><code>$ sudo chown root:root /path/to/your_script.sh</code></pre>
  <button onclick="navigator.clipboard.writeText('sudo chown root:root /path/to/your_script.sh')">Copy</button>

  <pre><code>$ sudo chmod 700
  /path/to/your_script.sh</code></pre>
  <button onclick="navigator.clipboard.writeText('sudo chmod 700 /path/to/your_script.sh')">Copy</button>

</body>
</html>