"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

" activate pathogen bundles
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

syntax on

set backspace=indent,eol,start	  " allow backspacing over everything in insert mode

let coffee_compile_on_save = 0	  " don't compile coffeescripts

set showcmd			  " show incomplete cmds down the bottom
set showmode			  " show current mode down the bottom
set nu				  " show line numbers

" display tabs and trailing spaces
set list
set listchars=tab:>-,trail:-,nbsp:+
set listchars+=extends:>,precedes:<

set incsearch			  " find the next match as we type the search
set linebreak			  " wrap lines at convenient points

if v:version >= 703
  " undo settings
  set undodir=~/.vim/undofiles
  set undofile

  set colorcolumn=+1		  " mark the ideal max text width
endif

" indent settings
set sts=2
set sw=2
set expandtab
set autoindent

" folding
set foldmethod=marker

" tab completion
set wildmenu
set wildmode=longest:full,full
set wildignore+=*~
set winaltkeys=no

set formatoptions-=o		  " dont continue comments when pushing o/O"

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

set t_Co=256			  " tell the term has 256 colors
set hidden			  " hide buffers when not displayed

" statusline setup
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%{exists('*rails#statusline')?rails#statusline():''}%{exists('*fugitive#statusline')?fugitive#statusline():''}%#ErrorMsg#%{exists('*SyntasticStatuslineFlag')?SyntasticStatuslineFlag():''}%*%=%-16(\ %l,%c-%v\ %)%P
set laststatus=2		  " always show status line

" syntastic settings
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

" snipmate settings
let g:snips_author = "Martin Grenfell"


" taglist settings
let Tlist_Compact_Format = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_WinWidth = 35
let tlist_php_settings = 'php;c:class;f:Functions'
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Display_Tag_Scope = 1
let Tlist_Process_File_Always = 1
let Tlist_Show_One_File = 1

" dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
  let g:CSApprox_loaded = 1
endif
