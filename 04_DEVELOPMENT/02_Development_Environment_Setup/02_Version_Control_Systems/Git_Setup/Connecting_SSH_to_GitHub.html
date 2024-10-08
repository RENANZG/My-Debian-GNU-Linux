<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Connecting SSH to GitHub</title>
<style>
  /* Generic style */
  body {
       font-family: Arial, sans-serif;
       line-height: 1.6;
       margin: 10px;
       max-width: 800px; /* Limit screen maximum width */
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
       text-align: justify; /* Justify text for better readability */
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
       white-space: pre-wrap; /* Wrap long lines in preformatted text */
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
           font-size: 16px; /* Font size for better readability */
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

  <h2>Connecting SSH to GitHub</h2>

  <p>Connecting to GitHub via SSH.</p>

  <h2>Step 1: Check for Existing SSH Keys</h2>
  <p>Before creating a new SSH key, check if you already have one. Open your terminal
    and run:</p>
  <pre><code>ls -al ~/.ssh</code></pre>
  <p>This command will list the files in your .ssh directory. Look for files named <code>id_rsa</code>,
    <code>id_ed25519</code>, or similar.</p>

  <h2>Step 2: Generate a New SSH Key</h2>
  <p>If you don’t have an SSH key, you can generate one with the following command:</p>
  <pre><code>ssh-keygen -t ed25519 -C "your_email@example.com"</code></pre>
  <p>Replace <code>your_email@example.com</code> with the email address associated with
    your GitHub account (use a noreply email if you prefer 12345678+USERNAME@users.noreply.github.com ,
    see informations <a herf="https://github.com/settings/emails">here</a>).
    Follow the prompts to save the key.</p>

  <h2>Step 3: Add Your SSH Key to the ssh-agent</h2>
  <p>Start the ssh-agent in the background:</p>
  <pre><code>eval "$(ssh-agent -s)"</code></pre>
  <p>Then, add your SSH private key:</p>
  <pre><code>ssh-add ~/.ssh/id_ed25519</code></pre>
  <p>Make sure to replace <code>id_ed25519</code> with the name of your key file if it’s
    different.</p>

  <h2>Step 4: Add Your SSH Key to Your GitHub Account</h2>
  <p>First, copy your SSH public key to your clipboard:</p>
  <pre><code>cat ~/.ssh/id_ed25519.pub</code></pre>
  <p>Now, log in to GitHub and navigate to <strong>Settings</strong> &gt; <strong>SSH and GPG keys</strong>.
    Click on <strong>New SSH key</strong>, paste your key, and give it a title.
    Or <a herf="https://github.com/settings/keys">click here</a> and go directly to the page.</p>

  <h2>Step 5: Test Your Connection</h2>
  <p>To confirm everything is set up correctly, test the connection:</p>
  <pre><code>ssh -T git@github.com</code></pre>
  <p>You should see a message saying you've successfully authenticated!</p>

  <p>Note: If you see a warning about the authenticity of the host, type <code>yes</code>
  to add GitHub to your list of known hosts. </p>

  <h2>Step 6: Cloning a Repository</h2>
  <p>Once your SSH key is set up, you can easily clone repositories. Use the following
    command:</p>
  <pre><code>git clone git@github.com:USERNAME/REPOSITORY.git</code></pre>
  <p>Replace <code>USERNAME</code> with your GitHub username and <code>REPOSITORY</code>
  with the name of the repository you wish to clone.</p>

  <h2>Step 7: Making Changes and Pushing to GitHub</h2>
  <p>After making changes to your local repository, you can push those changes back to
    GitHub. Use these commands:</p>
  <pre><code>git add .</code></pre>
  <pre><code>git commit -m "Your commit message"</code></pre>
  <pre><code>git push origin main</code></pre>
  <p>Make sure to replace <code>main</code> with the branch name you are working on if
    it's different.</p>

  <h2>Step 8: Pulling Changes from GitHub</h2>
  <p>If you want to update your local repository with changes from GitHub, use:</p>
  <pre><code>git pull origin main</code></pre>
  <p>This command fetches and merges changes from the specified branch on GitHub.</p>

</body>
</html>
