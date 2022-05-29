https://support.apple.com/en-gb/HT211861
Install Rosetta 2 enables a Mac with Apple silicon to use apps built for a Mac with an Intel processor
```
# OPtion "agree to license" to install without pront 
/usr/sbin/softwareupdate --install-rosetta  --agree-to-license
```

Show hidden files on MAC - open the terminal and:
```
open ~/
press (Command + Shift + Period)
# Done, Show hidden files is now ENABLED.  
```

Install Homebrew "MAC package management" 
```
# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Homebrew for Apple Silicon M1 BIN
/opt/homebrew/bin/brew

# Setting up the brew for Apple Silicon M1
ECHO 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc

# Load the changes
source ~/.zshrc

# Test the brew cmd
brew --version
brew --help
```

Install Iterm2 "custom terminal cool with "
```
# open https://iterm2.com 
```

Install codeVS "Code editing"
```
https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal

### Open code from the terminal
# Launch VS Code, Open the Command Palette (Cmd+Shift+P) and type 'shell command' to find the Shell Command: 
# Install 'code' command in PATH command.
# Now test the cmd from the terminal:
code test.txt
```

Install kubectl (Intel)
```
# Apple Intel chip (AMD64)
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl"
```

Install kubectl (Apple silicon M1)
```
# Apple silicon chip (ARM64)
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"
```

Install SqlPro
```
https://sequelpro.com
```

Install Chrome
```
https://www.google.co.uk/chrome/thank-you.html?installdataindex=empty&statcb=0&defaultbrowser=0&brand=YTUH
```

Install Postman
```
https://www.postman.com/downloads/
```

Installaton of tools with package management:
```
# tfenv for terraform version installation
brew install tfenv
tfenv install 1.2.1
tfenv use 1.2.1
terraform --version

Installaton vagrant for Virtual machines
```
brew install --cask vagrant
vagrant -v
```

# kubectl kubernetes command line interface CLI
brew install kubectl
```



