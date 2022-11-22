local map = vim.api.nvim_set_keymap
local set = vim.opt
local o = vim.o

-- Set the leader key to the spacebar
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

-- Tab settings
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true

-- Use hybrid relative line number
set.number = true
set.relativenumber = true

-- Show the cursor line
set.cursorline = true

-- Tweak searching
set.ignorecase = true
set.smartcase = true

-- Disable line wrapping
set.wrap = false

-- Show the cursor line
o.termguicolors = true

-- Gui Font
o.guifont = "FiraCode Nerd Font:h18"

if vim.g.neovide then
  vim.g.neovide_input_use_logo = "v:true"
  vim.g.neovide_refresh_rate = 144
end
