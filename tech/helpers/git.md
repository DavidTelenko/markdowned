# Git reminder

## General things

### Stage changes

```sh
git add $filepath # which can be '.'
```

#### Interactively

```sh
git add -i
```

#### By hunk (probably my favorite)

```sh
git add -p
```

### Commit changes

```sh
git commit -m $message
```

### Push change to remote

```sh
git push
```

### Clone repository

```sh
git clone --recurse-submodules $url
```

### Fetch changes

```sh
git fetch $remote # origin
git switch $branch # fix/regex-lookahead
git merge $remote/$branch # origin/fix/regex-lookahead
```

### List remotes

```sh
git remote -v
```

### Delete branch

#### Locally

```sh
git branch -d $name

# Example
git branch -d "fix/some-fix"
```

#### Remotely

```sh
git push -d $remote_name $branch_name

# Example
git push -d origin "fix/some-fix"
```

### Rename branch

#### Locally

```sh
git branch -m $new_name # local branch
# or
git branch -m $old_name $new_name
```

#### Remotely

```sh
git push origin --delete $old_name
git branch --unset-upstream $new_name
git push origin $new_name
git push origin -u $new_name
```

## Recipes

### Unstage files

```sh
git restore --staged $filepath # which can be '.'
```

### Undo last commit

```sh
git reset HEAD~
git reset --soft HEAD@{1}
```

### Undo file deletion

```sh
git checkout $filepath
```

### Undo last reset

```sh
git reset HEAD@{1}
```

### Remove file from last commit

```sh
git reset HEAD^ -- $filepath
git commit --amend --no-edit
```

### Remove all files listed in .gitignore

```powershell
git ls-files -i -c --exclude-from=.gitignore | %{ git rm --cached $_ }
```

### Clear current unstaged changes

```sh
git restore .
```

### Change commit, edit commit (patch commit)

```sh
git commit --amend           # craft a new name
git commit --ament --no-edit # use the old name
```

After this it might be needed to push with `--force-with-lease` flag

```sh
git push --force-with-lease
```

### List branches

```sh
git branch -a # all
git branch -r # remote
git branch -l # local
```

### Switch branch

```sh
git switch $branch        # switch branch
git switch -c $new_branch # create branch
```

### Operate on stash entry

```sh
git stash drop            # remove last entry
git stash pop             # pop last entry
git stash drop stash@{n}  # remove n-th entry
git stash pop stash@{n}   # pop n-th entry
git stash apply stash@{n} # apply changes but preserve them in stash
```

### Double stash

```sh
git add path/to/remain/in/stash # first stage everything you want to stage

git stash push --keep-index -u  # stash unstaged changes
git stash push -m 'clean stash' # stash staged changes

git stash pop stash@{1}         # pop the first 'dirty' stash

git add path/to/remain/in/cwd   # second stage everything you want to stage

git restore .                   # restore everything that was staged before
git clean -df                   # remove every new files
```

### Apply changes in stash only from one file

```sh
git restore --source=stash@{n} -- $filename
```

### Show all stash entries

```sh
git stash list
```

### Stash all changes (with untracked files)

```sh
git stash -u
```

### Stash unstaged changes

```sh
git stash --keep-index
```

### Put existing work to the new branch

```sh
git stash
git switch -c $new_branch
git stash pop
```

### List all edited stash files

```sh
git stash list --name-status
```

### Change branch only of the one directory

```sh
git checkout $branch $path_to_dir_or_file
```

### Rebase branch to other head

You're forgot to switch to `main` before creating branch and now your new branch has different parent

```sh
git switch $parent
git rebase $branch
```

### Rebase onto

```sh
git rebase --onto $new_base $old_base feature/branch
```

### Use interactive rebase

> [video](https://www.youtube.com/watch?v=H7RFt0Pxxp8)

To start rebasing select the base commit

```sh
git rebase -i $commit
```

1. `reword` to rename commit
2. `drop` to remove commit
3. change order (lower is newer)

### Update current branch with `main` branch

If you're working on custom branch it's highly advisable to use merge in order to:

1. Make history easier to work for other people in your branch
2. Prevent unwanted coauthoring of whole main history

> However if you're working on custom branch which doesn't have a PR yet and is purely local to your work it may be a good idea to use rebase also.

### Check diff for current branch with main

Similar to what github uses to show all changes on your branch.

```sh
git diff $branch (git merge-base $branch main)
```

#### Switch to desired branch (`-c` to create):

```sh
git switch $branch # -c
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

### Timestamps

- `@{1.minute.ago}` See the state of your repository just a minute ago.
- `@{1.hour.ago}` Rewind your Git journey by one hour.
- `@{1.day.ago}` Compare your current work with yesterday's progress.
- `@{yesterday}` Travel back to yesterday's snapshot of your repository.
- `@{1.week.ago}` Analyze changes made a week ago.
- `@{1.month.ago}` Recall the state of your project a month back.
- `@{1.year.ago}` Explore the evolution of your work over a year.
- `@{2023-10-21.0830:00}`: Jump to a specific date and time in your Git history.

To use timestamps use reflog like this

```sh
git reflog $timestamp
```

To check if the revision exists

```sh
git reflog exists $rev
```
