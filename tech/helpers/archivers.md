# Archivers

## 7z archiver

Unzip archive to the folder with the same name

```sh
7z x archive.zip -o*
```

Zip folder to archive with the same name.
This command will add directory as is inside of archive

```sh
7z a -tzip path/to/dir path/to/dir
```

This command will add each file so that archive will contain files as if it was a directory.
TL;DR this is the one

```sh
cd path/to/dir
7z a -tzip ../dir *
```

## Tar commands

Unpack archive

```sh
tar -xf path/to/archive.tar.gz
```

Create compressed archive

```sh
tar -czf backup.tar.gz path/to/dir
```

Create simple archive

```sh
tar -cf backup.tar path/to/dir
```

## Unar

Create foo/bar/ directory with archive contents

```sh
unar foo/bar.zip
```

Unpack in the specified directory

```sh
unar foo/bar.zip -o baz/bar
```
