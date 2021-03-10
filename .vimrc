" ===Vim Settings===
set number


" ===Vim-plug===
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'
	Plug 'haya14busa/incsearch.vim'
	Plug 'flazz/vim-colorschemes'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" ===Vim Plugins Settings===
" lightline
set laststatus=2
set noshowmode

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Colorscheme
colorscheme afterglow
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

" NERDTree
" autocmd VimEnter * NERDTree | wincmd p
