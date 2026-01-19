
alias ..='cd ..'
alias rm='trash -v'
alias mkdir='mkdir -p'
alias cpp='rsync --info=progress2'
alias sb='source ~/.bashrc'
alias c='clear'
alias ipconfig='ip addr show'
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {l}' --preview-window=right:60% | xargs -ro yay -S"

alias ll='ls -Fls'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gca='git commit -am'
alias gp='git push'
alias gpl='git pull'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'

alias py='python3'
alias pipup='pip install --upgrade pip'
alias mkenv='python3 -m venv venv'
alias avenv='source venv/bin/activate'
alias djrun='python manage.py runserver'
alias djmigrate='python manage.py migrate'

s () {
  local server
  server=$(grep -E '^Host ' ~/.ssh/config | awk '{print $2}' | fzf)
  if [[ -n $server ]] then
    ssh $server
  fi
}