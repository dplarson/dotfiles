# dotfiles

## inspiration
These files are inspired by Zach Holman's dotfiles, with slight modifications.

To learn more, [read Zach's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## install

- `git clone git://github.com/dplarson/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

