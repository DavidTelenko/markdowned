# Git remider

## General things

### Stage changes

```nu
git add <filepath> # which can be '.'
```

#### Interactively

```nu
git add -i
```

#### By hunk (probably my favorite)

```nu
git add -p
```

### Commit changes

```nu
git commit -m <commit-message>
```

### Push change to remote

```nu
git push
```

### Clone repository

```nu
git clone --recurse-submodules <url>
```

### Fetch changes

```nu
git fetch <remote> # origin
git switch <branch> # fix/regex-lookahead
git merge <remote>/<branch> # origin/fix/regex-lookahead
```

### List remotes

```nu
git remote -v
```

### Delete branch

#### Locally

```nu
git branch -d <branch-name>

# Example
git branch -d "fix/some-fix"
```

#### Remotely

```nu
git push -d <remote-name> <branch-name>

# Example
git push -d origin "fix/some-fix"
```

### Rename branch

#### Locally

```nu
git branch -m <new-name> # local branch
# or
git branch -m <old-name> <new-name>
```

#### Remotely

```nu
git push origin --delete <old-name>
git push origin :<old-name>
git branch --unset-upstream <new-name>
git push origin <new-name>
git push origin -u <new-name>
```

## Recipes

### Unstage files

```nu
git restore --staged <filepath> # which can be '.'
```

### Undo last commit

```nu
git reset HEAD~
```

### Undo file deletion

```nu
git checkout <path/to/delete/file>
```

### Undo last reset

```nu
git reset HEAD@{1}
```

### Remove file from last commit

```nu
git reset HEAD^ -- <filepath>
git commit --amend --no-edit
```

### Clear current unstaged changes

```nu
git restore .
```

### Change commit, edit commit (patch commit)

```nu
git commit --amend           # craft a new name
git commit --ament --no-edit # use the old name
```

After this it might be needed to push with `--force-with-lease` flag

```nu
git push --force-with-lease
```

### List branches

```nu
git branch -a # all
git branch -r # remote
git branch -l # local
```

### Switch branch

```nu
git switch <branch>        # switch branch
git switch -c <new-branch> # create branch
```

### Operate on stash entry

```nu
git stash drop # remove last entry
git stash pop # pop last entry
git stash drop stash@{n} # remove n-th entry
git stash pop stash@{n} # pop n-th entry
git stash apply stash@{n} # apply changes but preserve them in stash
```

### Apply changes in stash only from one file

```nu
git restore --source=stash@{n} -- <filename>
```

### Show all stash entries

```nu
git stash list
```

### Stash all changes (with untracked files)

```nu
git stash -u
```

### Stash unstaged changes

```nu
git stash --keep-index
```

### Put existing work to the new branch

```nu
git stash
git switch -c <new-branch-name>
git stash pop
```

### List all edited stash files

```nu
git stash list --name-status
```

### Change branch only of the one directory

```nu
git checkout <branch-name> <path/to/directory/or/file.f>
```

### Rebase branch to other head

You're forgot to switch to `main` before creating branch and now your new branch has different parent

```nu
git switch <new-parent>
git rebase <some-branch>
```

### Use interactive rebase

> [video](https://www.youtube.com/watch?v=H7RFt0Pxxp8)

To start rebasing select the base commit

```nu
git rebase -i <commmit-hash>
```

1. `reword` to rename commit
2. `drop` to remove commit
3. change order (lower is newer)

### Update current branch with `main` branch

If you're working on custom branch it's highly advisable to use merge in order to:

1. Make history easier to work for other people in your branch
2. Prevent unwanted coauthoring of whole main history

> However if you're working on custom branch which doesn't have a PR yet and is purely local to your work it may be a good idea to use rebase also.

#### Switch to desired branch (`-c` to create):

```nu
git switch <branch> # -c
```

#### With merge:

```sh
git pull origin main --no-rebase
# or
git merge origin/main
# then
git push
```

#### With rebase:

```sh
git pull origin main
# or
git rebase origin/main
# then
git push --force-with-lease
```

## Reflog help

### Timestampts

- `@{1.minute.ago}` See the state of your repository just a minute ago.
- `@{1.hour.ago}` Rewind your Git journey by one hour.
- `@{1.day.ago}` Compare your current work with yesterday's progress.
- `@{yesterday}` Travel back to yesterday's snapshot of your repository.
- `@{1.week.ago}` Analyze changes made a week ago.
- `@{1.month.ago}` Recall the state of your project a month back.
- `@{1.year.ago}` Explore the evolution of your work over a year.
- `@{2023-10-21.0830:00}`: Jump to a specific date and time in your Git history.

To use timestamps use reflog like this

```nu
git reflog <timestamp>
```

To check if the revision exists

```nu
git reflog exists <rev>
```
