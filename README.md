# BDELPHIN's (NEW) desktop env. dotfiles repo : V2 / 2021
My personnal dotfiles (configuration files), currently used on my daily GNU/Linux machine.
You'll also find some scripts, but most of my scripts can be found here : https://github.com/bdelphin/scripts

## Dotfiles list :

Dotfiles provided on this repo are for :
- polybar (system bar)
- i3-gaps (window manager, a fork of i3wm)
- rofi (app launcher)
- picom (compositor)
- discocss (discord with custom CSS)
- firefox (userChrome CSS)
- GLava (desktop vu-meter)
- system config file (.Xresources, .bash_profile, .bashrc, .xinitrc, .vimrc)

Some of this dotfiles may need a lot of cleaning (unused commented stuff), and may contain errors.

## Preview :

Here's the result :
![screenshot1](screenshot1.png?raw=true "Screenshot1")
![screenshot2](screenshot2.png?raw=true "Screenshot2")

A YouTube video should arrive soon (some day).

## Install / how to use :

You can reproduce my setup on your own computer, by copying each files by hand in the right location.
You SHOULD make a backup of your own dotfiles before copying mine (seriously, don't blame me if something doesn't work as expected).

Just clone the repo and run the following commands (don't run them if you don't know what you're doing !):
```bash
git clone https://github.com/bdelphin/dotfiles_v2
cd dotfiles_v2
cp .Xresources ~/
cp .bashrc ~/
cp .bash_profile ~/
cp .xinitrc ~/
cp .vimrc ~/
cp -r .config/* ~/.config/
ffprofile=$(ls ${HOME}/.mozilla/firefox/ | grep "default-release" | awk "{print $9}");
mkdir -p ~/.mozilla/firefox/$ffprofile/chrome/resources
cp -r .mozilla/firefox/XXXXX.default-release/chrome/* ~/.mozilla/firefox/$ffprofile/chrome/
```

You should clone my script repo in your home folder aswell, or some keybindings won't work.
```bash
cd ~
git clone https://github.com/bdelphin/scripts
```

You'll have to edit at least polybar config, as multiple bars are launched on my differents monitors. Keep in mind that you'll probably have to edit more stuff in order to make everything work as expected.

Feel free to contact me if you need some help, I'll be glad to help.

## Licence 
Under GNU GPLv3 Licence, see LICENCE file.

