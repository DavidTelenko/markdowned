# Poweruser

## Baby Steps

- [x] Touch typing
- [x] Vim Motions
- [x] Markdown

## Shallow waters

- [x] Poweruser settings, Powertoys
- [x] Keyboard centric workflow
- [x] Master your Browser (Opinionated)

## Deep woods

- [x] Terminal workflow
- [ ] Must have terminal apps
- [ ] CLI - Nushell, zsh, dash, bash, sh
- [ ] Terminal emulator - Windows Terminal, Wezterm, Kitty
- [ ] Configuring tools
- [ ] Your `dots`
- [ ] Neovim as your editor

## Wildlife

- [ ] Linux
- [ ] Window Manager vs Desktop Environment
- [ ] Key Mapping
- [ ] Hyprland
- [ ] Deep waters

# Preface

This is my roadmap for beginners to become a better user or even `poweruser`.

Everything written here is authors personal path, article contains highly
opinionated suggestions so take it with a grain of salt and feel free to
diverge anywhere.

> Before we start, I assume this article is being read by pretty casual users,
> so as a starting point `OS Windows`, `VSCode`-like editors, Mouse and
> Keyboard workflow assumed. Still I'll have to note that as a more advanced
> user you can find some useful tips here, probably somewhere further down the
> road.

# Baby steps

This section describes first steps into shallow water. Don't be scared if any
of the steps below would make your productivity diminish at first, this is
natural for human beings. This section was the toughest for me, I struggled a
lot here, I hope all notes written here will help you to overcome some of the
difficulties down the road. Just remember: once your hands get used to it, once
you develop a muscle memory, you cannot be stopped!

## Touch typing

Learn how to touch type, start where you are, use same tools as you use.

I only have this tips for you here.

