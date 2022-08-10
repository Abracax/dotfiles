#!/bin/bash

cp vimrc ~/.vimrc && \
    cp color.tmux ~/.byobu/color.tmux && \
    cp keybindings.tmux ~/.byobu/keybindings.tmux && \
    cp tmux.conf ~/.byobu/.tmux.conf && \
    tmux source-file ~/.byobu/.tmux.conf && \
    byobu kill-server && \
    byobu
