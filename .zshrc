. "$HOME/.local/bin/env" #out of the box config. Without it, no local binaries would be set

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k #getting the powerlevel10k configs

# CUSTOM: source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh #actually sourcing fzf

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

autoload -Uz compinit && compinit #autoloading

zinit cdreplay -q #recommended by docs: reloading cache

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
# bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region
bindkey -v

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# # Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color'
# alias vim='nvim'
# alias c='clear'

# Shell integrations
eval "$(fzf --zsh)"
# eval "$(zoxide init --cmd cd zsh)" #from the yt tutorial
eval "$(zoxide init zsh)" #from the zoxide docs


##############################
# CUSTOM settings


# Path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" #--no-use  # This loads nvm without setting a default node version yet
source ~/.cargo/env # Load Rust environment

# Aliases
alias lsa='ls -la --color'
alias lsar='ls -laR --color'
alias vim=nvim
alias vi=nvim
alias cls='clear'
alias python=python3
alias py=python3
alias tm=tmux
alias uvr='uv run'
alias g=git
alias gpl='git pull'
alias gtr='git tree'
alias gst='git status'
alias gdf='git diff'
alias gad='git add'
alias gcm='git commit'
alias gps='git push'
alias gsw='git switch'
alias gbr='git branch'
alias gls='git ls-files'
alias ice='uv run icebreaker'

#
setopt ignoreeof #prevents exiting shell with Ctrl+D
