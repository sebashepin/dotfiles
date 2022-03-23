#/bin/bash
sudo apt-get install -y vim fortune-mod fortunes-off ncdu sshfs fontconfig exa fonts-jetbrains-mono
git clone https://github.com/gabrielelana/awesome-terminal-fonts ~/.awesome-terminal-fonts
git clone https://github.com/pindexis/qfc ~/.qfc
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

cd ~/.awesome-terminal-fonts
git checkout patching-strategy
mkdir -p ~/.fonts
cp patched/*.ttf ~/.fonts
sudo fc-cache -fv ~/.fonts

mv .bashrc .bashrc_backup
ln -s bash/.bashrc ~/.bashrc
ln -s .Xresources ~/.Xresources