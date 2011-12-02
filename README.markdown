# dotfiles

## Inspiration
These files are inspired by Zach Holman's dotfiles, with slight modifications.

To learn more, [fork Zach's dotfiles](https://github.com/holman/dotfiles) and [read Zach's post about his thoughts on dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Requirements
Requires vundle by gmarik [https://github.com/gmarik/vundle](https://github.com/gmarik/vundle)

## Install
	
	$ git clone git://github.com/dplarson/dotfiles ~/.dotfiles
	
	$ cd ~/.dotfiles
	
	$ rake install
	

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

