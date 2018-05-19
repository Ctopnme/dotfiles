# dotfiles
Using a bare git repo following [this tutorial](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).

This readme might be lengthy as I try to keep it as informative as possible, including description of the files and sources that I used. Mainly for myself but also for any curious minds that somehow find this repository.

# vim
Config needs a revision.

[Pathogen](https://github.com/almos98/dotfiles/blob/master/.vim/autoload/pathogen.vim)

# i3 config
[**i3 Manual/User Reference**](https://i3wm.org/docs/userguide.html)

## Color

| Section | Color |
| ------- | ----- |
| Background | #002B36 ![#002B36](https://placehold.it/15/002B36/000000?text=+) |
| Inactive Background | #002B36 ![#002B36](https://placehold.it/15/002B36/000000?text=+) |
| Text | #FFFFFF ![#FFFFFF](https://placehold.it/15/FFFFFF/000000?text=+) |
| Inactive Text | #828282 ![#828282](https://placehold.it/15/828282/000000?text=+) |
| Urgent Background | #E53935 ![#E53935](https://placehold.it/15/E53935/000000?text=+) |
| Indicator | #002B36 ![#002B36](https://placehold.it/15/002B36/000000?text=+) |

## Keybindings
My mod key is the Super key (also known as Windows).

Keysyms used can be found using [xev](https://www.archlinux.org/packages/extra/x86_64/xorg-xev/).

| Key(s) | Action |
| ------ | ------ |
| Mod + Return | Opens termite |
| Mod + Shift + Return | Opens termite in floating mode |
| Mod + Shift + Q | Kill window |
| Mod + D | Application launcher (Rofi) |
| Mod + h/j/k/l | Change window focus |
| Mod + Shift + h/j/k/l | Move focused window |
| Mod + v | Toggle container split orientation |
| Mod + f | Fullscreen toggle |
| Mod + s | Layout: stacking |
| Mod + t | Layout: tabbed |
| Mod + g | Layout: default |
| Mod + Shift + Space | Toggle floating |
| Mod + Space | Toggle focus from floating/tiling |
| Mod + a | Focus parent container |
| Mod + Shift + R | Restart i3 |
| Mod + x | Lock the computer |
| Mod + Shift + e | Exit i3 |
| XF86AudioMute | Mute sound |
| XF86AudioLowerVolume | Lower volume levels |
| XF86AudioRaiseVolume | Raise volume levels |
| XF86MonBrightnessDown | Decrease screen brightness |
| XF86MonBrightnessUp | Increase screen brightness |
| XF86Search | Play/pause media |
| XF86LaunchA | "Previous" media |
| XF86Explorer | "Next" media |
| PrtSc | Screen selection capture |
| Shift + PrtSc | Entire screen capture |
| Mod + \<number\> | Change to Workspace \<number\> |
| Mod + Shift + \<number\> | Move focused window to workspace \<number\> |
| Mod + r | Enter resize mode |

## Sound Bindings
The sound bindings can stop working sometimes, most likely because the sink ID has changed.
To find your sink ID run the command:
```
    $ pactl list sinks
```

## Lock screen
The lock script makes use of i3lock and ImageMagick. It was inspired by
[BetterLockScreen](https://github.com/pavanjadhaw/betterlockscreen/blob/master/README.md)
and [i3lock-fancy](https://github.com/meskarune/i3lock-fancy).

When I log in it also runs the script with a command line argument to create a
fake login screen. I am automatically logged in to tty and the lock script is
then run. I followed
[this](https://unix.stackexchange.com/questions/42359/how-can-i-autologin-to-desktop-with-systemd)
post to set up autologin.

## Screenshotting
The screenshotting bindings I have were found
[here](https://www.reddit.com/r/i3wm/comments/65vis5/screenshot_commands_from_my_i3_config/).
Will probably looking into changing this soon.

## Other resources
[Launching terminal in floating mode](https://faq.i3wm.org/question/5866/two-keybindings-for-starting-terminal-normally-and-floating/index.html%3Fanswer=5867.html#post-id-5867)

