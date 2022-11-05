" ================================================== 
" =                    init.vim                    =
" ==================================================

" 识别后缀名 .lua.txt 
au! BufNewFile,BufRead *.lua.txt setf lua

lua require('basic') 
lua require('plugins')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/nvim-web-devicons')
lua require('plugin-config/bufferline')
lua require('plugin-config/comment')
lua require('plugin-config/telescope')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/nvim-lualine')
lua require('plugin-config/indent-blankline')
lua require('plugin-config/neogen')
lua require('keybindings')
"lua require('lsp/setup')

" 皮肤设置
" https://github.com/ellisonleao/gruvbox.nvim
set background=dark
colorscheme gruvbox
" colorscheme nord
" colorscheme zephyr

" floaterm

" ts 是tabstop的缩写，设TAB宽度为4个空格。
" ofttabstop 表示在编辑模式的时候按退格键的时候退回缩进的长度，当使用 expandtab 时特别有用。
" hiftwidth 表示每一级缩进的长度，一般设置成跟 softtabstop 一样。
" expandtab表示缩进用空格来表示，noexpandtab 则是用制表符表示一个缩进。
" autoindent自动缩进
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" 命令模式c-k
cnoremap <C-k> <C-\>e(" ".getcmdline())[:getcmdpos()-1][1:]<CR>


" coc
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-/> coc#refresh()

" Use <Ctrl-F> to format documents with prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
noremap <C-F> :Prettier<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
