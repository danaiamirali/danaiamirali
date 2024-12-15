-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {}) vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Setup lazy.nvim
require('lazy').setup {
  spec = {
    -- plugin for dependencies
    {"nvim-lua/plenary.nvim"},
    -- flow theme
    {
      '0xstepit/flow.nvim', lazy = false,
      priority = 1000,
      opts = {},
    },
    { 'christoomey/vim-tmux-navigator' },
    { 'szw/vim-maximizer' },
    -- commenting stuff
    { 'numToStr/Comment.nvim' },
    -- git blame
    {
      'f-person/git-blame.nvim',
      -- load the plugin at startup
      event = 'VeryLazy',
      opts = {
        enabled = false, -- if you want to enable the plugin
        message_template = ' <summary> • <date> • <author>', -- template for the blame message, check the Message template section for more options
        date_format = '%m-%d-%Y %H:%M', -- template for the date, check Date format section for more options
        virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
      },
    },
    -- file explorer and its icons
    {"nvim-tree/nvim-tree.lua"},
    {"kyazdani42/nvim-web-devicons"},
    -- pretty nvim line at bottom
    {"nvim-lualine/lualine.nvim"},
    -- telescope
    {"nvim-telescope/telescope-fzf-native.nvim", run="make"},
    {"nvim-telescope/telescope.nvim", branch="0.1.x"},
    -- code completion
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    -- snippets
    {"L3MON4D3/LuaSnip"},
    {"saadparwaiz1/cmp_luasnip"},
    {"rafamadriz/friendly-snippets"},
    -- lsp
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }, -- managing and installing lsp servers
    -- lsp gui
    {
        "hrsh7th/cmp-nvim-lsp",
        "glepnir/lspsaga.nvim",
        "onsails/lspkind.nvim"
    }

  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { 'dark' } },
  -- automatically check for plugin updates
  checker = { enabled = true },
}
