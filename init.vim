if empty(glob('$XDG_DATA_HOME/nvimpager/site/autoload/plug.vim'))
  silent !curl -fLo $XDG_DATA_HOME/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  au VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$XDG_DATA_HOME/nvimpager/plug')
Plug 'deviantfero/wpgtk.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'morhetz/gruvbox'

"" Syntax Highlighting
" more language support
Plug 'sheerun/vim-polyglot'
Plug 'mboughaba/i3config.vim'
Plug 'VebbNix/lf-vim'
Plug 'tridactyl/vim-tridactyl'
Plug 'durcor/arm-syntax-vim'

" Highlight matching parentheses
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'vimwiki/vimwiki'
call plug#end()

colorscheme wpgtk
" lua require'nvim-treesitter.configs'.setup{ensure_installed="maintained",highlight={enable=true,additional_vim_regex_highlighting=true}}
"
" File-type specific configuration
au BufRead *.hex se ft=c
" Better systemd/config file syntax highlighting
au BufRead *.conf,*.cfg,*.service*,*.timer*,*.godot,config,*rc,*.info,*.cir,*.CIR,*.cmp se ft=dosini
au BufRead *.s,*.lst se ft=arm
" I need syntax highlighting for my natural joins
let g:sql_type_default = 'pgsql'
au BufRead *.css.* se ft=css
au BufRead *.log*,*.txt se ft=log
au BufRead CMakeLists.txt se ft=cmake
au BufRead README,LICENSE,TODO,NEWS,FAQ,LEGACY se ft=markdown
au BufRead *.*patch,*.diff se ft=gitsendemail
au BufRead .gitattributes se ft=gitignore
au BufRead *.rasi se ft=yaml
au BufRead *.fut se ft=ocaml
au BufRead *.python* se ft=python
au BufRead *.reg se ft=registry
au BufRead *.mesh se ft=glsl
au BufRead *.rbxm se ft=xml

" use ls syntax highlighting for vimv buffers
au BufRead /tmp/vimv.* se ft=ls | normal $T/
" jump straight to the file name in vimv if you are given the ability to edit
" the entire path (such as when called inside of lf)
" " Edit extension of current file in vimv
" autocmd BufRead,BufNewFile /tmp/vimv.ext* normal $T.C

" spell checking for LaTeX, markdown, plaintext, and git commits
au FileType tex,markdown,gitcommit,vimwiki,text setlocal spell spelllang=en_us,es
syntax on
se nocompatible
