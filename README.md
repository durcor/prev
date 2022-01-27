# prev
A fast file previewer for the terminal.

Works with both plain-text and binary files, such as images, PDFs, and executables.

Designed for use with terminal file managers like `lf` and `ranger`, but usable from the command line as well.

Included is also a nvim config made for robust and beautiful syntax-highlighting for every file type you will ever encounter for use with [nvimpager](https://github.com/lucc/nvimpager).

## Usage
From the command line:
```sh
prev $FILE_TO_PREVIEW
```

In your lf config:
```lf
set previewer prev
```

## Installation
```sh
sudo make install
```

## Dependencies:
- nvimpager (for better highlighting integration with nvim configs)
- chafa
- ffmpegthumbnailer
- mediainfo
- djvulibre
- pandoc
- p7zip
- libcdio
- unzip
- jq
- libreoffice
