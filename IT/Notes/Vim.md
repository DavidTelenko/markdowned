# General

## Motions

- `gx` follow link
- `gf` follow file
- `gu` `gU` change case
- `gq` split lines by 80 chars

- `^a` increment value of an integer
- `^x` decrement value of an integer

- `J` join lines (removes \n in the end)
- `K` info about token under cursor (lsp help / man)

- `{line}gg` to go to specific line

## Folds

- `z=` select spell variants
- `zg` add to dictionary
- `zf` fold action (can be combined with ap and so on)
- `za` toggle fold

## Macros

- `q<register-name><inputs>q` records macro into <register-name>
- `"<register-name>p` paste recorded macro into buffer
- `q<register-name><macro>Q` <macro> will replay until error
- `@<register-name>` replay macro
- `Q` replay last recorded macro

## Commands

- `^f` in command mode opens up editable buffer
- `^x` completion

- `/{pattern}` search forward
- `?{pattern}` search backward

### Buffers

- `:enew` create buffer
- `:e` edit file (pass file as param)
- `:bd` close buffer, this is useful when you have several files which you
  edited, didn't save and then deleted one of them, in this case use `:bd!` in
  the one which you deleted
- `:bw` wipe buffer
- `:only` close all splits except the focused one
- `^w`= - make all splits the same size

### Quicklist

- `:copen` Open the quickfix list window.
- `:ccl` or `:cclose` Close the quickfix list window.
- `:cnext` or `:cn` Go to the next item on the list.
- `:cprev` or `:cp` Go to the previous item on the list.
- `:cfirst` Go to the first item on the list.
- `:clast` Go to the last item on the list.
- `:cc <n>` Go to the nth item.
- `:cdo s/old/new/cgi` execute command for each entry in list
- `:cfdo %s/old/new/cgi` execute command for each file in list

### Other

- `:X` encrypt file
- `:wrap` and `:linebreak` to adequately view text files
- `:LspRestart` restart lsp

## Telescope

- telescope grep - to find
- `^q` to add all found files to quick list or
- `<tab>` to select some items and alt+q to add to quick list
- `:cdo` with buffer command to execute shit

## nvim-surround

- `Stdiv` wrap selected text in visual mode with div
- `dst` delete tag
- `cst` change tag

## Workflows

### Add to start of each line

- `^q` enter visual block mode
- `0` or `_` goto start of the line or first character
- `I` insert

### Add to end of each line

Breakdown:

- `^q` enter visual block mode
- `$` goto end of each line
- `A` append

### Find and replace occurrence after

Breakdown:

- `\*` start a search for the word under the cursor (g\* if you don’t want the word boundaries)
- `c` change
- `gn` the next match

So you put your cursor somewhere in a word, press \*cgn, type the replacement,
hit <esc>, and then hit `.` to change the next occurrence.

If you already searched for the word, ignore the \* and just cgn.

## fugitive

- `\_gg` open git menu
- `=` toggle diffview
- visual selection to add hunk
- `s` to stage
- `u` to unstage
- `<CR>` to go to file
- `cc` commit (hooks run before message)
- `dv` show diff view
- `s` push to remote

## References

[Features](https://www.youtube.com/watch?v=gccGjwTZA7k)
[Nice article](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/moving-blazingly-fast-with-the-core-vim-motions/)
