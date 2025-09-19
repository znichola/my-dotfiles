# Config files for various things

## PowerShell config

Make sure to put it into the `~\Documents\PowerShell\` folder


## Tmux

Not sure where to place the file, but it's got the settings I like, they can also be manually typed into tmux `CTRL-b :` and `set mouse` for instance.

`$> tmux` launches a new session with no name

`$> tmux a` attaches to the first session


## Ghostty

[Ghostty](https://ghostty.org/) is cool new terminal for linux, to install as an app image (you can run it like an exec) use this [ghosty-appimage](https://github.com/pkgforge-dev/ghostty-appimage) it's also at the end of the ghostty instalation docs.

Launching it with `$ gostty` but this then attaches the output for the program to the console, and closing the console closes the program.

To fix, If it's already running you can pause it with Ctrl-Z, pull it into the background with bg and then disown it, like this:

```bash
sleep 1000
^Z
[1]+  Stopped                 sleep 1000
bg
disown
exit
```

[man disown](https://www.gnu.org/software/bash/manual/html_node/Job-Control-Builtins.html#index-disown)


To list keybinding:
```bash
ghostty +list-keybinds
```

