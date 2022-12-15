# create sym links
mkdir ~/.config/nvim
ln -s $PWD/init.vim ~/.config/nvim/init.vim
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.p10k.zsh ~/.p10k.zsh
ln -s $PWD/custom-config.zsh ~/.oh-my-zsh/custom/custom-config.zsh

source ~/.zshrc
