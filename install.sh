#/bin/bash
apt-get install -y wmii vim rxvt-unicode nitrogen fortune-mod fortunes-off chromium-browser ncdu sshfs
wget http://download.damieng.com/fonts/original/EnvyCodeR-PR7.zip
unzip -q EnvyCodeR-PR7.zip
mkdir -p ../.fonts
cp Envy\ Code\ R\ PR7\/*.ttf $(pwd)/../.fonts/
fc-cache
fc-cache ../.fonts/
rm -rf Envy\ Code\ R\ PR7\
rm EnvyCodeR-PR7.zip
ln -sf $(pwd)/bash/.bash* $(pwd)/../
ln -sf $(pwd)/.gitconfig $(pwd)/../
ln -sf $(pwd)/.vimrc $(pwd)/../
rm -rf $(pwd)/../.vim
ln -sf $(pwd)/.vim $(pwd)/../
rm -rf $(pwd)/../.wmii
ln -sf $(pwd)/.wmii $(pwd)/../
ln -sf $(pwd)/.Xdefaults $(pwd)/../
mv /usr/bin/x-terminal-emulator /usr/bin/x-terminal-emulatorbck
ln -sf $(pwd)/x-terminal-emulator /usr/bin/x-terminal-emulator
chmod +x /usr/bin/x-terminal-emulator
ln -sf $(pwd)/.xmodmaprc $(pwd)/../
echo "Don't forget to download Sublime Text 3!"
echo "And download some wallpapers!"
