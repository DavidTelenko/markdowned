# The most basic general stuff

Copy from source to dest

```nu
cp source dest
```

Remove something

```nu
rm -r <dir>
rm <file>
rm -rf <something-cheeky>
```

Cd into directory (or use [zoxide](https://github.com/ajeetdsouza/zoxide))

```nu
cd directory
z <fuzzy-term> # fuzzily find term and cd into this directory
zi # interactively
```

List files and directories (or use [eza](https://github.com/eza-community/eza))

```nu
ls -la # long + all means show every file (+hidden) with all information available
eza # same but more fancy
```

Fancy grep using [rg](https://github.com/BurntSushi/ripgrep)

```nu
rg <search-term>
```

Swiftly find files using [fd](https://github.com/sharkdp/fd)

```nu
fd <search-term>
```

Fuzzily find anything with fancy TUI using [fzf](https://github.com/junegunn/fzf)

```nu
fzf
```

# 7z archiver

Unzip archive to the folder with the same name

```nu
7z x archive.zip -o*
```

Zip folder to archive with the same name.
This command will add directory as is inside of archive

```nu
7z a -tzip path/to/dir path/to/dir
```

This command will add each file so that archive will contain files as if it was a directory.
TL;DR this is the one

```nu
cd path/to/dir
7z a -tzip ../dir *
```

# Tar commands

Unpack archive

```nu
tar -xf path/to/archive.tar.gz
```

Create compressed archive

```nu
tar -czf backup.tar.gz path/to/dir
```

Create simple archive

```nu
tar -cf backup.tar path/to/dir
```

# git remider

#### general things

1. Stage changes

```nu
git add <filepath> # which can be '.'
```

Interactively

```nu
git add -i
```

By hunk (probably my favorite)

```nu
git add -p
```

2. Commit changes

```nu
git commit -m <commit-message>
```

3. Push change to remote

```nu
git push
```

4. Clone repository

```nu
git clone --recurse-submodules <url>
```

5. Fetch changes

```nu
git fetch <remote>
git switch <branch>
git merge <remote>/<branch>

# Example
git fetch origin
git switch fix/regex-lookahead
git merge origin/fix/regex-lookahead
```

#### List remotes

```nu
git remote -v
```

#### Delete branch

1. Locally

```nu
git branch -d <branch-name>

# Example
git branch -d "fix/some-fix"
```

2. Remotely

```nu
git push -d <remote-name> <branch-name>

# Example
git push -d origin "fix/some-fix"
```

#### Rename branch

1. Locally

```nu
git branch -m <old-name> <new-name>
```

2. Remotely

```nu
git push origin --delete <old-name>
git push origin :<old-name>
git branch --unset-upstream <new-name>
git push origin <new-name>
git push origin -u <new-name>
```

#### Reset recipes

1. Unstage files

```nu
git restore --staged <filepath> # which can be '.'
```

2. Undo last commit

```nu
git reset HEAD~
```

3. Undo last reset

```nu
git reset HEAD@{1}
```

4. Remove file from last commit

```nu
git reset HEAD^ -- <filepath>
git commit --amend --no-edit
```

5. Clear current unstaged changes

```nu
git restore .
```

#### Change commit, edit commit (patch commit)

```nu
git commit --amend           # craft a new name
git commit --ament --no-edit # use the old name
```

After this it might be needed to push with `--force-with-lease` flag

```nu
git push --force-with-lease
```

#### List branches

```nu
git branch -a # all
git branch -r # remote
git branch -l # local
```

#### Switch branch

```nu
git switch <branch>        # switch branch
git switch -c <new-branch> # create branch
```

#### Operate on stash entry

```nu
git stash drop # remove last entry
git stash pop # pop last entry
git stash drop stash@{1} # remove n-th entry
git stash pop stash@{1} # pop n-th entry
```

#### Show all stash entries

```nu
git stash list
```

#### Scenario: Put existing work to the new branch

```nu
git stash
git switch -c <new-branch-name>
git stash pop
```

#### Scenario: Rebase branch to other head

You're forgot to switch to `main` before creating branch and now your new branch has different parent

```nu
git switch <new-parent>
git rebase <some-branch>
```

#### Use interactive rebase

> [video](https://www.youtube.com/watch?v=H7RFt0Pxxp8)

To start rebasing select the base commit

```nu
git rebase -i <commmit-hash>
```

1. `reword` to rename commit
2. `drop` to remove commit
3. change order (lower is newer)

#### Update current branch with `main` branch

```nu
git switch <branch>
git pull origin main
```

or

```nu
git switch <branch>
git fetch origin main
git rebase origin/main
```

# Croc utility reminder

Send a file (self-hosted relay)

1. Start relay on pc with adress 192.168.0.0

```nu
croc relay
```

2. On pc with address 192.168.0.0

```nu
croc --relay 192.168.0.0:9009 [filename]

```

3. On receiving pc

```nu
croc --relay 192.168.0.0:9009 [pass-phrase]
```

If error occurred while sending and peer appears to be disconnected try
restarting pc, and activate network sharing in control panel (on windows)

# ffmpeg reminder

Remove sound in video

```nu
ffmpeg -i `file/path.mp4` -c copy -an `file/out.mp4`
```

Speed up video

```nu
ffmpeg -i `file/path.mp4` -filter:v "setpts=0.25*PTS" `file/out.mp4`
```

Cut video

```nu
ffmpeg -i `file/path.mp4` -ss 00:00:00 -to 00:00:00 -c copy `file/out.mp4`
```

Record screen (Windows).
Here each option listed before the source applies to this source

```nu
(
    ffmpeg
        -framerate 60
        -offset_x 1920 # this selects offset to second monitor
        -video_size 1920x1080
        -f gdigrab # video grabber
        -i desktop # input device
        -b:v 15000000 # bitrate
        $"D:/Videos/Captures/Capture_(date now | format date '%Y-%m-%d_%H-%M-%S').mp4"
)
```

Record audio (Windows)

```nu
(
    ffmpeg
        -f dshow # video & audio grabber
        -i audio="Microphone (Realtek(R) Audio)" # audio source
        $"D:/Videos/Captures/Capture_(date now | format date '%Y-%m-%d_%H-%M-%S').mp3"
)
```

List all devices for dshow grabber (Windows)

```nu
ffmpeg -list_devices true -f dshow -i dummy
```

Merge all videos in folder. **IMPORTANT**: don't forget to cd into right directory

```nu
(
    let list = "list.txt";
    ls | where type =~ file | each {
        echo $"file '($in.name)'\n" | save -af $"($list)"
    };
    ffmpeg -f concat # demuxer
           -i $list # list of liles to merge
           -c copy
           $"Merged_(date now | format date '%Y-%m-%d_%H-%M-%S').mp4";
    rm -f $list;
)
```

See [this](https://trac.ffmpeg.org/wiki/Capture/Desktop) link to get more info on how to record screen

# Notes on scoop pm

Reset app to some version

```nu
scoop reset <app_name>@<version>
```

List all outdated packages

```nu
scoop status
```

List all packages

```nu
scoop list
```

Export in json format

```nu
scoop export
```

Remove previous versions

```nu
scoop cleanup <app_name>
```

# pdftk commands

Merge all pdfs in folder

```nu
pdftk *.pdf cat output out.pdf
```

# yt-dlp commands

Download playlist

```nu
yt-dlp -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" https://www.youtube.com/playlist?list=<list-id>
```

Download one video

```nu
yt-dlp -o '%(title)s.%(ext)s' <video_url>
```

Download audio only

```nu
yt-dlp -x --audio-format mp3 <video_url>
```

See also: [[yt-dlp]]

# ani-cli commands

Download episodes from start to end

```nu
ani-cli --dub -d "<name>" -e <start>-<end>
```

# nmcli commands

Connect to wifi spot

```
nmcli d wifi connect "NAME" password "PASSWORD"
```

List all available wifi spots

```
nmcli d wifi
```

Check connection status in general

```
nmcli c
```

# ncdu

Simple utility to show disk usage
