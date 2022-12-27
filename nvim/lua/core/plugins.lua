local packer = require("packer")
packer.init({
    -- compile_path = astronvim.default_compile_path,
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'rounded' }
        end,
    }
})

return packer.startup(function(use)
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
    use {'akinsho/bufferline.nvim', tag = 'v3.*'}

    -- treesitter 语法高亮
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- lspconfig
    -- use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

    -- coc lsp 代码补全
    use {'neoclide/coc.nvim', branch = 'release'}

    -- alpha-nvim 开屏工具
    use {
        'goolord/alpha-nvim',
        -- requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
            -- require'alpha'.setup(require'alpha.themes.startify'.config)
        end
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
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = {'nvim-lua/plenary.nvim'}
    }

    -- fzf native
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- 缩进回车换行显示
    use "lukas-reineke/indent-blankline.nvim"

    -- floaterm 浮动终端
    use 'voldikss/vim-floaterm'

    -- fzf plugins
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- which-key
    use {"folke/which-key.nvim"}

    -- 快速跳转 字符串 字符
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
end)
