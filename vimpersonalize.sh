#!/bin/bash

set -e
#set -x
#trap read debug

# dirs
CWD=$(pwd -P)
BUILDDIR="$CWD"/build
XRESDIR="${HOME}/.config/xres/"
VIMCOL="${HOME}/.vim/colors/"
if [ -d "$BUILDDIR" ]; then
  rm -r "$BUILDDIR"
fi
mkdir -p "$BUILDDIR"

. "$CWD/colours.txt"

usage() {
  cat << EOF
Usage: ./vimpersonalize.sh [options]

options:    -a|--all (generate all files)
            -i|--install (generate files and copy them to the respective dirs 
                          - make sure to backup your old files)
            -c|--concat (compile partial Xres and .vim files to single files)
EOF
}

# Xresources
Xresgen() {
  cat>"${BUILDDIR}/theme"<<EOF
!"$THEME"

#define col00 $COL00
#define col01 $COL01
#define col02 $COL02
#define col03 $COL03
#define col04 $COL04
#define col05 $COL05
#define col06 $COL06
#define col07 $COL07

#define col08 $COL08
#define col09 $COL09
#define col0A $COL0A
#define col0B $COL0B
#define col0C $COL0C
#define col0D $COL0D
#define col0E $COL0E
#define col0F $COL0F
EOF
}

# Vim colorscheme
Vimrcgen() {

  cat>"${BUILDDIR}/theme.vim"<<EOF
let gui00="${COL00}"
let gui01="${COL01}"
let gui02="${COL02}"
let gui03="${COL03}"
let gui04="${COL04}"
let gui05="${COL05}"
let gui06="${COL06}"
let gui07="${COL07}"

let gui08="${COL08}"
let gui09="${COL09}"
let gui0A="${COL0A}"
let gui0B="${COL0B}"
let gui0C="${COL0C}"
let gui0D="${COL0D}"
let gui0E="${COL0E}"
let gui0F="${COL0F}"
EOF
}

# Build
Build() {
  Xresgen
  Vimrcgen
}

# Single file Xresources
Xresconcat() {
  Build
  cp "$CWD/Xresources" "${BUILDDIR}/Xresources_"
  sed -i "1d" "${BUILDDIR}/Xresources_"
  cat "${BUILDDIR}/theme" "${BUILDDIR}/Xresources_" > "${BUILDDIR}/Xresources-${THEME}"
  rm "${BUILDDIR}/Xresources_"
}

# Single vim colour file
Vimconcat() {
  cp "$CWD/basetpl.vim" "${BUILDDIR}/tmp0.vim"
  sed "8Q" "${BUILDDIR}/tmp0.vim" > "${BUILDDIR}/${THEME}.vim"
  cat >>"${BUILDDIR}/${THEME}.vim"<<EOF
let g:colors_name = "${THEME}"

EOF
  cat "${BUILDDIR}/theme.vim" >> "${BUILDDIR}/${THEME}.vim"
  sed -i "1,9d" "${BUILDDIR}/tmp0.vim"
  cat "${BUILDDIR}/tmp0.vim" >> "${BUILDDIR}/${THEME}.vim"
  rm "${BUILDDIR}/tmp0.vim"
}

# install to ~/
Installtheme() {
  mkdir -p "$XRESDIR"
  mkdir -p "$VIMCOL"
  Build
  cp "${CWD}/Xresources" "${HOME}/.Xresources"
  mkdir -p "$XRESDIR"
  cp "${BUILDDIR}/theme" "$XRESDIR/theme"
  mkdir -p "$VIMCOL"
  cp "${CWD}/basetpl.vim" "${BUILDDIR}/theme.vim" "$VIMCOL/"
}

# do
case "$1" in
  -a|-all)
    Build
    ;;
  -i|-install)
    Installtheme
    ;;
  -c|--concat)
    Xresconcat
    Vimconcat
    ;;
  *)
    usage
    ;;
esac

