# General

- `^[` esc escape sequence

## With `g`

- `gx` follow link
- `gf` follow file
- `gu` `gU` change case
- `gq` split lines by 80 chars

## With `[` `]`

- `]<Space>` insert space below/above cursor
- `]q` next quickfix entry
- `]b` next buffer
- `]l` next loclist entry
- `]c` next git hunk

## Integer increments

- `^a` increment value of an integer
- `^x` decrement value of an integer

## Capital `hjkl`

- `J` join lines (removes \n in the end)
- `K` info about token under cursor (lsp help / man)
- `L` to the end of the line (custom)
- `A` to the end of the line and go to insert mode
- `0` to the start of the line (custom)
- `H` to the first printable character of the line
- `I` to the first printable character of the line and go to insert mode

## Other

- `{line}gg` to go to specific line
- `<leader>sa` to swap parameters (custom treesitter mapping)

## Text objects

Is used with `i` and `a` motions. E.g: `viw` (visual inside word), `dat` (delete around tag)
If you're already in visual mode using `i<text-object>` `a<text-object>` will move into inner/outer selection region

### Custom [nvim-various-textobjs](https://github.com/chrisgrieser/nvim-various-textobjs)

- `s` subword (*camel*Case)
- `i` indentation block
- `q` any quote
- `o` any bracket

### Native

- `w` word
- `W` consecutive characters
- `p` paragraph
- `t` tag block

## Folds

- `z=` select spell variants
- `zg` add to dictionary
- `zf` fold action (can be combined with ap and so on)
- `za` toggle fold

## Macros

- `q<register-name><inputs>q` records macro into <register-name>
- `"<register-name>p` paste recorded macro into buffer
- `"<register-name>yy` yank back into register
- `q<register-name><macro>Q` <macro> will replay until error
- `q<capital-register-name><macro>` will record macro to the end of `<register-name>`
- `@<register-name>` replay macro
- `Q` replay last recorded macro

## Commands

- `q:` in normal mode opens command mode buffer
- `^f` in command mode opens up editable buffer
- `^x` in command mode completion
- `/{pattern}` search forward
- `?{pattern}` search backward
- `:put = execute('<command>')` copy contents of executing command into current buffer
- `:Bufferize <command>` [plugin](https://github.com/AndrewRadev/bufferize.vim) to put results into buffer
- `:setglobal` set option globally
- `:norm` execute any normal mode actions in a buffer
- `c_CTRL-Q` verbatim input (esc to input ^[) helpful for `:norm`
- `:r! <command>` execute command and copy its stdout to current buffer
- `:g` Execute the Ex command [cmd] (default ":p") on the lines within [range] where {pattern} matches.
- `:noa` disable running autocommands once (useful to omit autoformatting on write)
- `:set ft=` set filetype of a buffer, useful for syntax highlighting in `:new`
- `:au` list autocommands
- `:map` list mappings

### Buffers

- `:enew` create buffer
- `:e` edit file (pass file as param)
- `:bd` close buffer, this is useful when you have several files which you
  edited, didn't save and then deleted one of them, in this case use `:bd!` in
  the one which you deleted
- `:bw` wipe buffer
- `:only` close all splits except the focused one
- `^w=` - make all splits the same size
- `:%bd|e#` kill all buffers except current one
- `:%bd` kill all buffers
- `:e#` open the last buffer

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

## Workflows

### nvim-surround

- `Stdiv` wrap selected text in visual mode with div
- `dst` delete tag
- `dsf` delete function call
- `cst` change tag
- `viWS(` surround the WORD with parenthesis

### Telescope

One of the most used refactoring workflows

- telescope grep - to find
- `^q` to add all found files to quick list or
- `<tab>` to select some items and alt+q to add to quick list
- `:cdo` with buffer command to execute shit

### Add to start of each line

- `^q` enter visual block mode
- `0` or `_` goto start of the line or first character
- `I` insert

### Add to end of each line

Breakdown:

- `^q` enter visual block mode
- `$` goto end of each line
- `A` append

### Replace search under cursor

- `*` or `#` to search for next
- `:%s//replaced/g` to replace found text

### Diff two files

- `^wv` open vertical split
- `:diffthis` mark first buffer to diff
- `^wl:diffthis` mark second buffer to diff
- take a look at your diff
- `:diffoff` stop diff mode

Also it is sometimes useful to just do `set scrollbind` and `set cursorbind` in
order to synchronize two opened buffers

### :norm instead of macro

- `v` visually select text which you want to change
- `:norm <keys><cr>` do you stuff

### Edit existing register visually

- `:let @q='` open the q register
- `<Cntl-r><Cntl-r>q` paste the contents of the q register into the buffer
- `^` add the missing motion to return to the front of the line
- `'` add a closing quote
- `<Enter>` finish editing the macro

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
- `ca` amend + edit the message.
- `ce` amend + without editing the message.

## References

- [Features](https://www.youtube.com/watch?v=gccGjwTZA7k)
- [Nice article](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/moving-blazingly-fast-with-the-core-vim-motions/)
