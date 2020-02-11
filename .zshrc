export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh
source ~/.aliases
# source ~/.secrets
ZSH_THEME="robbyrussell"

plugins=(git ruby rails bundler sudo zsh-autosuggestions command-time)
source ~/.oh-my-zsh/oh-my-zsh.sh
eval "$(rbenv init -)"
source /Users/josephferrairo/Desktop/Code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function migration_touch() {
  if [ $# != 1 ]
  then
    echo "usage: migration_touch <filepath>"
    return 1
  fi

  new_timestamp=$(date "+%Y%m%d%H%M%S")
  new_filename=$(echo $1 | sed -e "s/[0-9]\{14\}/$new_timestamp/")
  echo "\033[1mTouch\033[0m $new_filename"
  mv -v $1 $new_filename
}

export THOR_MERGE="nvim -d"
