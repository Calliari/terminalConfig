export PS1="\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;160m\]\w\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export CLICOLOR=1

export LSCOLORS=ExFxBxDxDxEgEdAbAdAcAb

# ============ For more information about the terminal colours and style see links bellow ===========================================
# http://www.marinamele.com/2014/05/customize-colors-of-your-terminal-in-mac-os-x.html
# https://geoff.greer.fm/lscolors/
# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
# http://www.marinamele.com/2014/05/customize-colors-of-your-terminal-in-mac-os-x.html
# http://bashrcgenerator.com/

# a black
# b red
# c green
# d brown
# e blue
# f magenta
# g cyan
# h light grey
# x default color
# The same letters in UPPERCASE indicate BOLD.

#1) directory
#2) symbolic link – special kind of file that contains a reference to another file or directory.
#3) socket – special kind of file used for inter-process communication.
#4) pipe – special file that connects the output of one process to the input of another.
#5) executable
#6) block special – a kind of device file.
#7) character special – a kind of device file.
#8) executable with setuid bit set (setuid is a short for set user ID upon execution).
#9) executable with setgid bit set (setgid is a short for set group ID upon execution).
#10) directory writable to others, with sticky bit – only the owner can rename or delete files.
#11) directory writable to others, without sticky bit – any user with write and execution permissions can rename or delete files.

#1 ex –> directory / blue / default
#2 fx –> symbolic link / magenta / default
#3 cx –> socket / green / default
#4 dx –> pipe / brown / default
#5 bx –> executable / red / default
#6 eg –> block special / blue / cyan
#7 ed –> character special / blue / brown
#8 ab –> executable with setuid / black / red
#9 ag –> executable without setuid / black / cyan
#10 ac –> directory with sticky / black / green
#11 ad –> directory without sticky / black / brown



# ============ Alias custom configuration "copied from linux style alias"
alias l='ls -CF'
alias ll='ls -lsaF'
alias la='ls -A'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
