#!/bin/bash

source "./colours.txt"

Current() {
  for((i=40;i<48;i++)); do
    echo -en "\033[${i}m\033[30m   "
  done
  echo -e "\033[0m"

  for((i=100;i<108;i++)); do
    echo -en "\033[${i}m\033[30m   "
  done

  echo -e "\033[0m"
}

Selcolour() {
  for mycolour in COL0{0..7}; do
      c=${!mycolour}

      r=$(echo "$c" | cut -c 2-3)
      g=$(echo "$c" | cut -c 4-5)
      b=$(echo "$c" | cut -c 6-7)

      r=$(printf "%d" 0x$r)
      g=$(printf "%d" 0x$g)
      b=$(printf "%d" 0x$b)

      echo -en "\033[48;2;${r};${g};${b}m\033[30m   "
  done
  echo -e "\033[0m"

  for mycolour in COL0{8,9} COL0{A..F}; do
      c=${!mycolour}

      r=$(echo "$c" | cut -c 2-3)
      g=$(echo "$c" | cut -c 4-5)
      b=$(echo "$c" | cut -c 6-7)

      r=$(printf "%d" 0x$r)
      g=$(printf "%d" 0x$g)
      b=$(printf "%d" 0x$b)

      echo -en "\033[48;2;${r};${g};${b}m\033[30m   "
  done
  echo -e "\033[0m"
}

echo "Current colourscheme:"
Current
echo ""
echo "${THEME}:"
Selcolour
