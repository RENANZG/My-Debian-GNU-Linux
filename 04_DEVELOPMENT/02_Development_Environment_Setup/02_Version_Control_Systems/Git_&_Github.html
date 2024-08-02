<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Git & Codeberg Tutorial</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }
    th, td {
      border: 1px solid #ccc;
      padding: 8px;
      text-align: left;
    }
    th {
      background-color: #f2f2f2;
    }
    code {
      background-color: #f2f2f2;
      padding: 2px 4px;
      border-radius: 4px;
    }
    h2, h3, h4 {
      margin-top: 20px;
    }
    hr {
      margin: 20px 0;
      border: none;
      border-top: 1px solid #ccc;
    }
    pre {
      background-color: #f8f8f8;
      padding: 8px;
      border-radius: 4px;
      white-space: pre-wrap;
    }
    ol {
      padding-left: 20px;
    }
    a {
      color: #007bff;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
    }
    img {
      max-width: 100%;
      height: auto;
    }
  </style>
</head>
<body>

<h2>Git</h2>

<h3>Installing Git on Debian</h3>
<code>$ sudo apt install git</code>


<h2>Git and GitHub Authentication Methods</h2>

<h3>Common Authentication Methods</h3>

<p>People commonly authenticate to Git and GitHub using:</p>

<ul>
  <li><strong>SSH Keys:</strong> SSH keys provide secure authentication without requiring a username and password for every Git interaction. Users generate an SSH key pair and upload the public key to their GitHub account or other Git hosting services.</li>
  
  <li><strong>Personal Access Tokens (PATs):</strong> PATs are alternative credentials used in place of passwords when performing Git operations over HTTPS. Users generate PATs through their GitHub account settings and use them as passwords in Git commands or Git GUI applications.</li>
</ul>

<hr>

<h3>Tools and Environments</h3>

<p>People interact with Git and GitHub using various tools and environments:</p>

<ul>
  <li><strong>Command Line Interface (CLI):</strong> Git commands are commonly executed through the terminal or command prompt, providing full control over Git operations and configurations.</li>
  
  <li><strong>Integrated Development Environments (IDEs):</strong> IDEs like Visual Studio Code (VSCode) often integrate Git functionality directly, allowing users to manage repositories, perform commits, and push changes without leaving the IDE environment.</li>
  
  <li><strong>Text Editors:</strong> Advanced text editors like Vim or NeoVim also support Git operations through plugins or native integrations, offering a streamlined workflow for editing and version control.</li>
</ul>

<h3>Github Configuration</h3>

<a href="https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent">Github  - Generating a new SSH key and adding it to the ssh-agent
</a>

<h3>Using SSH for Secure Authentication</h3>
<p>SSH offers stronger authentication and security compared to HTTPS. Follow these steps to set up SSH:</p>

<ol>
  <li>Generate an SSH key pair:</li>
  <pre><code>ssh-keygen -t rsa -b 4096 -C "your.email@example.com" -f /$HOME/.ssh/git_rsa</code></pre>
  <p>This saves the keys as <code>~/.ssh/git_rsa</code> (private key) and <code>~/.ssh/git_rsa.pub</code> (public key).</p>

  <li>Upload the public key to your Git hosting service:</li>
  <p>Copy the contents of <code>~/.ssh/id_rsa.pub</code> and add it to your Git hosting service account (e.g., GitHub, Codeberg).</p>
  
  <li>Configure Git to use SSH:</li>
  <pre>git remote set-url origin git@github.com:user/repo_name.git</pre>
</ol>

<ul>
  <li>Security Considerations:</li>
  <ul>
  <li>The private key (~/.ssh/id_rsa or ~/.ssh/my_custom_key) should be kept secure and not shared. It is used by your SSH client to authenticate you to the remote server.</li>
  <li>SSH Keys: Using SSH keys for authentication provides stronger security than storing passwords or using PATs (Personal Access Tokens). SSH keys are preferred for secure authentication with Git hosting services like GitHub and Codeberg.</li>
  <li>Two-Factor Authentication (2FA): Enable 2FA on your Git hosting service accounts for an added layer of security, especially when using HTTPS or PATs.</li>
  </ul>
</ul>

<hr>

<h3>Basic Configuration for New Git Repository (Outdated)</h3>

<p>Set user name and e-mail address (required to do 'commit')</p>
<pre>
git config [--global] user.email "your.email@example.com"
git config [--global] user.name "Your Name"
</pre>

<p>Store/cache password (alternative method)</p>
<pre>
git config [--global] credential.helper cache
</pre>

<p>Set the remote repository (for existing code)</p>
<pre>
git remote add origin https://github.com/user/repo_name.git
</pre>

<hr>

<h3>Git Workflow</h3>
<img src="git_workflow.png" alt="Git Workflow" width="540">

<hr>

