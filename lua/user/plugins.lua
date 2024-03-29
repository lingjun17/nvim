local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  -- Nvim-tree
  use "kyazdani42/nvim-web-devicons"
  use {
    "kyazdani42/nvim-tree.lua", 
    requires = "kyazdani42/nvim-web-devicons"
  }
  -- Coc 
  use {'neoclide/coc.nvim', branch = 'release'}

  -- colorschemes
  use 'folke/tokyonight.nvim'
  use 'lunarvim/onedarker.nvim'
  use 'lunarvim/darkplus.nvim'
  
  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate"
  }

  -- nvim-telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {{ 'nvim-lua/plenary.nvim' }}
  } 
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'BurntSushi/ripgrep'
  use 'sharkdp/fd'

  -- git
  use 'lewis6991/gitsigns.nvim'

  -- terminator
  use "akinsho/toggleterm.nvim"

  -- comment
  use "numToStr/Comment.nvim"
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- nvim-autopairs
  use "windwp/nvim-autopairs"

  -- bufferline, tab implement 
  use { 
    "akinsho/bufferline.nvim", 
    requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }
  }

  -- lualine, the bottomline optimize
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
  use("arkav/lualine-lsp-progress")

  use {
    'gelguy/wilder.nvim',
    config = function()
      -- config goes here
      local wilder = require('wilder')
      wilder.setup({modes = {':', '/', '?'}})
      wilder.set_option('renderer', wilder.popupmenu_renderer(
        wilder.popupmenu_border_theme({
          highlights = {
            border = 'Normal', -- highlight to use for the border
          },
          -- 'single', 'double', 'rounded' or 'solid'
          -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
          border = 'rounded',
        })
      ))
    end
  }

  use 'fatih/vim-go'
  
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this a the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
