sudo apt update
sudo apt install terminator -y
sudo apt install vim -y
sudo apt install mlocate -y
sudo apt install zsh -y
sudo apt install screen -y
sudo apt install tmux -y
sudo apt install git -y
sudo apt install ssh -y
sudo apt install aptitude -y
sudo apt install make cmake -y
sudo apt install htop -y
sudo apt install curl -y

cd ~/
mv dotfiles dotfiles_old
git clone https://github.com/karthickramachandran/dotfiles.git
git clone https://github.com/karthickramachandran/prompt-hjem.git
git clone https://github.com/karthickramachandran/z.git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf


# Install dotfile
cd dotfiles
./setup.sh
cd ~/
touch .zshrc.local 

# update prompts
cd ~/prompt-hjem
sudo make install

# add cuda path
#echo "export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}" >> ~/.zshrc.local
#echo "export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64\{LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> ~/.zshrc.local

# zsh configuration
cd ~/
touch .zshrc.local 
chsh -s $(which zsh)
echo "source ~/.zshrc.local" >> ~/.zshrc
echo "autoload promptinit && promptinit" >> ~/.zshrc.local
echo "prompt hjem 8bit vimode" >> ~/.zshrc.local
echo "source ~/z/z.sh" >> ~/.zshrc.local
~/.fzf/install
