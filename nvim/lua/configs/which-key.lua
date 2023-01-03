local which_key = require('which-key')
local setup = {
    plugins = {
        spelling = { enabled = true },
        presets = { operators = false },
    },
    window = {
        border = "rounded",
        padding = { 2, 2, 2, 2 },
    },
    disable = { filetypes = { "TelescopePrompt" } },
}

local nopts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
}

local nkeybinds = {
    ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
    ["c"] = {"<cmd>lua wangtx.close_current_buffer()<cr>", "Close Buffer"},
    ['e'] = {':NvimTreeToggle<CR>', 'NvimTree Toggle123'},
    ["<leader>"] = {{
        ["s"] = {":HopChar1<CR>", "search world first abc"},
        ["w"] = {":HopWord<CR>", "search world"},
        ["/"] = {":HopPattern<CR>", "search mode"},
    }, "hop"},
    ["p"] = {{
        ["I"] = {":PackerInstall<CR>", "Packer Install"},
        ["S"] = {":PackerSync<CR>", "Packer Sync"},
        ["s"] = {":PackerStatus<CR>", "Packer Status"},
        ["c"] = {":PackerCompile<CR>", "Packer Compile"},
    }, "Packer"}
}

local vopts = {
    mode = "v", -- VIRTUAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
}

local vkeybinds = {
    ["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" },
    ["<leader>"] = {{
        ["s"] = {"<cmd>lua require('hop').HopChar1<CR>", "Lightspeed f"},
    }, "lightspeed"}
}

which_key.setup(setup)
which_key.register(nkeybinds, nopts)
which_key.register(vkeybinds, vopts)
