# Archivers reminder

This is a reminder of general 7z commands

```nu
# Unzip archive to the folder with the same name
7z x archive.zip -o*

# Zip folder to archive with the same name
# This command will add directory as is inside of archive
7z a -tzip path/to/dir path/to/dir

# This command will add each file so that archive will contain files as if it was a directory
# |
# V TL;DR this is the one
cd path/to/dir
7z a -tzip ../dir *
```

Tar commands

```nu

# Unpack archive

tar -xf path/to/archive.tar.gz

# Create compressed archive

tar -czf backup.tar.gz path/to/dir

# Create simple archive

tar -cf backup.tar path/to/dir

```
