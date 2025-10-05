# Archivers

## 7z archiver

Unzip archive to the folder with the same name

```nu
7z x archive.zip -o*
```

Zip folder to archive with the same name.
This command will add directory as is inside of archive

```nu
7z a -tzip path/to/dir path/to/dir
```

This command will add each file so that archive will contain files as if it was a directory.
TL;DR this is the one

```nu
cd path/to/dir
7z a -tzip ../dir *
```

## Tar commands

Unpack archive

```nu
tar -xf path/to/archive.tar.gz
```

Create compressed archive

```nu
tar -czf backup.tar.gz path/to/dir
```

Create simple archive

```nu
tar -cf backup.tar path/to/dir
```
