### Install the ohmyzsh;
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Get the "zsh-auto-complete"
```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```


### Add the plugins in the `.zshrc` and other configurations
```
cat << 'EOF' | tee -a ~/.zshrc
#### This is my own config changes "Author Osvaldo"
if [ -f ~/.zprofile ]; then
    . ~/.zprofile
fi
EOF
```

### Creating the `.zprofile`file with customised looking for the terminal
```
cp ~/.zprofile ~/.zprofile.backup; cat << 'EOF' | tee ~/.zprofile
# vim: ft=sh

# No brainer, default to Vim
export EDITOR="vim"

#### if kubectl is in used - setup autocomplete in zsh into the current shell
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
  zsh-autosuggestions
)

#### Personal aliases
alias ll='ls -l'
alias k='kubectl'
alias tf='terraform'
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

