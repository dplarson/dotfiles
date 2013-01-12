# dotfiles

## Inspiration
These dotfiles were inspired by the work of several users, most prominently:
* [Zach Holman](https://github.com/holman/dotfiles): general organization
* [David Xia](https://github.com/davidxia/bootstrap_dotfiles/): bootstrap installer
* [Josh Dick](https://github.com/joshdick/dotfiles): bootstrap installer


## Requirements
*Most*, but not all settings will work on both OSX and Linux.

* [homebrew by mxcl](https://github.com/mxcl/homebrew)

* [solarized color theme by altercation](https://github.com/altercation/solarized)


## Install
Download the repository to your local machine and run the installer:

```shell
$ git clone git://github.com/dplarson/dotfiles $HOME/.dotfiles
$ cd $HOME/.dotfiles
$ ./script/bootstrap
```

The bootstrap installer will symlink the necessary files from dotfiles directory to your home directory. It will also install some default packages (e.g. **Python**).


## Screenshot
iTerm 2 + zsh + solarized dark + dotfiles on Mac 10.7:

![iterm2](https://raw.github.com/dplarson/dotfiles/master/zsh_iterm2_git_demo.png)
