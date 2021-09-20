#/bin/bash
sudo apt-get install -y vim fortune-mod fortunes-off ncdu sshfs fontconfig exa
git clone https://github.com/gabrielelana/awesome-terminal-fonts ~/.awesome-terminal-fonts
git clone https://github.com/pindexis/qfc ~/.qfc
git clone https://github.com/arialdomartini/oh-my-git.git ~/.oh-my-git

cd ~/.awesome-terminal-fonts
git checkout patching-strategy
mkdir -p ~/.fonts
cp patched/*.ttf ~/.fonts
sudo fc-cache -fv ~/.fonts

cp bash/.bashrc ~/.bashrc