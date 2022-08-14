#!/bin/bash

cp vimrc ~/.vimrc && \
    cp color.tmux ~/.byobu/color.tmux && \
    cp keybindings.tmux ~/.byobu/keybindings.tmux && \
    cp tmux.conf ~/.byobu/.tmux.conf && \
    tmux source-file ~/.byobu/.tmux.conf && \
	echo "zsh" >> ~/.bashrc && \
	source ~/.bashrc && \
    wget -O ohmyzsh.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh && \
    sh ~/ohmyzsh.sh && \
    byobu kill-server && \
	byobu
