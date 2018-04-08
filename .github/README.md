# dotfiles
Using a bare git repo for git files. Using this [tutorial](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).

# vim
[Pathogen](https://github.com/almos98/dotfiles/blob/master/.vim/autoload/pathogen.vim)

# Lock screen
The lock script makes use of i3lock and ImageMagick. It was inspired by
[BetterLockScreen](https://github.com/pavanjadhaw/betterlockscreen/blob/master/README.md)
and [i3lock-fancy](https://github.com/meskarune/i3lock-fancy).

When I log in it also runs the script with a command line argument to create a
fake login screen. I am automatically logged in to tty and the lock script is
then run. I followed
[this](https://unix.stackexchange.com/questions/42359/how-can-i-autologin-to-desktop-with-systemd)
post to set up autologin.
