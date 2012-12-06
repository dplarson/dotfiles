# dotfiles

## Inspiration
These files are inspired by Zach Holman's dotfiles, with a variety of modifications and additions.

To learn more, [fork Zach's dotfiles](https://github.com/holman/dotfiles) and [read Zach's post about dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).


## Requirements
vundle by gmarik [https://github.com/gmarik/vundle](https://github.com/gmarik/vundle)

homebrew by mxcl [https://github.com/mxcl/homebrew](https://github.com/mxcl/homebrew)

solarized color theme by altercation [https://github.com/altercation/solarized](https://github.com/altercation/solarized)


## Install

- `git clone git://github.com/dplarson/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.


## Screenshot
iTerm 2 + zsh + solarized dark + dotfiles on Mac 10.7:

![iterm2](https://raw.github.com/dplarson/dotfiles/master/zsh_iterm2_git_demo.png)
