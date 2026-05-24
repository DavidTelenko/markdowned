# SSH Reminder

- Create ssh key on `client` machine

```sh
ssh-keygen -t ed25519
```

- Add the private (`id_ed25519`) key to `ssh-agent`

```sh
ssh-add ~/.ssh/id_ed25519
```

- Share public key (`id_ed25519.pub`) contents with `server` machine

- If you own `server` machine, append shared contents to **this** file on `server` machine:
  - `~/.ssh/authorized_keys` on \*nix machines
  - `C:\ProgramData\ssh\administrators_authorized_keys` on ms dos machines
- Set correct permissions for server .ssh files

```sh
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```
