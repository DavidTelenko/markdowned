# Proton/Wine Notes

## Override Dlls (Useful for Mod Managers That Inject into the Runtime)

```sh
WINEDLLOVERRIDES='dinput8.dll=n,b;d3d11.dll=n,b' %command%
```

> [!NOTE]
> Syntax is `<dll>=<option>,...;<dll>=<options>,...;...`

## Other Useful Stuff

- `gamemode` - optimize system for games

```sh
gamemoderun %command%
```

- `mangohud` - show FPS

```sh
mangohud %command%
```
