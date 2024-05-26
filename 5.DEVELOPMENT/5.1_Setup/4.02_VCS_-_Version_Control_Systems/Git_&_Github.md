<h2>Git & Github</h2>


<h3>Installing in Linux</h3>

<code>$ sudo apt install git</code><br>


<h3>Installing in extension</h3>


<h4>NeoVim extension</h4>


<h4>VSCodium extension</h4>


<h3>General</h3>

<h4>Github site</h4>

<p> "Fork" - Forks copy of git repo to our account (performed by clicking fork on main project)</p>

<hr>
<!--################################### -->

<h3>Git workflow</h3>

<img src="7.DEVELOPMENT/7.1_Setup/4.02_VCS_-_Version_Control_Systems/git_workflow.png" title="Workflow">

<hr>
<!--################################### -->

<h3>Git command line</h3>

<table>
<tr>
<td valign="top">
<p>Clones fork to our local system</p>
<pre>
git clone <fork>
</pre>
<p>Make sure local copy is clean and checks status</p>
<pre>
git status
</pre>
<p>Adds file to staging area</p>
<pre>
git add <file>
</pre>
<p>Commits changes (git commit -a -m “commit notes”) adds files and commits</p>
<pre>
git commit -m <comment>
</pre>
<p>Detailed information about commits</p>
<pre>
git log —status
</pre>
<p>Add origin to local repo</p>
<pre>
git remote add origin https://github.com/repo/git.git
</pre>
<p>Pushes main branch to remote git repo and store so you can just (git push)</p>
<pre>
git push -u origin main
</pre>
<p>Pulls changes from remote repo</p>
<pre>
git pull origin main
</pre>
<p>Diff for changes from origin main</p>
<pre>
git diff HEAD
</pre>
</td>

<td valign="top">
<p>Unstage file</p>
<pre>
git reset <file>
</pre>
<p>Remove changes before last commit</p>
<pre>
git checkout — <file>
</pre>
<p>Create a new branch off your main branch</p>
<pre>
git branch <branch_name>
</pre>
<p>List current branch</p>
<pre>
git branch
</pre>
<p>Switch branches to specified branch name</p>
<pre>
git checkout <branch_name>
</pre>
<p>Create branch and checkout</p>
<pre>
git checkout -b <branch_name>
</pre>
<p>Remove all text files</p>
<pre>
git rm ‘*.txt’
</pre>
<p>Remove folder from tracking</p>
<pre>
git rm -r <folder_name>
</pre>
</td>

<td valign="top">
<p>Merge branch into main</p>
<pre>
git merge <branch_name>
</pre>
<p>Cleanup/remove branch</p>
<pre>
git branch -d <branch_name>
</pre>
<p>Push changes to remote repo</p>
<pre>
git push
</pre>
<p>Delete files that are no longer there while committing</p>
<pre>
git commit -a
</pre>
<p>Git pull a different directory</p>
<pre>
git -C <repo_location> pull
</pre>
<p></p>
<pre>
git push -f origin master
</pre>
<p>Rewriting the remote's history to be exactly like your local copy</p>
<pre>
git push -f origin master
</pre>
<p>Git</p>
<pre>
git
</pre>
</td>

</tr>
</table>

<hr>
<!--################################### -->

<h3>Basic configuration for new Git repository</h3>

<p>Set user name and e-mail address (required to do 'commit')</p>

<pre>
git config [--global] user.email "user@domain.com"
git config [--global] user.name "User Name"
</pre>

<p>Store/cache password</p>

<pre>
git config [--global] credential.helper store
git pull
</pre>

<p>Set the remote repository (for existing code)</p>

<pre>
git remote add origin https://github.com/user/repo_name.git
</pre>

<h3>Rebase local Git repository from upstream</h3>

<p>In some instances, you will have a fork of Git repository that has significantly diverged from the <code>upstream</code> original. In this scenario, it is often simplest (or, at least, convenient) to `rebase` the local repository from the <code>upstream</code>. Here's how to do this.</p>

<ol>

<li>Ensure that you have the <code>upstream</code> repository configured for your local repository.

<pre>
git remote -v
</pre>

<p>This should display something like:</p>

<pre>
upstream        <upstream-repo-url>.git (fetch)
upstream        <upstream-repo-url>.git (push)
</pre>

<p>If the <code>upstream</code> repository is <b>not</b> displayed, then it should be added by running:</p>

<pre>
git remote add upstream <upstream-repo-url>.git
</pre>

</li>
<li>
Change to your <code>main</code> (<code>master</code>) branch and fetch from upstream <code>main</code>.

<pre>
git checkout main
git fetch upstream main
</pre>
</li>

<li>
Overwrite the current local <code>main</code> from the upstream <code>main</code>:

<pre>
git rebase upstream/main
</pre>

</li>

<li>
Now, you must decide if you want to merge changes from your <b>remote</b> <code>main</code> or overwrite them with the rebased update from the <code>upstream</code> repository.

<ul>
<li>
    <p> a. If you want to merge changes from your <b>remote</b> <code>main</code>:</p>

    <pre>
    git pull origin main
    </pre>
</li>

<li>
   <p>You will be prompted to merge and enter a commit message. If any merge conflicts occur, you must resolve them.</p>

    <p> b. If you want to overwrite your <b>remote</b> <code>main</code> changes:</p>

    <pre>
    git push -u origin main --force
    </pre>

</li>
<ul>
</li>
</ol>

Your local and remote <code>main</code> branches forked from <code>upstream</code> are now synced with <code>upstream</code> and you can proceed with additional work against it.</p>

<p><a href="https://timonweb.com/misc/how-to-update-a-forked-repo-from-an-upstream-with-git-rebase-or-merge/">Reference: https://timonweb.com/misc/how-to-update-a-forked-repo-from-an-upstream-with-git-rebase-or-merge/</a></p>

<hr>
<!--################################### -->

<h3>Github - Setting up ignore file</h3>

<h4>Ignore all .DS_store files:</h4>

<p>Create global git ignore file</p>

<pre>
echo .DS_Store >> ~/.gitignore_global
</pre>

<p>Set global git ignore file</p>

<pre>
git config --global core.excludesfile ~/.gitignore_global
</pre>

