export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting rust you-should-use)
source "$ZSH/oh-my-zsh.sh"

alias ls="eza --icons --group-directories-first"
alias ll="eza --long --icons --group-directories-first"
alias cat="bat"

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
