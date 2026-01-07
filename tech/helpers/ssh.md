# SSH Reminder

- Create ssh key on `client` machine

```sh
ssh-keygen -t ed25519
```

- Share `id_ed25519.pub` contents with `server` machine

- Append shared contents to <this> file on `server` machine
  `~/.ssh/authorized_keys` on \*nix machines
  `C:\ProgramData\ssh\administrators_authorized_keys` on dos machines
