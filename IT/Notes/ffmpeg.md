# ffmpeg reminder

This is a reminder of some useful ffmpeg commands

```nu
# Remove sound in video
ffmpeg -i `file/path.mp4` -c copy -an `file/out.mp4`

# Speed up video
ffmpeg -i `file/path.mp4` -filter:v "setpts=0.25*PTS" `file/out.mp4`

# Cut video
ffmpeg -i `file/path.mp4` -ss 00:00:00 -to 00:00:00 -c copy `file/out.mp4`

# Record screen
ffmpeg -f gdigrab -framerate 60 -offset_x 1920 -video_size 1920x1080 -i desktop -b:v 15000000 $"D:/Videos/Captures/Capture_(date now | format date '%Y-%m-%d %H-%M-%S').mp4"
```
