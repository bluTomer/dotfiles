export DEFAULT_USER=tomer

CASH_PATH="$HOME/.dotfiles/.cache"
if [ ! -d $CASH_PATH ]; then
    echo "Creating .cache" >&2
    mkdir $CASH_PATH
fi

if [ ! -f $CASH_PATH/antigen.zsh ]; then
    echo "Getting antigen" >&2
    curl -L git.io/antigen > $CASH_PATH/antigen.zsh
fi

source $CASH_PATH/antigen.zsh

antigen use oh-my-zsh
antigen theme agnoster

antigen bundles <<EOBUNDLES
  git
  z
  osx
  zsh-users/zsh-syntax-highlighting
  docker
  command-not-found
EOBUNDLES

antigen apply

alias vim=nvim
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$DEFAULT_USER"
  fi
}

PATH=$PATH:$HOME/.local/bin:$HOME/.poetry/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
