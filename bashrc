#
# ~/.bashrc
#

export PATH="${HOME}/.local/bin:${PATH}"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -alrt --color=auto'
alias trash='gvfs-trash'

PS1='[\u@\h \W]\$ '

cawi()
{
        declare fn="${1}"
        if [ -z "${fn}" ]; then
                echo "cawi: File name not defined. " >&2
                return 1
        fi
        declare fp=$( which "${fn}" )
        if [ -z "${fp}" ]; then
                echo "cawi: File path not found. " >&2
                return 1
        fi
        cat "${fp}"

}

