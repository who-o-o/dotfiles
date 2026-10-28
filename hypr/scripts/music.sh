#!/bin/bash

truncate() {
    local str="$1"
    if [[ ${#str} -gt 20 ]]; then
        echo "${str:0:17}..."
    else
        echo "$str"
    fi
}

case "$1" in
    title)  truncate "$(playerctl --player=firefox metadata title 2>/dev/null)" ;;
    artist) truncate "$(playerctl --player=firefox metadata artist 2>/dev/null)" ;;
esac