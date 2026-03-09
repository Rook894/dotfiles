
alias ..='cd ..'
alias rm='trash -v'
alias mkdir='mkdir -p'
alias v='nvim'
alias cpp='rsync --info=progress2'
alias sb='source ~/.bashrc'
alias c='clear'
alias ipconfig='ip addr show'
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {l}' --preview-window=right:60% | xargs -ro yay -S"

alias ll='ls -Fls'

alias db='distrobox'



s () {
  local server
  server=$(grep -E '^Host ' ~/.ssh/config | awk '{print $2}' | fzf)
  if [[ -n $server ]] then
    ssh $server
  fi
}
