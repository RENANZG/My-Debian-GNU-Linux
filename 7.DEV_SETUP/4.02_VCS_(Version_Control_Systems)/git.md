## Basic configuration for new Git repository
```bash
# Set user name and e-mail address (required to do 'commit')
git config [--global] user.email "user@domain.com"
git config [--global] user.name "User Name"

# Store/cache password
git config [--global] credential.helper store
git pull

# Set the remote repository (for existing code)
git remote add origin https://github.com/user/repo_name.git
```

## Rebase local Git repository from upstream
In some instances, you will have a fork of Git repository that has significantly diverged from the `upstream` original. In this scenario, it is often simplest (or, at least, convenient) to `rebase` the local repository from the `upstream`. Here's how to do this.
1. Ensure that you have the `upstream` repository configured for your local repository.
```bash
git remote -v
```
This should display something like:
```bash
upstream        <upstream-repo-url>.git (fetch)
upstream        <upstream-repo-url>.git (push)
```
If the `upstream` repository is **not** displayed, then it should be added by running:
```bash
git remote add upstream <upstream-repo-url>.git
```
2. Change to your `main` (`master`) branch and fetch from upstream `main`.
```bash
git checkout main
git fetch upstream main
```
3. Overwrite the current local `main` from the upstream `main`:
```bash
git rebase upstream/main
```
4. Now, you must decide if you want to merge changes from your **remote** `main` or overwrite them with the rebased update from the `upstream` repository.
    a. If you want to merge changes from your **remote** `main`:
    ```bash
    git pull origin main
    ```
    You will be prompted to merge and enter a commit message. If any merge conflicts occur, you must resolve them.
    b. If you want to overwrite your **remote** `main` changes:
    ```bash
    git push -u origin main --force
    ```

Your local and remote `main` branches forked from `upstream` are now synced with `upstream` and you can proceed with additional work against it.

[Reference: https://timonweb.com/misc/how-to-update-a-forked-repo-from-an-upstream-with-git-rebase-or-merge/](https://timonweb.com/misc/how-to-update-a-forked-repo-from-an-upstream-with-git-rebase-or-merge/)

