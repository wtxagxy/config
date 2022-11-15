--[[
    vim.o:  全局属性，我们可以利用 options来记忆
    vim.bo: 缓冲区属性，我们可以利用 buffer-option来记忆
    vim.wo: 窗口属性, 我们可以利用 window-option来记忆
--]]

--[[
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
]]

wangtx.vim_opts({
    -- opt
    o = {
        fileencoding = 'utf-8',
        scrolloff = 8,
        sidescrolloff = 8,
        tabstop = 4,                        -- 设TAB宽度为4个空格。
        softtabstop = 4,                    -- 表示在编辑模式的时候按退格键的时候退回缩进的长度，当使用 expandtab 时特别有用。
        shiftwidth = 4,                     -- 表示每一级缩进的长度，一般设置成跟 softtabstop 一样。
        expandtab = true,                   -- expandtab表示缩进用空格来表示，noexpandtab 则是用制表符表示一个缩进。
        autoindent = true,                  -- 新行缩进对齐当前行
        smartindent = true,                 -- 只能缩进
        ignorecase = true,                  -- 搜索忽略大小写
        smartcase = true,                   -- 搜索大小写不敏感，除非包含大写
        hlsearch = true,                    -- 搜索开启高亮
        incsearch = true,                   -- 边输入边搜索
        cmdheight = 2,                      -- 命令行高为2
        autoread = true,                    -- 当文件被外部程序修改时
        whichwrap = "<,>,[,]",              -- 光标在行首尾时<Left><Right>可以跳到下一行
        hidden = true,                      -- 允许隐藏被修改过的buffer
        mouse = 'a',                        -- 鼠标支持
        backup = false,                     -- 禁止创建备份文件
        writebackup = false,                -- 禁止写入备份文件
        swapfile = false,                   -- 禁止创建swapfile
        timeoutlen = 300,                   -- 设置 timeoutlen 为等待键盘快捷键连击时间500毫秒，可根据需要设置遇到问题详见：https://github.com/nshen/learn-neovim-lua/issues/1
        splitbelow = true,                  -- split window 从下出现
        splitright = true,                  -- split window 从右边出现
        termguicolors = true,               -- 样式
        list = false,                       -- 是否显示不可见字符
        listchars = 'space:·,tab:··',       -- 不可见字符的显示，显示为一个点
        wildmenu = true,                    -- 补全增强
        shortmess = vim.o.shortmess .. 'c', -- Dont' pass messages to |ins-completin menu|
        pumheight = 10,                     -- 补全最多显示10行
        showtabline = 2,                    -- 永远显示tabline
        showmode = false,                   -- 使用增强状态栏插件后不再需要
        clipboard = 'unnamedplus',          -- 剪切板
        background='dark',                  -- 背景色 light or dark
    },

    -- buffer opt
    bo = {
    },

    -- window opt
    wo = {
        number = true,                      -- 显示行号
        relativenumber = true,              -- 显示相对行号
        cursorline = true,                  -- 高亮所在行
        signcolumn = "yes",                 -- 显示左侧图标指示列
        colorcolumn = "80",                 -- 右侧参考线，超过表示代码太长了，考虑换行
        wrap = false,                       -- 禁止折行
    },

    -- global
    g = {
        encoding = 'utf-8',
    },
})
