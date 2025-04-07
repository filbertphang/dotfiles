# create sym links
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.p10k.zsh ~/.p10k.zsh
ln -s $PWD/nordic-rose ~/.vscode-server/extensions/nordic-rose

# setup symlinks for nvim config
mkdir ~/.config/nvim/lua
ln -s $PWD/nvim/.vimrc ~/.vimrc
ln -s $PWD/nvim/init.vim ~/.config/nvim/init.vim
ln -s $PWD/nvim/novscode-config.lua ~/.config/nvim/lua/novscode-config.lua

source ~/.zshrc