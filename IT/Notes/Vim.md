# General

[Features](https://www.youtube.com/watch?v=gccGjwTZA7k)

gx follow link
gf follow file
gu gU change case

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

K - info about token under cursor (lsp help / man)

zf - fold action (can be combined with ap and so on)
:wrap + :linebreak - to adequately view text files

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
