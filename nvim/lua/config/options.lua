local opt = vim.opt

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.nvim_tree_respect_buf_cwd = 1
vim.o.guifont = "0xProto Nerd Font Mono:h13"

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.smartindent = true

-- Mouse
opt.mouse = ""

-- Cursor
opt.cursorline = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Buffers
opt.hidden = true

-- Performance
opt.updatetime = 250
opt.timeoutlen = 500

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Persistent undo
opt.undofile = true

-- Better completion
opt.completeopt = { "menu", "menuone", "noselect" }
