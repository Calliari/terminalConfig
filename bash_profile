
export PS1="\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;160m\]\w\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

cat ~/.eyes.txt

# Alias custom configuration "copy some of the linux style alias"
alias ll='ls -lsaF'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'



# ============ For more information about the terminal colours and style see links bellow ===========================================
# http://www.marinamele.com/2014/05/customize-colors-of-your-terminal-in-mac-os-x.html
# https://geoff.greer.fm/lscolors/
# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
# http://www.marinamele.com/2014/05/customize-colors-of-your-terminal-in-mac-os-x.html
# http://bashrcgenerator.com/
