Install Homebrew "MAC package management" 
```
# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cd /usr/local/bin
ln -s /opt/homebrew/bin/brew /usr/local/bin/

# Test the brew cmd
brew --version
```

Install Iterm2 "custom terminal cool with "
```
# open https://iterm2.com 
```

Install codeVS "Code editing"
```
https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal
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


Installaton of tools with package management:
```
# tfenv for terraform version installation
brew install tfenv

# kubectl kubernetes command line interface CLI
brew install kubectl
```



