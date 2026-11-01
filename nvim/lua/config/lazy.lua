local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
      })
      vim.cmd.colorscheme("gruvbox")
    end,
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        theme = "gruvbox",
        globalstatus = true,
      },
    },
  },

  -- Buffer tabs
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      view = {
        width = 35,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    },
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- Git indicators
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*",
    opts = {},
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
  },

  -- Rainbow parentheses
  {
    "HiPhish/rainbow-delimiters.nvim",
  },

  -- Marks
  {
    "chentoast/marks.nvim",
    opts = {},
  },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  -- Which-key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
  },

  -- Mason
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  -- Autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    -- Nerd font
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = {},
  }

})
