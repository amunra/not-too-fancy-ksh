# Not too fancy ZSH setup

This is my own ZSH setup.

The repo is made available for kicks:  honestly it's just
a personal setup in GH so I don't have to worry about copying it around between
my multiple machines.

The goal here is for it to be practical without being too fancy. I don't want:
* Extremely long load times
* A ton of dependencies
* Long prompts
* Special required fonts

Features:
* One line prompt
* Git status in prompt (aliged to the right)
* Colorized output
* A few aliases
* Autocompletion
* Trims long paths in prompt
* Colours cursor red when the last command failed

If you want to draw from this setup you'll still need a terminal that supports
full color and unicode. You're probably sorted on Linux, but on Mac grab iTerm2,
Kitty, Alacritty, or WezTerm.

# Setup

* Clone this repo somewhere
* `ln -s path/to/repo ~/.zsh`
* Alias `~.zsh/.zshrc` to `~/.zshrc`
* Add `~/.zshrc.before` and/or `~/.zshrc.after` to run extra setup steps before or after the main setup

# Dependencies

* [Helix](https://helix-editor.com/) text editor - `:theme ayu_dark`
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

# Inspiration

My setup is taken from https://thevaluable.dev/zsh-install-configure-mouseless/
and then tweaked to my liking.

# License

[MIT](LICENSE)

