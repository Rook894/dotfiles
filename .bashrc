#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Source additional bash configs from .config/bash/
for config in ~/.config/bash/*.bash; do
    [[ -f "$config" ]] && source "$config"
done



parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Can add \n to make double line prompt.
PS1="\[\e[1;34m\]\u\[\e[0;32m\]@\h:\[\e[0;36m\]\w\[\e[0m\]\[\e[0;33m\]\$(parse_git_branch)\[\e[0m\]> "