#!/bin/sh

# install ~/.gitconfig
if [[ -f ./gitconfig/install ]]; then
    ./gitconfig/install -f
fi

# install ~/.vimrc
cp vimrc ~/.vimrc

if [[ "$SHELL" != "zsh" ]]; then
    ZSHRC="$HOME/.zshrc"

    echo "ZSH=`pwd`/oh-my-zsh" > $ZSHRC
    cat oh-my-zsh/templates/setup-box-zshrc >> $ZSHRC

    chsh -s /bin/zsh
fi

