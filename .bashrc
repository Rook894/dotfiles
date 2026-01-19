#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Source additional bash configs from .config/bash/
for config in ~/.config/bash/*.bash; do
    [[ -f "$config" ]] && source "$config"
done

# GNOME Keyring SSH Agent (gcr-ssh-agent)
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"

# Auto-add all SSH keys (GNOME Keyring will prompt for passphrases, then remember them)
if [ -S "$SSH_AUTH_SOCK" ]; then
    ssh-add -A 2>/dev/null
fi


parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Different prompt character in containers
if [ -n "$CONTAINER_ID" ]; then
    PROMPT_CHAR="»"
else
    PROMPT_CHAR=">"
fi

# Can add \n to make double line prompt.
PS1="\[\e[0;32m\]\u@\h:\[\e[0;36m\]\w\[\e[0m\]\[\e[0;33m\]\$(parse_git_branch)\[\e[0m\]${PROMPT_CHAR} "