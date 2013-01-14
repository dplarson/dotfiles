# dotfiles

## Inspiration
These dotfiles were inspired by the work of several users, most prominently:
* [Zach Holman](https://github.com/holman/dotfiles): general organization
* [David Xia](https://github.com/davidxia/bootstrap_dotfiles/): bootstrap installer
* [Josh Dick](https://github.com/joshdick/dotfiles): bootstrap installer


## Prerequisites
* OS X 10.6+
* [homebrew](https://github.com/mxcl/homebrew)
* [solarized color theme](https://github.com/altercation/solarized)

NOTE: *most*, but not all settings will work with Linux


## Install
Download the repository and run the installer:

```shell
$ git clone git://github.com/dplarson/dotfiles $HOME/.dotfiles
$ cd $HOME/.dotfiles
$ ./script/bootstrap
```

The bootstrap installer will symlink the necessary files as well as install some *essential* packages.


## Screenshot
iTerm 2 + zsh + solarized dark color theme + Inconsolata font on OS X 10.7:

![iterm2](https://raw.github.com/dplarson/dotfiles/master/zsh_iterm2_git_demo.png)
