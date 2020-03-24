# Description
This is my "Terminal" configuration file for colours and style with iterm2


# Instructions how to setup

1) Terminal configuration

To use this config file just clone this repo in the host  home directory,
make sure you are in the host user home directory, just use the command:

```
$ cd ~/
```

```
$ git clone https://github.com/Calliari/terminalConfig.git
```

Now there is a folder called 'terminalConfig' in the user home directory, move and rename the file the file with these steps:

CHANGE DIRECTORY INTO 'terminalConfig' REPO AFTER CLONED FROM GitHub
```
$ cd terminalConfig/zsh
```

Check the file `zshrc` with it's configuration, here we can customised alias, pluginsa and more...





=============== =============== ========== ============== ============== ========


2) Iterm2 Preferences (test the fonts)
`echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699" `

If the output is the same as bellow its because we need to instal the fonts.
 ±  ➦ ✘ ⚡ ⚙

To install the fonts:
```
cd /tmp/
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
rm -rf fonts

```

Click on Iterm2 --> Preferences --> Profiles --> `Font`; select [Inconsolata for Powerline]
Click on Iterm2 --> Preferences --> Profiles --> `Non-ASCII Font`; select [Inconsolata for Powerline]

Test the fonts again now. All symbols should be displaying now...
`echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699" `

Reload the the iterm2 with the new confi and symbos
`source ~/.zshrc`




NOW THE Iterm2 IS CUSTOMISED 'Caliari' style.

END