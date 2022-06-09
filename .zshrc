export DEFAULT_USER=tomer

CACHE_PATH="$HOME/.dotfiles/.cache"
if [ ! -d $CACHE_PATH ]; then
    echo "Creating .cache" >&2
    mkdir $CACHE_PATH
fi

if [ ! -f $CACHE_PATH/antigen.zsh ]; then
    echo "Getting antigen" >&2
    curl -L git.io/antigen > $CACHE_PATH/antigen.zsh
fi

source $CACHE_PATH/antigen.zsh
export ZSH_DISABLE_COMPFIX=true
export ZSH="/Users/tomer_blushinsky/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
antigen theme agnoster

antigen bundles <<EOBUNDLES
   git
   z
#   osx
   zsh-users/zsh-syntax-highlighting
#   docker
#   command-not-found
  fzf
EOBUNDLES

antigen apply

alias vim=nvim
eval "$(pyenv init - --no-rehash)"
eval "$(pyenv virtualenv-init - --no-rehash)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$DEFAULT_USER"
  fi
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

source $HOME/.dotfiles/alias.local
PATH=/Users/tomer_blushinsky/.nvm/versions/node/v16.15.0/bin:$PATH
PATH=$PATH:$HOME/.local/bin:$HOME/.poetry/bin
