" set relative numbers
set relativenumber



" set backspace to work
set backspace=indent,eol,start


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install vim-plug if not found
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Run PlugInstall if there are missing plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins to install 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'plasticboy/vim-markdown'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
Plug 'ryanoasis/vim-devicons'

call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Recommended settings for syntastic plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings for Indent-guides plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings for Markdown Preview plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let vim_markdown_preview_github=1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings for NERDTree plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings for NERDTree Git plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings for NERDTree Font plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings for Dev Icons plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=UTF-8


" default updatetime 4000ms is not good for async update
set updatetime=1
