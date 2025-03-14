# Genral

## Croc utility reminder

### Send a file (self-hosted relay)

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

## Scoop

### Reset app to some version

```nu
scoop reset <app_name>@<version>
```

### List all outdated packages

```nu
scoop status
```

### List all packages

```nu
scoop list
```

### Export in json format

```nu
scoop export
```

### Remove previous versions

```nu
scoop cleanup <app_name>
```

## pdftk commands

### Merge all pdfs in folder

```nu
pdftk *.pdf cat output out.pdf
```

## yt-dlp commands

### Download playlist

```nu
(
    yt-dlp
        -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s"
        https://www.youtube.com/playlist?list=<list-id>
)
```

### Download one video

```nu
yt-dlp -o '%(title)s.%(ext)s' <video_url>
```

### Download audio only

```nu
yt-dlp -x --audio-format mp3 <video_url>
```

## ani-cli commands

### Download episodes from start to end

```nu
ani-cli --dub -d "<name>" -e <start>-<end>
```

## nmcli commands

### Connect to wifi spot

```nu
nmcli d wifi connect "NAME" password "PASSWORD"
```

### List all available wifi spots

```nu
nmcli d wifi
```

### Check connection status in general

```nu
nmcli c
```

## ncdu

Simple utility to show disk usage
