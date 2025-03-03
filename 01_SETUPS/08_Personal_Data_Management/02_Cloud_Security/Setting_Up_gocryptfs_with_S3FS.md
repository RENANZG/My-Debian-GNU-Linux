<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Setting Up gocryptfs with S3FS</title>
</head>
<body>

  <h1>Setting Up gocryptfs with S3FS</h1>
  <p>You can use <strong>gocryptfs</strong>, which is also present in <strong>Cryptomator</strong> and <strong>SiriKali</strong>, to encrypt data stored inside a mounted <strong>s3fs</strong> storage.</p>
  <p>Even if someone gains access to your S3 bucket, they cannot decrypt the files without the encryption key. Files are encrypted on your machine before being uploaded to S3, ensuring no plaintext data is exposed.</p>
  <p>Consider using <strong>deniable encryption</strong> in contexts where the ability to deny possession of information is critical.</p>

  <h2>How to Set Up gocryptfs with s3fs</h2>

  <h3>1. Install Dependencies</h3>
  <p>Make sure you have <strong>gocryptfs</strong> installed.</p>
  <pre><code>sudo apt install gocryptfs</code></pre>

  <h3>2. Mount Your S3 Bucket</h3>
  <p>Using <strong>s3fs</strong>, mount the S3 bucket to a local directory (e.g., <code>/mnt/s3-backup</code>).</p>
  <pre><code>s3fs your-bucket-name /mnt/s3-backup -o passwd_file=/root/.passwd-s3fs -o use_path_request_style -o url=https://s3.amazonaws.com</code></pre>

  <h3>3. Initialize gocryptfs Encrypted Filesystem</h3>
  <p>Create an encrypted folder inside the mounted S3 bucket.</p>
  <pre><code>mkdir /mnt/s3-backup/encrypted
gocryptfs -init /mnt/s3-backup/encrypted</code></pre>
  <ul>
    <li>This command initializes an encrypted directory and asks for a password to secure the encryption key.</li>
    <li>The password will be required every time you access the encrypted data.</li>
  </ul>

  <h3>4. Mount the Encrypted Filesystem</h3>
  <p>Mount the encrypted directory to a local folder (e.g., <code>/mnt/encrypted-data</code>) for seamless access.</p>
  <pre><code>mkdir /mnt/encrypted-data
gocryptfs /mnt/s3-backup/encrypted /mnt/encrypted-data</code></pre>
  <ul>
    <li>Any files copied to <code>/mnt/encrypted-data</code> will be automatically encrypted and stored in <code>/mnt/s3-backup/encrypted</code>.</li>
  </ul>

  <h3>5. Perform Backups</h3>
  <p>Now, you can perform backups to the <code>/mnt/encrypted-data</code> directory.</p>

</body>
</html>