#!/bin/bash

playerctlstatus=$(playerctl status 2> /dev/null)

if [[ $playerctlstatus ==  "" ]]; then
    echo ""
elif [[ $playerctlstatus =~ "Playing" ]]; then
    echo "%{A1:playerctl pause:}⏸️%{A} $(playerctl metadata artist) - $(playerctl metadata title)"
else
    echo "%{A1:playerctl play:}▶️%{A}"
fi
