#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='\e[\[0;31m\]\W\e0m\]] >> '
PS1='[\[\e[0;31m\]\W\[\e[0;37m\]] >> '
PS2='> '
PS3='> '
PS4='+ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
alias ls='ls --color=auto'
alias scrot5='scrot -d 5 -c ~/Pictures/screenshots/%b%d::%H%M%S.png'
alias scrotnow='scrot ~/Pictures/screenshots/%b%d::%H%M%S.png'
alias upload='imgurbash'
alias lighthousesh='lighthouse | sh'


