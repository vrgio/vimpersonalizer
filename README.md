# Vim colorscheme generator from Xresources colours

Generates `.Xresources` and `theme.vim` from a list of colours.

## Description

This script generates a Vim colorscheme from list of colours (ex., from `.Xresources`), eliminating the need to decide which colour should be used for strings or constants, etc. It can generate partial files (because that's how I prefer to set it up myself) or complete `.Xresources` and `theme.vim` files.

The example `colours.txt` file in the repository uses the colours from [Nord Xresources](https://github.com/nordtheme/xresources/blob/develop/src/nord).

With this approach, themes can be saved as a single TXT file.

## Usage

1. Expects a file named `colours.txt` in the current working directory with the following format:

```
THEME="mytheme"
COL00="#000000"
COL01="#CD0000"
COL02="#00CD00"
COL03="#CDCD00"
COL04="#0000EE"
COL05="#CD00CD"
COL06="#00CDCD"
COL07="#E5E5E5"
COL08="#7F7F7F"
COL09="#FF0000"
COL0A="#00FF00"
COL0B="#FFFF00"
COL0C="#5C5CFF"
COL0D="#FF00FF"
COL0E="#00FFFF"
COL0F="#FFFFFF"
```

Colours can be copied from an existing `.Xresources` file or generated by any Xresources theme generator. Unlike [Base16](https://github.com/chriskempson/base16), the colour order has to follow the **default xterm colour order**, as shown in the example above.

2. Run the script using the available options:

- `-a|--all`: Generate all files in the `build` directory
- `-i|--install`: Generate files and copy them to the respective directories (make sure to backup your old files).
- `-c|--concat`: Compile partial Xresources and .vim files to single files.

The generated files `theme` and `theme.vim` can be used with the provided templates (`Xresources` and `basetpl.vim`) in a directory structure as following:

```
/home/user
├── .Xresources
└── .config
    └── xres
        └── theme
└── .vim
    └── colors
        └── basetpl.vim
        └── theme.vim
```

If using the `-i` or `--install` option, the files are copied to the home directory (make a backup first!).

Alternatively, the `-c` or `--concat` option generates `theme.vim` and `Xresources-$theme` files in the build directory that can be used as is.

## Notes

+ The `Xresources` template includes some basic fonts definitions. Replace this part either from the given template or the resulting files.
+ With `-a` or `-i` options, the Vim colorscheme is called `basetpl`. With the `-c` option, it is called `mytheme` (`mytheme` being the user-defined string in the first line of `colours.txt`)
+ Preview the colourscheme with `sh previewr.sh`

## Credits

Vim colorscheme structure largely based on [vim_colorscheme_template](https://github.com/ggalindezb/vim_colorscheme_template) and [base16-vim](https://github.com/chriskempson/base16-vim).
