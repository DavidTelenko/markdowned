# Basic

The list of most basic useful commands

## Copy from source to dest

```sh
cp source dest
```

## Copy hard-link staple from source to dest

```sh
cp -al source dest
```

## Create symlink

```sh
ln -s source dest
```

## Remove something

```sh
rm -r <dir>
rm <file>
rm -rf <something-cheeky>
```

## Cd into directory (or use [zoxide](https://github.com/ajeetdsouza/zoxide))

```sh
cd directory
z <fuzzy-term> # fuzzily find term and cd into this directory
zi # interactively
```

## List files and directories (or use [eza](https://github.com/eza-community/eza))

```sh
ls -la # long + all means show every file (+hidden) with all information available
eza # same but more fancy
```

## Fancy grep using [rg](https://github.com/BurntSushi/ripgrep)

```sh
rg <search-term>
```

## Swiftly find files using [fd](https://github.com/sharkdp/fd)

```sh
fd <search-term>
```

## Fuzzily find anything with fancy TUI using [fzf](https://github.com/junegunn/fzf)

```sh
fzf
```
