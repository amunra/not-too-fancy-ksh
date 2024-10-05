## Uncomment the line below to profile,
## ditto for the line at the end of this file
# zmodload zsh/zprof

if [[ -f ~/.zshrc.before ]]; then
  source ~/.zshrc.before
fi

export EDITOR="hx"
export VISUAL="hx"

autoload -U compinit

if [[ -z "$ZSH_COMPDUMP" ]]; then
  ZSH_COMPDUMP="${ZDOTDIR:-$HOME}/.zcompdump"
fi

# Only run `compinit` if the dump file is missing or outdated
if [[ ! -f $ZSH_COMPDUMP || $ZSH_COMPDUMP -ot ~/.zshrc ]]; then
  compinit
fi

_comp_options+=(globdots) # With hidden files
source ~/.zsh/completion.zsh
alias ..="cd .."
alias l='ls -Fhl' ll='ls -aFhl' dir='ls -aFhl'

fpath=(~/.zsh/prompt $fpath)
setopt prompt_subst
autoload -Uz prompt_not_too_fancy_setup
prompt_not_too_fancy_setup

if [[ -d /opt/homebrew ]]; then
  # MacOS
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
  # Ubuntu
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export CLICOLOR=1
export LESS_TERMCAP_mb=$(print -P "%F{cyan}") \
    LESS_TERMCAP_md=$(print -P "%B%F{red}") \
    LESS_TERMCAP_me=$(print -P "%f%b") \
    LESS_TERMCAP_so=$(print -P "%K{magenta}") \
    LESS_TERMCAP_se=$(print -P "%K{black}") \
    LESS_TERMCAP_us=$(print -P "%U%F{green}") \
    LESS_TERMCAP_ue=$(print -P "%f%u")

# Stash extra scripts in `~/bin` for convenience
export PATH="~/bin:$PATH"

setopt interactivecomments

# Load local settings, beyond what is managed by the common `.zshrc`
# synced to GitHub
if [[ -f ~/.zshrc.after ]]; then
  source ~/.zshrc.after
fi

# zprof
