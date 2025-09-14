# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

#  hide neofetch start up message
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# -- Source Syntax and AutoSuggestions ---
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source <(fzf --zsh)

# --- Alias Setup ---

# Long and short ls alias
alias lls="eza -1 -l"
alias ls="eza"

# Code preview
alias pre="bat --color=always --style=numbers --line-range=:500 {}"

# Better cd zoxide with fzf
alias cd="z"
alias fd="zi"

# Git shortcuts
alias g="git"
alias gaa="git add ."
alias gb="git branch"
alias gcb="git checkout -b"
alias gm="git commit -m"
alias gp="git push"

neofetch
#fastfetch
# --- evals --
eval "$(zoxide init zsh)"



# Created by `pipx` on 2025-02-11 13:41:37
export PATH="$PATH:/Users/aidencox/.local/bin"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/bin:$PATH"
