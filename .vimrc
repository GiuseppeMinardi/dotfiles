set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install Jedi (Python autocompletion)
Plugin 'davidhalter/jedi-vim'

" Install Nvim-R (R things)
Plugin 'jalvesaq/Nvim-R'

" Install vimtex (LaTeX autocompletion)
Plugin 'lervag/vimtex'
"
" Install You-complete-Me
Plugin 'Valloric/YouCompleteMe'

""Install vim markdown (markdown stuf)
Bundle 'gabrielelana/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set tab
" set tabstop=4

set encoding=utf-8
set shortmess=a

" Tab identation
set tabstop=4
set shiftwidth=4
set expandtab

" Let vim understad the File Type for markdowns
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}


" Navigate between tabs
map <C-left> <esc>:tebprevious<CR>
map <C-right> <esc>:tabnext<CR>

" Navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

"Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Allow backspacing over autoindent, line breaks and start of insert action
" set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
"set mouse=a
 
" Display line numbers on the left
set number
 
" Better command-line completion
set wildmode=longest,list,full
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Enable syntax highlighting
syntax on
 
" Interpret .md files as markdown

" Get line, word and character counts with F3:
map <F3> :!wc <C-R>%<CR>
" Spell-check set to F6:
map <F6> :setlocal spell! spelllang=en_us,it<CR>

"BRACKETS AUTOCOMPLETION:
inoremap " ""<++><Esc>4hi
inoremap ( ()<++><Esc>4hi
inoremap [ []<++><Esc>4hi
inoremap { {}<++><Esc>4hi

"
 "____        _                  _
 "/ ___| _ __ (_)_ __  _ __   ___| |_ ___
 "\___ \| '_ \| | '_ \| '_ \ / _ \ __/ __|
 " ___) | | | | | |_) | |_) |  __/ |_\__ \
 "|____/|_| |_|_| .__/| .__/ \___|\__|___/
 "               "|_|   |_|
 "
 ""LATEX SNIPPETS:
    inoremap ?? <Esc>/<++><Enter>"_c4l

" Compile documents using xelatex
    autocmd FileType tex nnoremap <buffer> <C-C> :!xelatex %<Enter>
" Open Bbliography
    autocmd Filetype tex inoremap <C-B> <Esc>:vsplit %:r.bib%<Enter>
" Code snippets
    autocmd FileType tex inoremap ;fr \begin{frame}{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}f}i
    autocmd FileType tex inoremap ;em \emph{}<++><Esc>T{i
    autocmd FileType tex inoremap ;bf \textbf{}<++><Esc>T{i
    autocmd FileType tex inoremap ;it \textit{}<++><Esc>T{i
    autocmd FileType tex inoremap ;ct \cite{}<++><Esc>T{i
    autocmd FileType tex inoremap ;en \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ;eq \begin{equation}<Enter><Enter><Enter>\end{equation}<Enter><Enter><++><Esc>5ki
    autocmd FileType tex inoremap ;al \begin{align}<Enter><Enter><Enter>\end{align}<Enter><Enter><++><Esc>5ki
    autocmd FileType tex inoremap ;quote \begin{quote}<Enter><Enter><Enter>\end{quote}<Enter><Enter><++><Esc>5ki
    autocmd FileType tex inoremap ;in \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ;li <Enter>\item<Space>
    autocmd FileType tex inoremap ;ref \ref{}<Space><++><Esc>T{i
    autocmd FileType tex inoremap ;tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
    autocmd FileType tex inoremap ;link \href{}{<++>}<Space><++><Esc>2T{i
    autocmd FileType tex inoremap ;chap \chapter{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ;sec \section{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ;fn \footnote{}<++><Esc>5j
    autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ;col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
    autocmd FileType tex inoremap ;pkg \usepackage{}<++><Esc>4hi
    autocmd FileType tex inoremap ;opkg \usepackage[]{<++>}<++><Esc>10hi

" SNIPPETS FOR LaTeX AND MARKDDOWN:
    autocmd FileType tex,markdown inoremap ;begin \begin{}<Enter><Enter><Enter><Enter>\end{<-->}<Enter><Enter><++><Esc>6k$i
    autocmd FileType tex,markdown,rmd inoremap <C-X> <Esc>"ayiw/<--><Enter>di{h"ap2ki<Tab>
    autocmd FileType tex,markdown,rmd inoremap ;fz \frac{}{<++>}<++><Esc>10hi
    autocmd FileType tex,markdown,rmd inoremap ;(	\left( \right)<Esc>7hi
    autocmd FileType tex,markdown,rmd inoremap ;[	\left[ \right}<Esc>7hi
    autocmd FileType tex,markdown,rmd inoremap ;{	\left{ \right}<Esc>7hi
	autocmd FileType markdown,tex,rmd inoremap ... \dots

" MARKDOWN:
	autocmd FileType markdown,rmd inoremap ?? <Esc>/<++><Enter>"_c4l
	autocmd FileType markdown,rmd inoremap ;fn ^[]<++><Esc>4hi
	autocmd FileType markdown,rmd inoremap ;bf ****<++><Esc>F*hi
	autocmd FileType markdown,rmd inoremap ;s ~~~~<++><Esc>F~hi
	autocmd FileType markdown,rmd inoremap ;it __<++><Esc>F_i
	autocmd FileType markdown,rmd inoremap ;h ====<Space><++><Esc>F=hi
	autocmd FileType markdown,rmd inoremap ;img ![](<++>)<++><Esc>F[a
	autocmd FileType markdown,rmd inoremap ;a [](<++>)<++><Esc>F[a
	autocmd FileType markdown,rmd inoremap ;l --------<Enter>
	autocmd FileType markdown,rmd inoremap ;r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd FileType markdown,rmd inoremap ;p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd FileType markdown,rmd inoremap ;c ```<cr>```<cr><cr><esc>2kO
	autocmd FileType markdown,rmd nnoremap <C-C> :!pandoc % --pdf-engine=xelatex -o %:r.pdf<Enter>


" PYTHON:	
    autocmd FileType python nnoremap <buffer> <C-R> :exec '!clear; python' shellescape(@%, 1)<cr>
    autocmd FileType python inoremap ;for	for  in <++>:<Enter><Enter><++><Esc>2k0fihi
    autocmd FileType python inoremap ;while	while :<Enter><Enter><++><Esc>2k0f:i
    autocmd FileType python inoremap ;if		if :<Enter><++><Esc>2kf:i
    autocmd FileType python inoremap ;ds		import numpy as np<Enter>import pandas as pd<Enter>import matplotlib.pyplot as plt<Enter>import os<Enter><Enter>
