# Description

This is my "Terminal" configuration file for colours and style without iterm2

## Instructions how to setup

1) Terminal configuration

To use this config file just clone this repo in the host  home directory,
make sure you are in the host user home directory, just use the command:

Install additional tools with - Homebrew: <https://brew.sh/>

```
# install tmux: https://formulae.brew.sh/formula/tmux#default
brew install tmux
```

2)Terminal Preferences "profile"

Configuring the seze of the screen. (Click terminal top left corner and select preferences > settings > window) OR just press 'cmd' + ',' a new tab will open.
 - 2.1 *Text Tab*   - Select the style "Pro" press default to select the style
 - 2.2 *Text Tab*   - Font -> "Monaco 12" or try to select one of the "powerlines" fonts available
 - 2.3 *Window tab* - click "Path" tick box, window size -> Columns:260 rows:60
 - 2.4 *Shell tab*  - when the shell exits: "Close if the shell exited cleanly"
 - 2.5

See the picture bellow and select as it is displayed:
![Terminal_png](https://github.com/Calliari/terminalConfig/blob/master/zsh/img/Terminal.png)

Check the file `.zshrc` with it's configuration, here we can customised alias, plugins and and more...

First we are just add the configuration setting on the `` to be load by another files `~/.zprofile` and or `~/.zprofile_terminal`

```
## Setting up the calling for ".profile"
cp ~/.zshrc ~/.zshrc.bkp
cat << 'EOF' | tee ~/.zshrc
###   ###
   ###
# This is my own config changes "Author Osvaldo"
if [ -f ~/.zprofile ]; then
    . ~/.zprofile
fi

###   ###
   ###
# This is my own config changes "Author Osvaldo" on the terminal
if [ -f ~/.zprofile_terminal ]; then
    . ~/.zprofile_terminal
fi
EOF
```

#### On the `~/.zprofile` add the configuration how it would look like `prompt`

```
cat << 'EOF' | tee ~/.zprofile
# vim: ft=sh

# No brainer, default to Vim
export EDITOR="vim"

# Color LS output to differentiate between directories and files
export LS_OPTIONS="--color=auto"
export CLICOLOR="Yes"
export LSCOLORS="GxFxCxDxBxegedabagaced"

# Customize Path
export PATH=$HOME/bin:$PATH

# get current branch in git repo
function parse_git_branch() {
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [[ ! "${BRANCH}" == "" &&  "${BRANCH}" = "master" ]]
  then
    STAT=`parse_git_dirty`
    BRANCH_COLOR="{009}"
    echo "[%B%F${BRANCH_COLOR}${BRANCH}${STAT}%b%f]"
  elif [[ ! "${BRANCH}" == "" ]]
  then
    STAT=`parse_git_dirty`
    BRANCH_COLOR="{010}"
    echo "[%B%F${BRANCH_COLOR}${BRANCH}${STAT}%b%f]"
  else
    echo ""
  fi
}

# get current GIT_STATUS of git repo
function parse_git_dirty() {
  GIT_STATUS=`git status 2>&1 | tee`
  dirty=`echo -n "${GIT_STATUS}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
  untracked=`echo -n "${GIT_STATUS}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
  ahead=`echo -n "${GIT_STATUS}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
  newfile=`echo -n "${GIT_STATUS}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
  renamed=`echo -n "${GIT_STATUS}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
  deleted=`echo -n "${GIT_STATUS}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
  bits=''
  if [[ "${renamed}" == "0" ]]; then
    bits=">${bits}"
  fi
  if [[ "${ahead}" == "0" ]]; then
    bits="*${bits}"
  fi
  if [[ "${newfile}" == "0" ]]; then
    bits="+${bits}"
  fi
  if [[ "${untracked}" == "0" ]]; then
    bits="?${bits}"
  fi
  if [[ "${deleted}" == "0" ]]; then
    bits="x${bits}"
  fi
  if [[ "${dirty}" == "0" ]]; then
    bits="!${bits}"
  fi
  if [[ ! "${bits}" == "" ]]; then
    echo " ${bits}"
  else
    echo ""
  fi
}

# TEST prompt 
# print -P '%B%F{208}%b%f 🐺 %F{#C0C0C0}%~%f $(parse_git_branch)%(!.#.%B%F{#FFFFFF}$%b%f) '

setopt PROMPT_SUBST
bindkey -e # reverse-i-search (crt + r)
PS1='%B%F{208}%b%f 🐺 %F{014}%~%f $(parse_git_branch)%(!.#.%B%F{015}$%b%f) '
EOF
```

####  On the `~/.zprofile_terminal` add the configuration for tools, alias and etc

```
cat << 'EOF' | tee ~/.zprofile_terminal
alias ll='ls -l'
alias k='kubectl'
alias tf='terraform'
alias vg='vagrant'
alias ebsa="cd /Users/$USER/devOps/EBSA/git"

mktouch() {
  # usage mktouch /tmp/test/path/text.txt
  mkdir -p $(dirname $1) && touch $1;
}

# this is where homebrew install the binaries 
PATH=/opt/homebrew/bin:$PATH

# setup autocomplete in zsh into the current shell
autoload -Uz compinit && compinit && source <(kubectl completion zsh)


# pyenv env
PATH="$HOME/.pyenv/shims:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
EOF
```
