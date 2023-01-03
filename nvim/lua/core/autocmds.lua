 --[[
     autocmd InsertEnter * set timeoutlen=200
     autocmd InsertLeave * set timeoutlen=0
-]]

local autocmd = vim.api.nvim_create_autocmd
local vim_opt = vim.o

-- 进入Insert 模式 设置连击按键时间 
autocmd({'InsertEnter'}, {desc = 'Enter Insert set timeoutlen = 200', pattern = "*", callback = function ()
    vim_opt.timeoutlen = 200
end})

-- 离开 Insert 模式 设置连击按键时间 
autocmd({'InsertLeave'}, {desc = 'Leave Insert set timeoutlen = 0', pattern = "*", callback = function ()
    vim_opt.timeoutlen = 0
end})

