-- 全局模块
_G.wvim = {}
local vim = vim
local cmd = vim.cmd
local fn = vim.fn

--[[
    设置
]]
function wvim.vim_opts(options)
  for scope, table in pairs(options) do
    for setting, value in pairs(table) do
      vim[scope][setting] = value
    end
  end
end

--[[
    关闭当前buffer
]]
function wvim.close_current_buffer()
    -- 获取当前所有的buffer列表
    local buflisted = fn.getbufinfo({ buflisted = 1 })
    local cur_winnr, cur_bufnr = fn.winnr(), fn.bufnr()
    if #buflisted < 2 then
        cmd('confirm qall')
        return
    end
    for _, winid in ipairs(fn.getbufinfo(cur_bufnr)[1].windows) do
        cmd(string.format('%d wincmd w', fn.win_id2win(winid)))
        cmd(cur_bufnr == buflisted[#buflisted].bufnr and 'bp' or 'bn')
    end
    cmd(string.format('%d wincmd w', cur_winnr))
    local is_terminal = fn.getbufvar(cur_bufnr, '&buftype') == 'terminal'
    cmd(is_terminal and 'bd! #' or 'silent! confirm bd #')
end
