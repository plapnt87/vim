ZSH_THEME="af-magic"

alias show_hidden="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

#Mattia GitHub shortcut
alias add='git add .'
alias com='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias sta='git status'
alias gck='git checkout'

#run Python server plus migrations:
alias runserver='./manage.py runserver 0.0.0.0:8000'
alias migrateserver='./manage.py makemigrations ; ./manage.py migrate ; ./manage.py runserver 0.0.0.0:8000'
alias pipmigrateserver='pip install -R requirements/common.txt ; ./manage.py makemigrations ; ./manage.py migrate ; ./manage.py runserver 0.0.0.0:8000'
alias ws3='source ~/Development/envs/ws3/bin/activate'

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. `brew --prefix`/etc/profile.d/z.sh
