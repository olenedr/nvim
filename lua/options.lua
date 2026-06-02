local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation (2 spaces)
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.wrap = false

-- Splits open right/below
opt.splitright = true
opt.splitbelow = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Undo
opt.undofile = true

-- Update time (faster CursorHold events)
opt.updatetime = 250
