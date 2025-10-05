# ffmpeg utility

### Remove sound in video

```nu
ffmpeg -i `file/path.mp4` -c copy -an `file/out.mp4`
```

### Speed up video

```nu
ffmpeg -i `file/path.mp4` -filter:v "setpts=0.25*PTS" `file/out.mp4`
```

### Cut video

```nu
ffmpeg -i `file/path.mp4` -ss 00:00:00 -to 00:00:00 -c copy `file/out.mp4`
```

### Record screen (Windows).

Here each option listed before the source applies to this source

```nu
(
    ffmpeg
        -framerate 60
        -offset_x 1920 # this selects offset to second monitor
        -video_size 1920x1080
        -f gdigrab # video grabber
        -i desktop # input device
        -b:v 9063218 # bitrate
        -c:v h264
        $"D:/Videos/Captures/Capture_(date now | format date '%Y-%m-%d_%H-%M-%S').mp4"
)
```

### Record audio (Windows)

```nu
(
    ffmpeg
        -f dshow # video & audio grabber
        -i audio="Microphone (Realtek(R) Audio)" # audio source
        $"D:/Videos/Captures/Capture_(date now | format date '%Y-%m-%d_%H-%M-%S').mp3"
)
```

### List all devices for dshow grabber (Windows)

```nu
ffmpeg -list_devices true -f dshow -i dummy
```

### Merge all videos in folder.

> **IMPORTANT**: don't forget to cd into right directory

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

### Convert .mp4 to .gif

```nu
ffmpeg -i input.mp4 -vf "fps=15,scale=640:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 1 output.gif
```

## References

- [How to record screen](https://trac.ffmpeg.org/wiki/Capture/Desktop)
