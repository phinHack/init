#!/bin/bash

# prerequisites
sudo apt update
sudo apt install wget, git, curl, tmux, zsh, vim -y

# 1. install tmux
# vi -c "PlugInstall" -c "redraw" -c "qa"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/
tmux source ~/.tmux.conf
# tmux -> Ctrl + b + I -> Install tmux plugins
# powered by h1ghl1kh7

#____________________________________________________________________________________________________

# 2. install zsh && oh-my-zsh (install every plugin under .zsh_phinguin)
# install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.zsh_phinguin/powerlevel10k
echo "source $HOME/.zsh_phinguin/powerlevel10k" >> $HOME/.zshrc
cp .p10k.zsh ~/

# install zsh pure : make zsh pretty
git clone --depth=1 https://github.com/sindresorhus/pure.git $HOME/.zsh_phinguin/pure
echo "fpath+=("$HOME/.zsh_phinguin/pure")\nautoload -U promptinit; promptinit\nprompt pure" >> $HOME/.zshrc

# install zsh syntax highlight
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh_phinguin/zsh-syntax-highlighting
echo "source $HOME/.zsh_phinguin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# install zsh auto complete
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh_phinguin/zsh-autosuggestions
echo "source $HOME/.zsh_phinguin/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $HOME/.zshrc
echo "ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#fcacb9'" >> $HOME/.zshrc

#____________________________________________________________________________________________________

# 3. install vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p $HOME/.nvim/
cp .vimrc $HOME/.nvim/init.vim
cp .vimrc $HOME/.vimrc

sudo apt install vim -y
