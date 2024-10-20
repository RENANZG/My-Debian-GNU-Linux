<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Synchronizing a Local Repository Without Preserving Git History</title>
<style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
      background-color: #f4f4f4;
    }
    h1, h2, h3, h4, h5, h6 {
      color: #333;
    }
    p {
      line-height: 1.6;
    }
    pre {
      background-color: #eaeaea;
      padding: 10px;
      border-radius: 5px;
      overflow-x: auto;
    }
    code {
      background-color: #eaeaea;
      padding: 2px 4px;
      border-radius: 3px;
    }
    ul {
      list-style-type: disc;
      padding-left: 20px;
    }
    li {
      margin-bottom: 10px;
    }
</style>
</head>
<body>

  <h1>Synchronizing a Local Git Repository Without Preserving History</h1>

  <h2>1. Create a New Branch Without History</h2>

  <p>To start, you will create a new branch, an "orphan" branch, that is not linked
    to the existing history:</p>

  <pre><code>git checkout --orphan new-branch</code></pre>

  <h2>2. Stage All Files and Commit</h2>

  <p>Next, stage all current files and make an initial commit in the new branch:</p>

  <pre><code>git add .</code></pre>

  <pre><code>git commit -m "Initial commit with current state"</code></pre>

  <p>This creates a clean commit that contains the current state of your project.</p>

  <h2>3. Delete Old Branch and Replace with the New Branch</h2>

  <p>If you want to replace the original branch (e.g., <code>main</code> or <code>master</code>)
    with the new one:</p>

  <pre><code>git branch -D main</code></pre>

  <pre><code>git branch -m main</code></pre>

  <p>This deletes the old branch and renames the new one as <code>main</code>.</p>

  <h2>4. Force Push the New Branch to Remote Repository</h2>

  <p>When force-pushing a new branch to GitHub, be aware that GitHub has a 2 GB limit
    for a single push and recommends keeping repositories under 1 GB, with a strong
    recommendation to stay below 5 GB.</p>

  <p>Use this command to force-push the new branch and overwrite the remote repository:</p>

  <pre><code>git push origin --force --set-upstream main</code></pre>

  <h2>5. Optional: Remove the .git Directory and Reinitialize</h2>

  <p>If you want to entirely remove Git history and start fresh, you can delete the
    <code>.git</code> directory:</p>

  <pre><code>rm -rf .git</code></pre>

  <p>Then, reinitialize the repository:</p>

  <pre><code>git init</code></pre>

  <p>And reconnect it to your remote repository:</p>

  <pre><code>git remote add origin &lt;remote-url&gt;</code></pre>
  <pre><code>git add .</code></pre>
  <pre><code>git commit -m "Initial commit with current state"</code></pre>
  <pre><code>git push -u origin main --force</code></pre>

  <h2>6. Verify the Repository Size</h2>

  <p>Finally, verify the size of your local Git directory to ensure it has been reduced:</p>

  <pre><code>du -sh .git</code></pre>

</body>
</html>