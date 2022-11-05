local packer = require("packer")
packer.init({
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'rounded' }
        end,
    }
})

return packer.startup(function()
    -- packer 插件管理器can manage itself
    use 'wbthomason/packer.nvim'

    -- theme gruvbox
    use {
        'ellisonleao/gruvbox.nvim',
        requires = {'rktjmp/lush.nvim'}
    }
    -- theme nord
    use 'shaunsingh/nord.nvim' 

    -- theme zephyr
    use 'glepnir/zephyr-nvim'

    -- nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- nvim-tree devicons
    use 'nvim-tree/nvim-web-devicons'

    -- bufferline
    use {'akinsho/bufferline.nvim'}

    -- treesitter 语法高亮
    use { 'nvim-treesitter/nvim-treesitter', branch = 'v0.8.0', run = ':TSUpdate' }

    -- lspconfig
    -- use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

    -- coc lsp 代码补全
    use {'neoclide/coc.nvim', branch = 'release'}

    -- alpha-nvim 开屏工具
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }

    -- 方法注释插件
    use {
        "danymat/neogen",
        config = function()
            local neogen = require('neogen')
            neogen.setup({})
            neogen.generate({
                type = "func" -- the annotation type to generate. Currently supported: func, class, type, file
            }) 
        end,
        requires = "nvim-treesitter/nvim-treesitter",
        -- Uncomment next line if you want to follow only stable versions
        -- tag = "*"
    }

    -- 注释插件
    use {
        'numToStr/Comment.nvim',
    }
    -- lualine 状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- 文件搜索
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0', -- or branch = '0.1.x',
        requires = {'nvim-lua/plenary.nvim'}
    }

    -- 缩进回车换行显示
    use "lukas-reineke/indent-blankline.nvim"

    -- floaterm 浮动终端
    use 'voldikss/vim-floaterm'
end)
