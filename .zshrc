export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh
source ~/.aliases
# source ~/.secrets
ZSH_THEME="robbyrussell"

plugins=(git rails ruby bundler sudo zsh-autosuggestions)
source ~/.oh-my-zsh/oh-my-zsh.sh
eval "$(rbenv init -)"
source /Users/josephferrairo/Desktop/Code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
