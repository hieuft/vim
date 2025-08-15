call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

call plug#end()

" au GUIEnter * simalt ~x

colorscheme zellner
set autoindent
set smartindent
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
syntax off
set nohlsearch
set rnu
set t_Co=0
set clipboard+=unnamed
set paste
set backspace=indent,eol,start
set guifont=Liga\ SFMono\ Nerd\ Font:h14
cd C:\Users\feituh\Workspace\cp

let mapleader = " "

nnoremap h b
nnoremap <S-h> h
vnoremap h b
vnoremap <S-h> h

nnoremap l e
nnoremap <S-l> l
vnoremap l e
vnoremap <S-l> l

nnoremap <S-j> 5j
vnoremap <S-k> 5k

nnoremap <leader>qq :q!<CR>
nnoremap <C-s> :w!<CR>
inoremap <C-s> <ESC>:w!<CR>
inoremap <C-v> <C-r>+
cnoremap <C-v> <C-r>+

nnoremap <C-d> :%d+<CR>
nnoremap <C-c> :%y+<CR>

nmap <silent> <leader>Pi :PlugInstall<CR>
nmap <silent> <leader>Pu :PlugUpdate<CR>
nmap <silent> <leader>Pd :PlugDiff<CR>
nmap <silent> <leader>Pc :PlugClean<CR>

nmap <silent> <leader>e :Ex<CR>
nmap <silent> <leader>ff :Files<CR>
nmap <silent> <leader>fb :Buffers<CR>
nmap <silent> <leader>fc :Lines<CR>
nmap <silent> <leader>fg :BLines<CR>

nmap <silent> <tab><tab> :tabnew<CR>
nmap <silent> <tab>p :tabnext<CR>
nmap <silent> <tab>n :tabprev<CR>

nmap <silent> <leader>bd :bdelete<CR>
nmap <silent> <leader>bn :bnext<CR>
nmap <silent> <leader>bp :bprev<CR>

let g:vsnip_snippet_dir = "~\\vimfiles\\snippets\\"
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)
