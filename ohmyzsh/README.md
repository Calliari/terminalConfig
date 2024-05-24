### Install the ohmyzsh;
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Add the plugins in the `.zshrc` and other configurations
```
cat << 'EOF' | tee -a ~/.zshrc
#### This is my own config changes "Author Osvaldo"
if [ -f ~/.zprofile ]; then
    . ~/.zprofile
fi

#### setup autocomplete in zsh into the current shell
autoload -Uz compinit && compinit && source <(kubectl completion zsh)

#### mktouch is a little commands to created dir with file if dir doesn't exist
mktouch() {
  # usage mktouch /tmp/test/path/text.txt
  mkdir -p $(dirname $1) && touch $1;
}

#### plugins enabled by the `ohmyzsh`
plugins=(
  git
  bundler
  dotenv
  macos
  rake
  rbenv
  ruby
)

#### Personal aliases
alias ll='ls -l'
alias k='kubectl'
alias tf='terraform'

EOF
```

### Creating the `.zprofile`file with customised looking for the terminal
```
cp ~/.zprofile ~/.zprofile.backup; cat << 'EOF' | tee ~/.zprofile
# vim: ft=sh

# No brainer, default to Vim
export EDITOR="vim"

# Color LS output to differentiate between directories and files
export LS_OPTIONS="--color=auto"
export CLICOLOR="Yes"
export LSCOLORS="GxFxCxDxBxegedabagaced"

# Customize Path
export PATH=$HOME/bin:$PATH

# TEST prompt 
# print -P '%B%F{208}%b%f 🐺 %F{#C0C0C0}%~%f $(parse_git_branch)%(!.#.%B%F{#FFFFFF}$%b%f) '

setopt PROMPT_SUBST
bindkey -e # reverse-i-search (crt + r)
PS1='%B%F{208}%b%f 🐺 %F{014}%~%f $(parse_git_branch)%(!.#.%B%F{015}$%b%f) '
EOF
```
### Download my custumised `my-agnoster.zsh-theme` 
```
sh -c "$(curl -fsL https://raw.githubusercontent.com/Calliari/terminalConfig/master/ohmyzsh/my-agnoster.zsh-theme -O /Users/$USER/.oh-my-zsh/themes/)"
```

### Change the `ZSH_THEME` file to the above one;
```
sed -i -e s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"my-agnoster\"/g ~/.zshrc
```
### Reload the terminal 
```
source ~/.zshrc
```

