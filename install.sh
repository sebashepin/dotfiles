#/bin/bash
apt-get install -y wmii vim rxvt-unicode nitrogen fortune-mod fortunes-off chromium-browser ncdu sshfs
wget http://download.damieng.com/fonts/original/EnvyCodeR-PR7.zip
unzip EnvyCodeR-PR7.zip
mkdir -p ../.fonts
cp Envy\ Code\ R\ PR7\/*.ttf ../.fonts/
fc-cache
fc-cache ../.fonts/
rm -rf Envy\ Code\ R\ PR7\
rm EnvyCodeR-PR7.zip
ln -sf $(pwd)/bash/.bash* ~/
ln -sf $(pwd)/.gitconfig ~/
ln -sf $(pwd)/.vimrc ~/
rm -rf ~/.vim
ln -sf $(pwd)/.vim ~/
rm -rf ~/.wmii
ln -sf $(pwd)/.wmii ~/
ln -sf $(pwd)/.Xdefaults ~/
mv /usr/bin/x-terminal-emulator /usr/bin/x-terminal-emulatorbck
ln -sf $(pwd)/x-terminal-emulator /usr/bin/x-terminal-emulator
chmod +x /usr/bin/x-terminal-emulator
ln -sf $(pwd)/.xmodmaprc ~/
echo "Don't forget to download Sublime Text 3!"
echo "And download some wallpapers!"
