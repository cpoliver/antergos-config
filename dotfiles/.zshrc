export DEFAULT_USER="$(whoami)"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export ZSH=/home/cpoliver/.oh-my-zsh

export EDITOR="$(which vim)"
export VISUAL="$(which vim)"

COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"
ZSH_THEME="spaceship"

plugins=(docker httpie ssh-agent man github node npm yarn tig z)

source $ZSH/oh-my-zsh.sh
source "/home/cpoliver/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# run xinit script which in turn runs xcape mapping (TODO: improve this!)
~/.xinitrc

# run ssh-add once on login
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

# aliases: casumo
alias cap='casumo-proxy'
alias gdev='gulp dev'
alias cf='cd ~/Code/casumo-frontend'
alias si='cd ~/Code/casumo-frontend/web/site'
alias mo='cd ~/Code/casumo-frontend/web/mobile'
alias ss='cd ~/Code/casumo-frontend/web/sensei'
alias sidev='si && gdev'
alias modev='mo && gdev'
alias ssdev='ss && gdev'

# aliases: colours
alias bgrgreen='PROMPT="%{$bg[green]%}%{$fg[white]%}"'
alias bgrred='PROMPT="%{$bg[green]%}%{$fg[white]%}"'

# aliases: destructive
alias jihad!='killall'
alias nuke!='rm -rf'
alias rmnm!='nuke ./node_modules'

# aliases: git
alias g='gs'
alias ga='git add'
alias ga.='git add .'
alias gc='git commit'
alias gcam='git commit --amend --reuse-message=HEAD'
alias gcama!='ga. && gcam'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcz='git cz'
alias gd='git diff'
alias gds='git diff --staged'
alias gi='git init'
alias gl='git log'
alias gpl='git pull'
alias gplr='git pull -r'
alias gprom='git pull -r origin master'
alias gps='git push'
alias gpssu='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gpsf!='git push --force-with-lease'
alias gr='git reset'
alias grh!='git reset --hard'
alias gri='git rebase -i'
alias grs='git reset --soft'
alias gs='git status'
alias gst='git stash'
alias gsa!='git stash apply'
alias gsd!='git stash drop'
alias gsl='git stash list'
alias gsp!='git stash pop'

# aliases: open
alias o='xdg-open'
alias open='o'

# aliases: ssh
alias shad='ssh-add -k ~/.ssh/id_rsa'
alias sshlive='bgrred && ssh ops@live-release'
alias sshtest='bgrgreen && ssh ops@test-release.casumotest.local'

# aliases: yarn
alias ya='yarn add'
alias yga='yarn global add'
alias yag='yga'
alias ycc='yarn cache clean'
alias yr='yarn remove'
alias ygr='yarn global remove'
alias yrg='ygr'

# aliases: yay
alias ys="yay -S --noconfirm"

# aliases: util
alias vi="vim"
alias zshrc="code ~/.zshrc"
