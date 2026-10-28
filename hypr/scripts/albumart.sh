#!/bin/bash

dir="$HOME/.config/mozilla/firefox/firefox-mpris"

img=$(ls "$dir" 2>/dev/null | head -n 1)

if [[ -z "$img" ]]; then
    exit 1
fi
magick "$dir/$img" -resize 720x720^ -gravity center -extent 720x720 "$dir/$img"

echo "$dir/$img"