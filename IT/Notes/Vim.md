# General

[Features](https://www.youtube.com/watch?v=gccGjwTZA7k)
[Nice article](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/moving-blazingly-fast-with-the-core-vim-motions/)

gx follow link
gf follow file
gu gU change case
gq split lines by 80 chars

:X encrypt file

z= select spell variants
zg add to dictionary

ctrl + a / ctrl + x - increment / decrement value of an integer

J join lines (removes \n in the end)

q<any char> <record shit> q
@<any char> - repeats shit

ctrl + f in command mode opens up editable buffer
ctrl + x completion

ctrl+q $ A to add to end of each line

^w= - make all splits the same size

K - info about token under cursor (lsp help / man)

zf - fold action (can be combined with ap and so on)
za - toggle fold
:wrap + :linebreak - to adequately view text files

:bd - close buffer, this is useful when you have several files which you
edited, didn't save and then deleted one of them, in this case use `:bd!` in
the one which you deleted

/{pattern} - search forward
?{pattern} - search backward

{line}gg - to go to specific line

# Macros

q<register-name> - records macro into <register-name>
"<register-name>p - pastes recored macro into buffer
q<register-name><macro>Q - <macro> will replay until error

# Quicklist

:copen - Open the quickfix list window.
:ccl or :cclose - Close the quickfix list window.
:cnext or :cn - Go to the next item on the list.
:cprev or :cp - Go to the previous item on the list.
:cfirst - Go to the first item on the list.
:clast - Go to the last item on the list.
:cc <n> - Go to the nth item.
:cdo s/old/new/cgi - execute command for each entry in list
:cfdo %s/old/new/cgi - execute command for each file in list

# Telescope

telescope grep to find
ctrl+q to add all found files to quick list or
tab to select some items and alt+q to add to quick list
:cdo with buffer command to execute shit

# nvim-surround

Stdiv - wrap selected text in visual mode with div
dst - delete tag
cst - change tag

# find and replace occurrence after

Breakdown:

- `\*`: start a search for the word under the cursor (g\* if you don’t want the word boundaries)
- `c`: change
- `gn`: the next match

So you put your cursor somewhere in a word, press \*cgn, type the replacement,
hit <esc>, and then hit `.` to change the next occurrence.

If you already searched for the word, ignore the \* and just cgn.

# fugitive

\_gg - open git menu
= - toggle diffview
visual selection to add hunk
s - to stage
u - to unstage
<CR> - to go to file
cc - commit (hooks run before message)
dv - show diff view
a - push to remote
