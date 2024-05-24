Intall the ohmyzsh;
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Add the plugins in the `.zshrc`
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
