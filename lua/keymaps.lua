vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc })
end

-- Better escape
map("i", "jk", "<Esc>", "Exit insert mode")

-- Save / quit
map("n", "<leader>w", "<cmd>w<cr>", "Save file")
map("n", "<leader>q", "<cmd>q<cr>", "Quit")
map("n", "<leader>Q", "<cmd>qa!<cr>", "Force quit all")

-- Move between windows
map("n", "<C-h>", "<C-w>h", "Window left")
map("n", "<C-j>", "<C-w>j", "Window down")
map("n", "<C-k>", "<C-w>k", "Window up")
map("n", "<C-l>", "<C-w>l", "Window right")

-- Resize windows
map("n", "<C-Up>",    "<cmd>resize +2<cr>",          "Increase height")
map("n", "<C-Down>",  "<cmd>resize -2<cr>",           "Decrease height")
map("n", "<C-Left>",  "<cmd>vertical resize -2<cr>",  "Decrease width")
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>",  "Increase width")

-- Buffer navigation
map("n", "<S-l>", "<cmd>bnext<cr>",     "Next buffer")
map("n", "<S-h>", "<cmd>bprevious<cr>", "Prev buffer")
map("n", "<leader>x", "<cmd>bdelete<cr>", "Close buffer")

-- Splits
map("n", "<leader>|", "<cmd>vsplit<cr>", "Vertical split")
map("n", "<leader>-", "<cmd>split<cr>",  "Horizontal split")

-- Indent and stay in visual mode
map("v", "<", "<gv", "Dedent")
map("v", ">", ">gv", "Indent")

-- Move lines up/down
map("v", "J", ":m '>+1<cr>gv=gv", "Move line down")
map("v", "K", ":m '<-2<cr>gv=gv", "Move line up")

-- Keep cursor centered on search
map("n", "n", "nzzzv", "Next match (centered)")
map("n", "N", "Nzzzv", "Prev match (centered)")

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<cr>", "Clear search highlight")

-- Telescope (defined here for discoverability; plugin setup is in plugins.lua)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>",  "Find files")
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>",   "Live grep")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>",     "Find buffers")
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>",   "Help tags")
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>",    "Recent files")
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", "Document symbols")

-- LSP (set on attach in plugins.lua, these are global fallbacks)
map("n", "<leader>e", vim.diagnostic.open_float, "Show diagnostic")
map("n", "[d", vim.diagnostic.goto_prev,          "Prev diagnostic")
map("n", "]d", vim.diagnostic.goto_next,          "Next diagnostic")

-- Mason
map("n", "<leader>m", "<cmd>Mason<cr>", "Open Mason")

-- Lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", "Open Lazy")
