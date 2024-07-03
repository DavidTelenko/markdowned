# Archivers reminder

This is a reminder of general 7z commands

```nu
# Unzip archive to the folder with the same name
7z x archive.zip -o*

# Zip folder to archive with the same name
# This command will add directory as is inside of archive
7z a -tzip path/to/dir path/to/dir

# This command will add each file so that archive will contain files as if it was a directory
# |
# V TL;DR this is the one
cd path/to/dir
7z a -tzip ../dir *
```

Tar commands

```nu

# Unpack archive

tar -xf path/to/archive.tar.gz

# Create compressed archive

tar -czf backup.tar.gz path/to/dir

# Create simple archive

tar -cf backup.tar path/to/dir

```

# Croc utility reminder

This is a reminder of general croc commands

```nu
# Send a file (self-hosted relay)

# 1. Start relay on pc with adress 192.168.0.0
croc relay

# 2. On pc with adress 192.168.0.0
croc --relay 192.168.0.0:9009 [filename]

# 3. On receiving pc
croc --relay 192.168.0.0:9009 [pass-phrase]
```

If error occurred while sending and peer appears to be disconnected try
restarting pc, and activate network sharing in control panel (on windows)

# ffmpeg reminder

This is a reminder of some useful ffmpeg commands

```nu
# Remove sound in video
ffmpeg -i `file/path.mp4` -c copy -an `file/out.mp4`

# Speed up video
ffmpeg -i `file/path.mp4` -filter:v "setpts=0.25*PTS" `file/out.mp4`

# Cut video
ffmpeg -i `file/path.mp4` -ss 00:00:00 -to 00:00:00 -c copy `file/out.mp4`

# Record screen (Windows)
# Here each option listed before the source applies to this source
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

# Record audio (Windows)
(
    ffmpeg
        -f dshow # video & audio grabber
        -i audio="Microphone (Realtek(R) Audio)" # audio source
        $"D:/Videos/Captures/Capture_(date now | format date '%Y-%m-%d_%H-%M-%S').mp3"
)

# List all devices for dshow grabber (Windows)
(
    ffmpeg -list_devices true -f dshow -i dummy
)

# Merge all videos in folder IMPORTANT: don't forget to cd into right directory
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

```nu
# Reset app to some version
scoop reset <app_name>@<version>

# List all outdated packages
scoop status

# List all packages
scoop list

# Export in json format
scoop export
```

# yt-dlp commands

# pdftk commands

```nu
# Merge all pdfs in folder
pdftk *.pdf cat output out.pdf
```