<h3>Git Command Line</h3>
<table>
  <tr>
    <td>
      <p>Clones fork to our local system</p>
      <pre>git clone &lt;fork&gt;</pre>
    </td>
    <td>     
      <p>Make sure local copy is clean and checks status</p>
      <pre>git status</pre>
    </td>
    <td>
      <p>Adds file to staging area</p>
      <pre>git add &lt;file&gt;</pre>
    </td>
  </tr>
  <tr>
    <td>
      <p>Commits changes (git commit -a -m “commit notes”)</p>
      <pre>git commit -m &lt;comment&gt;</pre>
    </td>
    <td>
      <p>Detailed information about commits</p>
      <pre>git log —-stat</pre>
    </td>
    <td>
      <p>Add origin to local repo</p>
      <pre>git remote add origin https://github.com/repo/git.git</pre>
    </td>
  </tr>
  <tr>
    <td>
      <p>Pushes main branch to remote git repo and store so you can just (git push)</p>
      <pre>git push -u origin main</pre>
    </td>
    <td>
      <p>Pulls changes from remote repo</p>
      <pre>git pull origin main</pre>
    </td>
    <td>
      <p>Unstage file</p>
      <pre>git reset &lt;file&gt;</pre>
    </td>
  </tr>
  <tr>
    <td>
      <p>Remove changes before last commit</p>
      <pre>git checkout —- &lt;file&gt;</pre>
    </td>
    <td>
      <p>Create a new branch off your main branch</p>
      <pre>git branch &lt;branch_name&gt;</pre>
    </td>
    <td>
      <p>List current branches</p>
      <pre>git branch</pre>
    </td>
  </tr>
  <tr>
    <td>
      <p>Switch branches to specified branch name</p>
      <pre>git checkout &lt;branch_name&gt;</pre>
    </td>
    <td>
      <p>Create branch and checkout</p>
      <pre>git checkout -b &lt;branch_name&gt;</pre>
    </td>
    <td>
      <p>Remove all text files</p>
      <pre>git rm ‘*.txt’</pre>
    </td>
  </tr>
  <tr>
    <td>
      <p>Remove folder from tracking</p>
      <pre>git rm -r &lt;folder_name&gt;</pre>
    </td>
    <td>
      <p>Merge branch into main</p>
      <pre>git merge &lt;branch_name&gt;</pre>
    </td>
    <td>
      <p>Cleanup/remove branch</p>
      <pre>git branch -d &lt;branch_name&gt;</pre>
    </td>
  </tr>
  <tr>
    <td>
      <p>Push changes to remote repo</p>
      <pre>git push</pre>
    </td>
    <td>
      <p>Delete files that are no longer there while committing</p>
      <pre>git commit -a</pre>
    </td>
    <td>
      <p>Git pull a different directory</p>
      <pre>git -C &lt;repo_location&gt; pull</pre>
    </td>
  </tr>
  <tr>
    <td>
      <p>Rewriting the remote's history to be exactly like your local copy</p>
      <pre>git push -f origin master</pre>
    </td>
    <td>
      <p>Git</p>
      <pre>git</pre>
    </td>
    <td></td>
  </tr>
</table>

<hr>


<h3>Security Considerations</h3>

<ul>
  <li>Enable Two-Factor Authentication (2FA) on your Git hosting service account for added security.</li>
  <li>Regularly update your SSH keys and review access logs for suspicious activities.</li>
  <li>Keep Git and your operating system updated with the latest security patches.</li>
</ul>

<hr>

<h3>Rebase Local Git Repository from Upstream</h3>
<p>If your forked repository has diverged significantly from the upstream repository, you can rebase your local repository to synchronize with the upstream changes:</p>
<ol>
  <li>Check if the upstream repository is configured:</li>
  <pre>git remote -v</pre>
  <p>If not configured, add upstream:</p>
  <pre>git remote add upstream &lt;upstream-repo-url&gt;</pre>
  <li>Switch to your main branch and fetch from upstream:</li>
  <pre>
git checkout main
git fetch upstream
  </pre>
  <li>Rebase your main branch onto the upstream main branch:</li>
  <pre>git rebase upstream/main</pre>
  <li>Decide how to apply your changes:</li>
  <ul>
    <li>If you want to merge your remote main branch changes:</li>
    <pre>git pull origin main</pre>
    <li>If you want to overwrite your remote main branch changes with the rebased changes:</li>
    <pre>git push -u origin main --force</pre>
  </ul>
</ol>
<p>Your local and remote main branches are now synced with the upstream repository.</p>

<hr>

<h3>Using Codeberg for Open Source Contribution</h3>
<p><a href="https://codeberg.org/">Codeberg</a> is a free and open-source collaborative platform similar to GitHub. Here's how you can contribute to projects on Codeberg:</p>
<ol>
  <li><strong>Forking a Repository:</strong> Click on the "Fork" button on the repository's page to create a copy under your Codeberg account.</li>
  <li><strong>Cloning the Forked Repository:</strong> Clone your forked repository to your local machine:</li>
  <pre>git clone https://codeberg.org/yourusername/repository.git</pre>
  <li><strong>Making Changes:</strong> Make changes to the codebase locally using your preferred editor.</li>
  <li><strong>Committing Changes:</strong> Stage and commit your changes:</li>
  <pre>
git add .
git commit -m "Your commit message"
  </pre>
  <li><strong>Pushing Changes:</strong> Push your changes to your Codeberg repository:</li>
  <pre>git push origin main</pre>
  <li><strong>Creating a Pull Request:</strong> Go to the original repository on Codeberg, and click on "New Pull Request". Compare across forks, select your forked repository and create the pull request.</li>
</ol>

<hr>

<h3>Git - Setting Up Ignore File</h3>
<p>To ignore certain files across all your Git repositories, you can set up a global gitignore file:</p>
<h4>Ignore all .DS_store files:</h4>
<p>Create a global git ignore file:</p>
<pre>echo .DS_Store &gt;&gt; ~/.gitignore_global</pre>
<p>Set the global git ignore file:</p>
<pre>git config --global core.excludesfile ~/.gitignore_global</pre>

</body>
</html>
