#/bin/bash
apt-get -y wmii vim rxvt-unicode nitrogen fortune-mod fortunes-off chromium-browser ncdu sshfs
wget http://download.damieng.com/fonts/original/EnvyCodeR-PR7.zip
unzip EnvyCodeR-PR7.zip
mkdir ~/.fonts
cp Envy\ Code\ R\ PR7\/*.ttf ~/.fonts/
fc-cache
fc-cache ~/.fonts/
rm -rf Envy\ Code\ R\ PR7\
rm EnvyCodeR-PR7.zip
ln -sf ~/dotfiles/bash/.bash* ~/
ln -sf ~/dotfiles/.gitconfig ~/
ln -sf ~/dotfiles/.vimrc ~/
rm -rf ~/.vim
ln -sf ~/dotfiles/.vim ~/
rm -rf ~/.wmii
ln -sf ~/dotfiles/.wmii ~/
ln -sf ~/dotfiles/.Xdefaults ~/
mv /usr/bin/x-terminal-emulator /usr/bin/x-terminal-emulatorbck
ln -sf x-terminal-emulator /usr/bin/x-terminal-emulator
chmod +x /usr/bin/x-terminal-emulator
ln -sf ~/dotfiles/.xmodmaprc ~/
echo "Don't forget to download Sublime Text 3!"
echo "And download some wallpapers!"