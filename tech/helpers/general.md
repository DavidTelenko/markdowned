# Genral

## Croc utility reminder

### Send a file (self-hosted relay)

1. Start relay on pc with adress 192.168.0.0

```sh
croc relay
```

2. On pc with address 192.168.0.0

```sh
croc --relay 192.168.0.0:9009 [filename]

```

3. On receiving pc

```sh
croc --relay 192.168.0.0:9009 [pass-phrase]
```

If error occurred while sending and peer appears to be disconnected try
restarting pc, and activate network sharing in control panel (on windows)

## Scoop

### Reset app to some version

```sh
scoop reset <app_name>@<version>
```

### List all outdated packages

```sh
scoop status
```

### List all packages

```sh
scoop list
```

### Export in json format

```sh
scoop export
```

### Remove previous versions

```sh
scoop cleanup <app_name>
```

## pdftk commands

### Merge all pdfs in folder

```sh
pdftk *.pdf cat output out.pdf
```

## yt-dlp commands

### Download playlist

```sh
(
    yt-dlp
        -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s"
        https://www.youtube.com/playlist?list=<list-id>
)
```

### Download one video

```sh
yt-dlp -o '%(title)s.%(ext)s' <video_url>
```

### Download audio only

```sh
yt-dlp -x --audio-format mp3 <video_url>
```

## ani-cli commands

### Download episodes from start to end

```sh
ani-cli --dub -d "<name>" -e <start>-<end>
```

## nmcli commands

### Connect to wifi spot

```sh
nmcli d wifi connect "NAME" password "PASSWORD"
```

### List all available wifi spots

```sh
nmcli d wifi
```

### Check connection status in general

```sh
nmcli c
```

## ncdu

Simple utility to show disk usage
