set t_Co=256

" Sets line number
set number relativenumber
" Sets mouse scrolling through the vim file
set mouse=a
set mousemodel=extend
" Search for letters, words, etc. | Starts searching with /
set hlsearch
set incsearch
" Copy selected text to system clipboard ( Go in Visual Mode and copy text)
set clipboard=unnamedplus
vnoremap <C-c> "+y
" Paste selected text from external program (outside of nvim)
map <C-p> "+p
" Allows to do calculations and add them into a string as a final result
map <C-r> =
" Replaces all matches of a word
map <F8> :%s/<C-r><C-w>//gc<Left><Left><Left>
" Sets tab size to 4 spaces | Last two sets convert the tabs to spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Other Keybinds
nnoremap <C-n> :NERDTree<CR>
" TagbarToggle (Open/Close)
nmap <F7> :TagbarToggle<CR>
" Vim-plug
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

colorscheme dracula

" Airline settings
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

