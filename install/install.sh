# yay
mkdir ~/yay_temp
git clone https://aur.archlinux.org/yay.git ~/yay_temp
cd ~/yay_temp/yay
makepkg -si
cd ~
rm -rf ~/yay_temp

# temp aliases for script (rework to have zsh and dotfiles installed instead)
alias ys="yay -S --noconfirm"
alias snig="sudo npm install -g"

# ntfs driver
ys ntfs-3g

# cli
ys cmake
ys curl
ys httpie
ys massren
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
ys nodejs
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
snig npx
snig svgo

# apps: browsers
ys firefox
ys opera
ys vivaldi

# apps: comms
ys skypeforlinux-stable-bin
ys slack-desktop
ys wavebox-bin

# apps: dev
ys code
ys emacs && git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
ys nvim

# apps: media
ys spotify
ys vlc

# apps: design/photo/video
ys figma-linux-bin
ys maim
ys peek
ys pinta
ys shutter

# apps: terminal
ys terminator

# apps: utils
ys arandr
ys filebot
ys font-manager
ys gpick
ys insync
ys ranger
ys xcape

# shell: zsh, oh-my-zsh
ys zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" # prompts for password

# shell: zsh theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# fonts
ys ttf-ms-fonts
ys ttf-roboto
# TODO: symlink or copy fonts from google drive

# i3 customisation
ys i3lock
ys i3status
ys i3-gaps
ys rofi

# create code directories
mkdir ~/code
mkdir ~/code/_cpoliver
mkdir ~/code/_casumo
mkdir ~/code/_ecoshare
mkdir ~/code/_sandbox
mkdir ~/code/_misc

# TODO: clone and symlink dotfiles
# - .zshrc
# - .xinitrc
# - .gitignore
# - gitconfig
