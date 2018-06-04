#!/usr/bin/env bash

o="octicons"
css="$o.css"
ttf="$o.ttf"

icon-font-to-png --download $o

for i in black blue red green yellow magenta orange white; do
  icon-font-to-png --css $css --ttf $ttf --size 64 --color $i ALL

  mv exported $i
done
