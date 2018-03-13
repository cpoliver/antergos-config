# yay
mkdir ~/yay_temp
git clone https://aur.archlinux.org/yay.git ~/yay_temp
cd ~/yay_temp/yay
makepkg -si
rm -rf ~/yay_temp

# temp aliases for script (rework to have zsh and dotfiles installed instead)
alias ys="yay -S --noconfirm"
alias snig="sudo npm install -g"

## REBOOT REQUIRED

# vmware tools: preferred
#git clone https://github.com/rasa/vmware-tools-patches.git
#cd vmware-tools-patches
#./patched-open-vm-tools.sh

# vmware tools: alternative
#ys open-vm-tools gtkmm libxtst xf86-video-vmware
#sudo systemctl start vmware-vmblock-fuse.service

# native install: nvidia
#ys nvidia-installer
#sudo nvidia-installer

#sudo systemctl reboot

## /REBOOT REQUIRED

# temp aliases for script (rework to have zsh and dotfiles installed instead)
alias ys="yay -S --noconfirm"
alias snig="sudo npm install -g"

# cli
ys ack
ys cmake
ys curl
ys httpie
ys massren
ys ranger
ys tig
ys the_silver_searcher
ys tree
ys weechat
ys wget
ys xclip

# docker
ys docker
sudo systemctl enable docker
sudo usermod -a -G docker $USER

# programming languages
ys ghc
ys python
ys ruby

# node
ys node
ys npm
ys yarn

# node: n
snig n
sudo mkdir /usr/local/n
sudo chown $USER /usr/local/n
sudo n lts

# node: npm packages
snig commitizen
snig diff-so-fancy
snig flow-bin
snig gulp
snig nodemon
snig svgo

# apps: browsers
ys firefox
ys opera
ys vivaldi

# apps: comms
ys skypeforlinux-stable-bin
ys slack-desktop
ys wavebox

# apps: dev
ys emacs && git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
ys sublime-text-dev
ys vim
ys visual-studio-code-bin

# apps: media
ys spotify
ys vlc

# apps: terminal
ys guake
ys terminator

# apps: utils
ys filebot
ys font-manager
ys gpick
ys insync
ys ntfs-3g
ys peek-git
ys pinta
ys quicksynergy
ys xcape

# ui: tweaks
ys gnome-tweak-tool
ys gnome-shell-extension-clipboard-indicator-git
ys gnome-shell-extension-multi-monitors-add-on-git
ys gnome-shell-extension-openweather-git
ys gnome-shell-pomodoro

git clone https://github.com/gTile/gTile.git ~/.local/share/gnome-shell/extensions/gTile@vibou

# ui: themes
ys adapta-gtk-theme
ys equilux-theme
ys gtk-theme-arc-git
ys materia-theme

# ui: icons
ys paper-icon-theme
ys papirus-icon-theme-git
ys capitaine-cursors

# shell: zsh, oh-my-zsh
ys zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" # prompts for password

# shell: zsh theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# fonts
ys ttf-ms-fonts
ys ttf-roboto

# TODO: set vim to default editor
# TODO: install and configure xcape

# TODO: dotfiles
# - .zshrc
# - gitconfig
# - global gitignore

# TODO: script gnome preferences and theme settings
