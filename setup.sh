#!/bin/sh



if [[ "$SHELL" != "zsh" ]]; then

    ZSHRC="$HOME/.zshrc"

    echo "ZSH=`pwd`/oh-my-zsh" > $ZSHRC
    cat oh-my-zsh/templates/setup-box-zshrc >> $ZSHRC

    chsh -s /bin/zsh
fi


