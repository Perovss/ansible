##
## Раскрашенное приглашение командной строки
##

# Для root выделяем красным #
if [ "`id -u`" -eq 0 ]; then
        PS1='\[\e[1;32m\][\t]\[\e[1;34m\]${debian_chroot:+($debian_chroot)}\u@\h:\[\e[1;33m\]\w\[\e[1;31m\]\$\[\e[0m\] '
        PS2='\[\e[1;31m\]>\[\e[0m\] '
# Для всех остальных - серым $
else
        PS1='\[\e[1;32m\][\t]\[\e[1;34m\]${debian_chroot:+($debian_chroot)}\u@\h:\[\e[1;33m\]\w\[\e[1;30m\]\$\[\e[0m\] '
        PS2='\[\e[1;30m\]>\[\e[0m\] '
fi

##
## Раскрашенный вывод некоторых команд
##

if [ -x /usr/bin/dircolors ]; then
        alias ls='ls --color=auto'
        alias dir='dir --color=auto'
        alias vdir='vdir --color=auto'

        alias grep='grep --color=auto'
        alias fgrep='fgrep --color=auto'
        alias egrep='egrep --color=auto'
fi
