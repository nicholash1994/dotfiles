# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable vi line-editor
set -o vi

alias current_charge='cat /sys/class/power_supply/BAT0/capacity'
alias charge_status='cat /sys/class/power_supply/BAT0/status'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias vimr="vim -R"

# making vim the EDITOR
export EDITOR=vim

# create "alias" for herbstclient
hc() {
    herbstclient $@
}

# automatically rlwrap mit-scheme
mit-scheme() {
    rlwrap mit-scheme $@
}

# pager stuff
export PAGER=vimpager
alias p=$PAGER

# specify urxvt as the default terminal (herbstluftwm uses this environment
# variable)
export TERMINAL=urxvt

## attaching to default tmux session, or creating one if it doesn't exist

# don't automatically attach a tmux session if we're
# in a TTY, since I usually like to run startx from
# the command-line, and you can't do that in tmux
#if [ ! $( tty | grep "/dev/tty[1-9]" ) ] && \
#        [[ $- = *i* ]] && \
#        [ ! $( tmux attach-session -t 0 2>/dev/null) ]; then
#    tmux 2>/dev/null
#fi
