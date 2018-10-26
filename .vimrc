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
"Plugin 'lervag/vimtex'
"
" Install You-complete-Me
Plugin 'Valloric/YouCompleteMe'

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
set tabstop=4

set encoding=utf-8
set shortmess=a

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
" set autoindent
 
 
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
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
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

" Open corresponding.pdf
map <leader>p :!xdg-open *.pdf &<CR><CR>
 
 
"FINDING FILES:
"   Search down into subfolders
"   Provides tab-completion for all file-related tasks
set path+=**

"Display all matching files when we tab complete
set wildmenu

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
 ""LATEX
autocmd FileType tex,r,rmd,python,py inoremap ?? <Esc>/<++><Enter>"_c4l

" Compile documents using xelatex
autocmd FileType tex inoremap <C-R> <Esc>:w
autocmd FileType tex inoremap <C-R> <Esc>:!xelatex<space><c-r>%<Enter>a
autocmd FileType tex nnoremap <C-R> :!xelatex<space><c-r>%<Enter>
" Open Bbliography
autocmd Filetype tex inoremap <C-B> <Esc>:vsplit *.bib%<Enter>
" Open corrisponding PDF
map <leader>p :!okular *.pdf%<Enter>
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
autocmd FileType tex inoremap ;fna\footnote{}<++><Esc>5j
autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA

"Math fo latex
autocmd FileType tex,rmd inoremap ;frac \frac{}{<++>}<++><Esc>10hi
autocmd FileType tex,rmd inoremap ;(	\left( \right)<Esc>7hi
autocmd FileType tex,rmd inoremap ;[	\left[ \right}<Esc>7hi
autocmd FileType tex,rmd inoremap ;{	\left{ \right}<Esc>7hi


"MARKDOWN
	autocmd FileType markdown,rmd inoremap ?? <Esc>/<++><Enter>"_c4l
	autocmd Filetype markdown,rmd inoremap ;fn ^[]<++><Esc>4hi
	autocmd Filetype markdown,rmd inoremap ;bf ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ;s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ;it **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ;h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ;img ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ;a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ;l --------<Enter>
	autocmd Filetype markdown,rmd,tex inoremap ... \dots
	autocmd Filetype rmd inoremap ;r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ;p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ;c ```<cr>```<cr><cr><esc>2kO

"PYTHON	
autocmd FileType py,python nnoremap <buffer> <C-R> :exec '!clear; python' shellescape(@%, 1)<cr>
autocmd FileType py,python inoremap ;for	for  in <++>:<Enter><Enter><++><Esc>2k0fihi
autocmd FileType py,python inoremap ;while while :<Enter><Enter><++><Esc>2k0f:i
autocmd FileType py,python inoremap ;if		if :<Enter><++><Esc>2kf:i
autocmd FileType py,python inoremap ;ds		import numpy as np<Enter>import pandas as pd<Ente>
