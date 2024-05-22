# Description
This is my "Terminal" configuration file for colours and style with iterm2

# Instructions how to setup

1) Terminal configuration

To use this config file just clone this repo in the host  home directory,
make sure you are in the host user home directory, just use the command:

```
# https://github.com/ohmyzsh/ohmyzsh
cd ~/tmp/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh ~/tmp/install.sh
```

Check the file `.zshrc` with it's configuration, here we can customised alias, plugins and and more...


# resource
https://github.com/ohmyzsh/ohmyzsh


=============== =============== ========== ============== ============== ========

2) Test the fonts 
`echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699" `

In case fonts are missing the output is the same as bellow its because we need to instal the fonts.
 ±  ➦ ✘ ⚡ ⚙

To install the fonts:
```
cd /tmp/
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
rm -rf fonts
```
- Click on Terminal or  Iterm2 --> Preferences --> Profiles --> `Font`; select [Inconsolata for Powerline]
- Click on Iterm2 --> Preferences --> Profiles --> `Non-ASCII Font`; select [Inconsolata for Powerline]

Run the commands to reload the terminal with the fonts installed;
```
source ~/.zshrc
```

2.2) See the picture bellow and select as it is displayed

![Terminal_png](https://github.com/Calliari/terminalConfig/blob/master/Iterm2/img/Screenshot_iterm_2config_font.png)

Test the fonts again now. All symbols should be displaying now...
`echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699" `

Customised the prompt by replace the file:
```
cd /tmp/ && git clone https://github.com/Calliari/terminalConfig.git
cp /tmp/terminalConfig/zsh/my-agnoster.zsh-theme ~/.oh-my-zsh/themes/my-agnoster.zsh-theme

# set the theme now
sed s/'ZSH_THEME="robbyrussell"'/'# ZSH_THEME="robbyrussell"'/ ~/.zshrc

vim ~/.zshrc # add an line to use theme now
ZSH_THEME="my-agnoster"
```

Reload the the iterm2 with the new confi and symbos
`source ~/.zshrc`


2.3) Set the size of the terminal windown: Click on Iterm2 --> Preferences --> Windown [`Columns:260` - `Rows 65`]

NOW THE Iterm2 IS CUSTOMISED with "my-agnoster" style.

3) For custom commands use the ".zprofile" - for example;
```
echo "alias tf='terraform'" >> ~/.zprofile
```

END
