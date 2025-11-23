# Basic

The list of most basic useful commands

## Copy from source to dest

```nu
cp source dest
```

## Copy hard-link staple from source to dest

```nu
cp -al source dest
```

## Create symlink

```nu
ln -s source dest
```

## Remove something

```nu
rm -r <dir>
rm <file>
rm -rf <something-cheeky>
```

## Cd into directory (or use [zoxide](https://github.com/ajeetdsouza/zoxide))

```nu
cd directory
z <fuzzy-term> # fuzzily find term and cd into this directory
zi # interactively
```

## List files and directories (or use [eza](https://github.com/eza-community/eza))

```nu
ls -la # long + all means show every file (+hidden) with all information available
eza # same but more fancy
```

## Fancy grep using [rg](https://github.com/BurntSushi/ripgrep)

```nu
rg <search-term>
```

## Swiftly find files using [fd](https://github.com/sharkdp/fd)

```nu
fd <search-term>
```

## Fuzzily find anything with fancy TUI using [fzf](https://github.com/junegunn/fzf)

```nu
fzf
```
