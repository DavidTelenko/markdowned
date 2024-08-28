# List of weird caveats (for me) I found

1. Install player software from flatpak (not dnf) (legal issues with codecs)
2. Link mpv like this `ln -s /home/david/.config/mpv mpv`
3. You can create `~` directory somehow and nu does not differentiate between
   `~` and `./~`, so you need to use bash to remove it
