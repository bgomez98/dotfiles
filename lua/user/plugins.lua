local install_plugins = false

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    print('Installing packer...')
    local packer_url = 'https://github.com/wbthomason/packer.nvim'
    fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
    print('Done.')

    vim.cmd('packadd packer.nvim')
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)

  -- package manager
  use 'wbthomason/packer.nvim'

  -- themes
  use 'joshdick/onedark.vim'
  use {'dracula/vim', as = 'dracula'}
  use 'kyoz/purify'

  -- icons
  use {'kyazdani42/nvim-web-devicons', config = 'require("plugins.nvim-web-devicons")'}
  use {'DaikyXendo/nvim-material-icon', config = 'require("plugins.nvim-material-icon")'}

  -- autocompletion
  use 'williamboman/nvim-lsp-installer'
  use {'hrsh7th/nvim-cmp', config = 'require("plugins.nvim-cmp")'}
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-cmdline'

  -- LSP support 
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/mason.nvim'}
  use {'williamboman/mason-lspconfig.nvim'}

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- language support
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = 'require("plugins.nvim-treesitter")'}
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- files explorer
  use {'tamago324/lir.nvim', config = 'require("plugins.lir")'}

  -- fuzzy finder
  use {'nvim-telescope/telescope.nvim', config = 'require("plugins.telescope")'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- git
  use 'tpope/vim-fugitive'
  use {'lewis6991/gitsigns.nvim', config = 'require("plugins.gitsigns")'}

  -- launcher
  use {'goolord/alpha-nvim', config = 'require("plugins.alpha")'};

  -- utils
  use {'nvim-lualine/lualine.nvim', config = 'require("plugins.lualine")'}
  use {"lukas-reineke/indent-blankline.nvim", config = 'require("plugins.indent-blankline")'}
  use {'numToStr/Comment.nvim', config = 'require("plugins.comment")'}
  use 'nvim-lua/plenary.nvim'
  use {"akinsho/toggleterm.nvim", tag = '*', config = 'require("plugins.toggleterm")'}
  use {'wellle/targets.vim'}
  use {'akinsho/bufferline.nvim', tag = "v3.*", config = 'require("plugins.bufferline")'}
  use {'folke/trouble.nvim', config = 'require("plugins.trouble")'}
  use {"windwp/nvim-autopairs", config = 'require("plugins.nvim-autopairs")'}

  -- session
  use({
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    -- config = 'require("plugins.persistence")'
  })

  if packer_bootstrap then
    require('packer').sync()
  end
end)

if install_plugins then
  return
end

require('plugins.session')
