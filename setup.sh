#!/bin/bash

# install ~/.gitconfig
if [[ -f ./gitconfig/install ]]; then
    cd gitconfig
    ./install --force
    cd ..
fi

# install ~/.vimrc
cp vimrc ~/.vimrc

if [[ "$SHELL" != "/bin/zsh" ]]; then
    ZSHRC="$HOME/.zshrc"

    echo "ZSH=`pwd`/oh-my-zsh" > $ZSHRC
    cat oh-my-zsh/templates/setup-box-zshrc >> $ZSHRC
    cat extras >> $ZSHRC

    chsh -s /bin/zsh
fi

