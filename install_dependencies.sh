sudo apt update
sudo apt install terminator
sudo apt install vim
sudo apt install mlocate
sudo apt install zsh
sudo apt install screen
sudo apt install tmux
sudo apt install git
sudo apt install ssh

cd ~/
mv dotfiles dotfiles_old
git clone https://github.com/karthickramachandran/dotfiles.git
git clone https://github.com/karthickramachandran/prompt-hjem.git
git clone https://github.com/karthickramachandran/z.git

# Install dotfile
cd dotfiles
./setup.sh
cd ~/
touch .zshrc.local 

# update prompts
cd ~/prompt-hjem
sudo make install


# add cuda path
echo "export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}" >> .zshrc.local
echo "export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64\{LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> .zshrc.local
echo "source ~/.zshrc.local" >> .zshrc
