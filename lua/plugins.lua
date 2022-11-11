local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  -- [LSP]
  use 'neovim/nvim-lspconfig'
  use 'folke/lsp-colors.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'WhoIsSethDaniel/mason-tool-installer.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jayp0521/mason-null-ls.nvim'
  use {
    'LhKipp/nvim-nu',
    run = "TSInstall nu",
    config = function()
      require('nu').setup {}
    end
  }

  -- [Telescope] Done
  use 'nvim-telescope/telescope.nvim'
  use 'ibhagwan/fzf-lua'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'pwntester/octo.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- [TreeSitter] Done
  use 'nvim-treesitter/nvim-treesitter'
  -- use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'RRethy/nvim-treesitter-textsubjects'
  use 'kylechui/nvim-surround'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- [DAP] Done
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'Weissle/persistent-breakpoints.nvim'

  -- [UI] Done
  use { 'shaunsingh/oxocarbon.nvim', run = './install.sh' }
  -- use 'j-hui/fidget.nvim'
  use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'
  use 'stevearc/dressing.nvim'
  use 'akinsho/toggleterm.nvim'
  use 'NvChad/nvim-colorizer.lua'
  use 'ray-x/aurora'
  use 'rebelot/kanagawa.nvim'
  use 'rebelot/heirline.nvim'
  use 'goolord/alpha-nvim'
  use 'kevinhwang91/nvim-hlslens'
  use 'declancm/cinnamon.nvim'
  use 'p00f/nvim-ts-rainbow'
  use({
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require("user.UI.noice")
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })

  -- [Completion] Done
  -- use 'ms-jpq/coq_nvim'
  -- use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
  -- use { 'ms-jpq/coq.thirdparty', branch = '3p', config = function()
  --   require("coq-cmp")
  -- end }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'f3fora/cmp-spell'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'rcarriga/cmp-dap'
  use 'windwp/nvim-autopairs'

  -- [MISC] Done
  use 'jghauser/mkdir.nvim'
  use 'Abstract-IDE/penvim'
  use 'Saecki/crates.nvim'
  use 'TimUntersberger/neogit'
  use 'danymat/neogen'
  use 'numToStr/Comment.nvim'
  use 'ggandor/leap.nvim'
  use 'stevearc/overseer.nvim'
  use 'ahmedkhalf/project.nvim'
  use 'anuvyklack/hydra.nvim'
  use 'nvim-neotest/neotest'
  use {
    'yamatsum/nvim-nonicons',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  use 'antoinemadec/FixCursorHold.nvim'
  use 'famiu/bufdelete.nvim'
  use 'lewis6991/impatient.nvim'
  use {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers", -- This is the important bit!
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}
        }
      }
    end,
  }
  if packer_bootstrap then
    require('packer').sync()
  end
end)
