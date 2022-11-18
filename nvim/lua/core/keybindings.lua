local nvim_keymap = vim.api.nvim_set_keymap
local nvim_set_keymap = vim.keymap.set
local opt = {noremap = true, silent = true}

--[[
    @desc: 按键映射
    @author: wangtx
    @time: 2022-10-28 16:42:51
    --@mode: string, 输入模式, n i v c
    --@beforKey: 输入的按键 <C-a> ctrl + a, <D-a> command + a, <M-a> option + a, <S-a> shift + a
    --@afterKey: 映射后的按键

    @return: nil
]]
local map = function(mode, beforKey, afterKey, silent)
    opt.noremap = false
    opt.silent = silent or false
    nvim_keymap(mode, beforKey, afterKey, opt)
end

--[[
    @desc: 按键映射
    @author: wangtx
    @time: 2022-10-28 16:42:51
    --@mode: string, 输入模式, n i v c
    --@beforKey: 输入的按键 <C-a> ctrl + a, <D-a> command + a, <M-a> option + a, <S-a> shift + a
    --@afterKey: 映射后的按键
    --@silent: 是否静默, 如果为否状态栏不显示内容
    @return: nil
]]
local noremap = function(mode, beforKey, afterKey, silent)
    opt.noremap = true
    opt.silent = silent or false
    nvim_keymap(mode, beforKey, afterKey, opt)
end

--[[
    @desc: 设置按键映射
    @author: wangtx
    @time: 2022-10-28 16:42:51
    --@mode: string, 输入模式, n i v c
    --@beforKey: 输入的按键 <C-a> ctrl + a, <D-a> command + a, <M-a> option + a, <S-a> shift + a
    --@afterKey: 映射后的按键
    --@silent: 是否静默, 如果为否状态栏不显示内容
 @return: nil
]]
local set_map = function(mode, beforKey, afterKey, silent)
    opt.noremap = false
    opt.silent = silent or false
    nvim_set_keymap(mode, beforKey, afterKey, opt)
end

--[[
     @desc: 设置按键映射 不递归
     @author: wangtx
     @time: 2022-10-28 16:42:51
     --@mode: string, 输入模式, n i v c
     --@beforKey: 输入的按键 <C-a> ctrl + a, <D-a> command + a, <M-a> option + a, <S-a> shift + a
     --@afterKey: 映射后的按键
     --@silent: 是否静默, 如果为否状态栏不显示内容
     @return: nil
 ]]
local set_noremap = function(mode, beforKey, afterKey, silent)
    opt.noremap = true
    opt.silent = silent or false
    nvim_set_keymap(mode, beforKey, afterKey, opt)
end

-- <esc>
noremap('n', '<esc>', '<esc>', false)

-- jj -> <esc>
noremap('i', 'jj', '<esc>', true)
noremap('i', 'jk', '<esc>', true)

-- <c-u> <c-d> 翻页
noremap('n', '<c-d>', '10jzz', true)
noremap('n', '<c-u>', '10kzz', true)

-- 分屏相关
noremap('n', 'sh', ':vsp<CR>', true)
noremap('n', 'sv', ':sp<CR>', true)
noremap('n', 'sc', '<c-w>c', true)
noremap('n', 'so', '<c-w>o', true)
noremap('n', '<c-h>', '<c-w>h', true)
noremap('n', '<c-j>', '<c-w>j', true)
noremap('n', '<c-k>', '<c-w>k', true)
noremap('n', '<c-l>', '<c-w>l', true)

-- emacs匹配
noremap('i', '<c-a>', '<home>', true)
noremap('i', '<c-e>', '<end>', true)
noremap('i', '<c-d>', '<del>', true)
noremap('i', '<c-h>', '<backspace>', true)
noremap('i', '<c-f>', '<right>', true)
noremap('i', '<c-b>', '<left>', true)
noremap('i', '<c-k>', '<esc>lDa', true)
-- noremap('i', '<c-u>', '<esc>d0xi', true)

noremap('c', '<c-a>', '<home>', false)
noremap('c', '<c-e>', '<end>', false)
noremap('c', '<c-d>', '<del>', false)
noremap('c', '<c-h>', '<backspace>', false)
noremap('c', '<c-f>', '<right>', false)
noremap('c', '<c-b>', '<left>', false)
-- set_noremap('c', '<c-k>', '<C-\\>e(' '.getcmdline())[:getcmdpos()-1][1:]<CR>', true)

-- -- 代码缩进
noremap('v', '<', '<gv', true)
noremap('v', '>', '>gv', true)

-- 全选
noremap('n','<lt>D-a>', 'ggVG', true)
noremap('i','<lt>D-a>', '<esc>ggVG', true)
noremap('n','<lt>D-s>', ':w<CR>', true)
noremap('v','<lt>D-s>', '<esc>:w<CR>gv', true)
noremap('i','<lt>D-s>', '<esc>:w<CR>a', true)

-- 注释
map('n','<lt>D-/>', 'gcc', true)
map('v','<lt>D-/>', 'gcc<esc>', true)
map('i','<lt>D-/>', '<Esc>gcc', true)

noremap('n', '<c-w>', [[<cmd>lua wangtx.close_current_buffer()<cr>]])

--[[
    ==========================================================
    =                 插件相关                               =
    ==========================================================
]]
-- NvimTree 目录管理
-- noremap('n', '<leader>e', ':NvimTreeToggle<CR>', true)
noremap('n', '<s-H>', ':BufferLineCyclePrev<CR>', true)
noremap('n', '<s-L>', ':BufferLineCycleNext<CR>', true)
noremap('n', '<leader>bc', ':BufferLinePickClose<CR>', true)
noremap('n', '<leader>bc', ':BufferLinePick<CR>', true)

-- Telescope 文件符号搜索
local telBuiltin = require('telescope.builtin')
set_noremap('n', '<leader>ff', telBuiltin.find_files, true)
set_noremap('n', '<leader>fg', telBuiltin.live_grep, true)
set_noremap('n', '<leader>fb', telBuiltin.buffers, true)
set_noremap('n', '<leader>fh', telBuiltin.help_tags, true)
set_noremap('n', '<leader>sf', [[<cmd>lua require('telescope.builtin').file_browser()<cr>]], true)
set_noremap('n', '<leader>so', telBuiltin.current_buffer_fuzzy_find, true)


-- floaterm fzf
noremap('n', '<leader>tt', ':FloatermNew<CR>', true)
noremap('n', '<leader>tf', ':FloatermNew fzf<CR>', true)
noremap('n', '<leader>tl', ':FloatermNew lazygit<CR>', true)
noremap('n', '<leader>tr', ':FloatermNew ranger<CR>', true)
-- noremap('t', '<leader>th', '<c-\\><c-n>:FloatermHide<CR>', true)
noremap('n', '<leader>ts', ':FloatermShow<CR>', true)
noremap('n', '<leader>th', ':FloatermHide<CR>', true)
noremap('n', '<leader>tp', ':FloatermPrev<CR>', true)
noremap('n', '<leader>tn', ':FloatermNext<CR>', true)
noremap('t', '<esc>', '<c-\\><c-n>', true)