- Use learning sites to put mind in motion (e.g [keybr](https://keybr.com)).
- Use sites like [monkeytype](https://monkeytype.com) to practice.
- Try not to look at keyboard as much as possible.
- Focus on accuracy not speed.
- If you feel that accuracy drops but speed grows, artificially slow your
  typing speed.
- Increase your 'cache', try typing more and more words in succession.
- Try exercising lookahead. If you typing a test, while typing one word try to
  think and look for the next one. If you typing from your head, try splitting
  your mind into typing and thinking part (yeah that's weird).
- Learn number row, don't bother too much about arrow keys and numpad, we will
  fix this later.

Some speed ranges:

- 40 WPM is good but not enough.
- 60 WPM is good enough for normal tasks.
- 90+ WPM is good for all tasks you will find in this article.

## Vim Motions

Next is learning vim motions. This step is crucial for most of the article,
because a lot of tools listed here will use similar bindings.

Remember one thing: Learning vim motions is very similar to learning how to
touch type. At first you'll be slow af and think that this is useless. Once you
get used to this motions you will love them i promise.

If you use vscode, vs, jet brains tools for coding or older versions of MS Word
for writing text, you can use extension provided by the tool. Just search the
Internet for one. With code editors and IDE's it won't be a problem with
proprietary software like Word or other Microsoft tools it could be a bit
complicated but achievable.

After installing the extension first thing to do is watching Primeagen videos
on vim motions. For ground basic motions I recommend some online tools like
[this one](https://www.vim-hero.com/).

The basic roadmap to learn vim motions is the following:

- Use whatever you know, and constantly watch and learn new.
- If you found interesting motion or move write that to your daily notes.
- Use new motions.
- Repeat.

And remember: for now don't try Vim itself.

There is a ton of cheet sheets in the Internet which can be used as a bootstrap
for learning.
To make this article a bit shorter I will just write some of my own most used
and interesting motions, so that when you learn and understand most of the
basic things you can come back here and find something more advanced and
useful.

- `A` - append to the end of the line (enter insert)
- `I` - prepend to the beginning of the line (enter insert)
- `ciw` - delete word and enter insert mode
- `ci"` - delete inside quote and enter insert mode
- `yiw` - copy word
- `di"` - delete inside quotes
- `da"` - delete around quotes
- `yy` - copy line
- `dd` - delete line
- `dap` - delete around paragraph
- `dip` - delete inside paragraph
- `V` - enter visual line mode
- `gx` - follow link
- `gf` - follow file
- `~` - toggle case
- `:X` - encrypt file
- `-z=` - select spell variants
- `zg` - add to dictionary
- `gq` - split lines by length of `textwidth`
- `ctrl + a / ctrl + x` - increment / decrement value of an integer
- `g ctrl + a` in visual block - will iterate over numbered list and increment
  each number by one effectively creating numbered list.
- `J` - join lines (removes \n in the end)
- `q<any char> <record presses>q` - record macro
- `@<any char>` - repeats presses (macro)
- `:put <any char>` - put contents of macro as text into current buffer
- `"<any char>y` - copy text to register <any char>, if text is macro it can be
   played with `@<any char>`
- `ctrl + f` - in command mode opens up editable buffer
- `ctrl + x` - completion
- `ctrl + q $ A` to add to end of each line
- `K` - info about token under cursor (lsp help / man)
- telescope grep to find `ctrl+q` to add all found files to quick list or `tab`
  to select some items and `alt+q` to add to quick list `:cdo` with buffer
  command to execute shit

All of the things listed above is quite advanced so don't bother about them for
now, remember to take a look at them once you'll be a bit more skilled.

## Markdown

After learning how to touch type and use vim motions you should practice. The
best activity is of course coding and configuring. However if you like to write
stuff, or you're a student and want to write some notes I suggest using
markdown file as a learning ground.

To be completely honest with you I really like markdown and think that it is
the go to file format for writing any kind of document, no matter the
importance. With consistent style and renderers to pdf and html you can
effectively write any type of work using `.md` format.

Learning md is extremely easy,
[here](https://www.markdownguide.org/cheat-sheet/) is the source i learned
from. I won't list any of the syntax here, because everything is listed pretty
neatly in the Internet.

The thin I would suggest though is start your own markdown diary. Create
conscience file structure which suits you, and write some ideas, lists, todo's
and so on in markdown. This will bootstrap your productivity with Vim motions,
cause it would require you to know some more advanced motions to navigate and
edit in bulk, and also will help you practice touch typing. Every editor in
existence have some sort of an extension for markdown, so you can use it and
start working on your notes. As a newbie tool for markdown I'd suggest
[obsidian](https://obsidian.md/).

# Shallow waters

Now we're entering more interesting part. As was mentioned before I assume the
reader uses MS Windows as primary OS, however this section is also applicable
for Desktop environment Linux users and MacOS users.

## Poweruser settings

This is quite general advice and quite opinionated one. First thing first,
manage system resources and processes. Remember to close long running and
useless apps. Remove all unnecessary software and files. 

Secondly, for the love of God, organize your directories. My personal layout is
something along the lines of:

Hard drive (aka Slow one):

- Downloads
- Videos
    - Captures
    - Movies
    - Series
- Pictures
    - Backgrounds
    - Icons
    - Personal
- Games
    - Files
    - Saves
    - Installers
- Cache

Solid state drive (aka Fast one)

- Programs
- Games

This structure is "virtual" that means each operating system will have
different approach for storing this files, nevertheless your task as a user is
to try to organize all this directories and files in a sane way, so that you
can easily navigate and search for files in it. My personal advice is to
separate directory layer from file layer. That means create subdirectories
in directories but if the directory contains files avoid mixing it with
subdirectories. Of course this is not a rule and is not enforced or anything,
but in general it makes navigations and reasoning easier.

Thirdly manage your startup and register (for Windows). Do not bulk clean
everything, use VM or Docker Images for managing some outdated or noisy
software (that's for students who are required to use lots of bsht software)

Also if you are a Windows user
[Powertoys](https://github.com/microsoft/PowerToys) is a must have. This is the
tool for Windows which adds whole lot of things to the system. I think this one
must've been in the core Windows for a long time.

## Keyboard centric workflow

After a decent amount of time with vim you may feel a bit of pain using the OS
the same way you used it before. It happened to me. First and foremost the
infamous arrow keys. They are used everywhere in the system, but not all tools
(I'd say not a single one) gives an ability to rebind and use different keys
for navigation. It's obvious that home row keys is way better keys for
navigation, and the only answer to this problem is global system remapping.

In Windows I use powertoys remapping utility, in Linux keyd daemon.
My action button remapping follows the vim one to one but to use this keys we
need to find modifier. It depends on how exactly you want to use this
remapping, as personal preference i suggest using combinations with your left
of right thumb buttons: Meta, Alt or in some keyboards special space buttons.
Without further ado here is the list of my remapped keys:

- Arrow Keys
    - `Alt + h` - `Arrow Left`
    - `Alt + j` - `Arrow Down`
    - `Alt + k` - `Arrow Up`
    - `Alt + l` - `Arrow Right`
- Word navigation
    - `Alt + w` - `Ctrl` + `Arrow Left`
    - `Alt + b` - `Ctrl` + `Arrow Right`
- Media buttons
    - `Alt + p` - `Play/Pause`
    - `Alt + v` - `Volume Up`
    - `Alt + Shift + v` - `Next Track`
    - `Alt + n` - `Volume Up`
    - `Alt + Shift + n` - `Previous Track`
    - `Alt + ,` - Seek back 5 sec (Linux only)
    - `Alt + .` - Seek forward 5 sec (Linux only)
- Other
    - `Capslock` - `Left Control`
    - `Alt + Numlock` - `Capslock`

All other keyboard shortcuts is good enough in Windows and for Linux you can
find my dot files in my GitHub.

Keyboard shortcuts on Windows which is most useful is the following:

- `Win + <Number>` - Launch or switch to app at <Number> icon in your bar
- `Win + Shift + S` - Launch built-in screenshot utility
- `Win + Tab` + `Alt + hjkl` - Switch around other apps which is far away from 123456 keys
- `Alt + F4` - Close app, you can easily remap this to something closer to home row
- `Win` + *start typing* - app launcher

With these set up you can tackle a lot more and a lot faster. Vast majority of
software will be way easier to navigate, any text field not becomes stripped
version of Vim and with only one extra hold press you can achieve some
fractions of Vim productivity in any app. This setup effectively removes mouse
from your workflow. But not in all places. One such place is the browser.

## Master your Browser

After setting up your keymaps you'll find yourself still incapable of fully
channeling your new abilities in your browser.

One fix to the issue is [vimium-c
extension](https://chromewebstore.google.com/detail/vimium-c-all-by-keyboard/hfjbmagddngcpeloejdejnfgbamkjaeg)
it's basically vim in your browser no more to add. The only difference is
slight divergence in terms of some mnemonics, so you need to invest a couple of
days of initial training. However after that, you'll be able to use your
browser 20-40% faster.

Still this extension does not solve all of browser issues. One of which is
tabs. If you use vertical tabs and workspaces you solved the half of the
problem. If you use horizontal tabs you may sometimes find yourself drowning in
tabs. I myself still did not find an ideal solution to this problem. Frequently
closing unused tabs and in-place management can help a bit. The most help
you'll receive from tab search. In firefox it's a bit clunky because you need
to create a new tab and then use mnemonic to search all opened tabs (% sign
before search). In chromium based browsers there is build in widget that shows
up on Ctrl+Shift+A keybind. For me this is a go to method of navigating tabs.
Also there's probably some decent extensions which achieves the similar result in
different browsers.

My personal preference is to use browser in fullscreen and focus on the opened
tab and not all the junk around.

The only chromium browser which allow to search from fullscreen and to use
Ctrl+Shift+A keybind to search opened tab is Naver Whale.

- Brave browser allows to search opened tabs, but searching from fullscreen is a
  pain (requires to use vimium c open tab action).
- Firefox does not allow searching opened tabs adequately.
- Vivaldi also doesn't allow it.
- Edge browser does not have and immersive search bar, it displays search and
  tabs even in fullscreen.
- Sidekick has too much so called +Pro features which is not free, and also does
  not allow searching opened tabs conventionally.
- Zen browser also doesn't search opened tabs and shows screen border even if
  everything is hidden.
- Opera has a lot of built-in features but neither allow searching tabs nor clean
  in fullscreen.

So for now my favorite browser is `Naver Whale` for Windows and `Brave` for Linux.

This all is opinionated and my personal preference, however if you also want to
use apps in fullscreen and focus on an actual content rather then menus those
two are the best choice for now.

# Deep woods

## Terminal workflow

Now when you're already mastered all your tools and learned how to efficiently
jump around your OS you can step up in the game and boost your OS management
with keyboard centric approach.

What i mean by that is you should learn how to use terminal and how to receive
satisfaction from using it. You may ask why should I learn terminal if I
already can do stuff with a GUI applications? I have several answers to this
question. Firstly not all systems can have a GUI. Sometimes, especially in area
of development and system management, there is no GUI and you need to work only
with terminal. Secondly any GUI applications in one way or another requires you
to use your mouse. The whole design revolves around you clicking buttons on the
screen. It is extremely hard to master full keyboard driven workflow when
you constantly need to reach for the mouse or touchpad in GUI applications.
Lastly terminal applications is way simpler than GUI. All options of a GUI
application is thrown on you when you first launch it. Sometimes apps can have
thousand of buttons all around the place. Terminal commands on the other hand
have none. You only use what you need and what you know. If you want to know
more you learn. It's that simple. In GUI applications you still need to wrap
your head around all of the buttons, even if it is delayed and can be grasped a
bit faster with mnemonics, icons and tooltips. In the end I'd say that terminal
is a way better place to use your keyboard and master all of the skills
received in previous sections of this article.

So now let's dive into the terminal workflow terminology and meaning behind
most of the basic stuff. If you're already familiar feel free to skip this
paragraph.

- What is a **Terminal emulator**: this is a program which renders console,
it's sole purpose is to draw you a picture and receive and input from you.
Terminal emulators can have a lot of features, which generally involves
rendering text, images, multiplexing (opening several CLIs and so on.)

- What is a **Command line interpreter (CLI)**: this is a program which reads
an input from user and invokes it. You type your command here, it executes and
shows the result. This thing launches inside of your terminal emulator.

- What is a **Command**: command is a general vague thing. It can be script,
executable or build in command into your CLI. Any script or executable have a
location on your disk. The most crucial difference between script and
executable is that the script cannot be launched by itself, but executable can.
The script needs a runtime or interpreter: different program which will read
the script line by line and invoke machine code just as it reads it. And lastly
build-in command, this thing does not have an actual file which represents it,
this is a token / a name inside of a different program (CLI) which reads it
sees that it is built-in command and executes it from within the machine code
of itself.

- What is a **Path environment variable**: in order to execute built-in command
CLI looks into it's machine code, but in order to execute any external script
or executable simply by it's name, it needs to know where exactly it is located
in your file system in your disk. The **path environment variable** is special
list of locations which can be executed from CLI. CLI will first look at the
list of it's built-in commands and if none found, it will look in the list
specified in **Path** and if some was found it will execute first script or
executable listed there.

- What is an **External script**: some scripts is just a bunch of commands
written in succession for specific CLI. CLI can simply read this file line by
line and execute it as if it where the user that typed them, other scripts can
be written practically in any interpreted language (e.g javascript, python,
lua). Normally CLI does not have built in javascript, python or lua interpreter
baked into it so in order to execute this script it will first need to know
which runtime to use. Some CLIs are smart enough to find which interpreter to
use in the **Path**, others will require you to type command which will call a
script from a necessary runtime.

- What is a **Package manager**: in order to download new programs or scripts,
maintain version control, stability, protection of your registry, non-pollution
of a **Path** you need some automated tool. Meet **package manager**. It's yet
another program which sits on your disks, have an entry in your **Path** and
can be launched from CLI. The purpose of this program is to help you to
download and/or update software on your PC. It is responsible for adding
programs to **Path**, checking it's validity, safely removing them and cleaning
all unnecessary garbage that may left after deletion maintaining all your
personal configurations.

> In the end you're left with a `terminal emulator` which runs `CLI` which
> executes `commands` if it finds it in your `Path` or inside of a `built-in`
> commands list.

## Must have terminal apps

So now when we understand all the terminology I will lay upon you the list of
all my favorite command line utilities, commands, package managers, scripts,
terminal emulators and command line interpreters.

# // Temp List of Soft

- `aria2c` - downloader (bit torrent client)
- `bat` - cat
- `bottom` - resource manager (btm > btop)
- `brename` - batch rename
- `cmus` - music player
- `croc` - share files
- `delta` - git diff
- `eza` - better ls
- `fd` - better find
- `ffmpeg` - aio low level media driver
- `fzf` - fuzzy finder (find anything from anything)
- `gow` - gnu on windows
- `mpv` - videoplayer
- `mupdf` - books (dark reader)
- `nu` - shell
- `nvim` - edit
- `oh-my-posh` - prompt styling
- `pdftk` - pdf toolkit
- `rg` - grep
- `scoop` - win pm
- `tokei` - lines of code
- `ttyper` - typing trainer
- `wiztree` - visual du Windows only
- `yazi` - explorer
- `yt-dlp` - download from youtube
- `zoxide` - jump dir (cd with memory)
