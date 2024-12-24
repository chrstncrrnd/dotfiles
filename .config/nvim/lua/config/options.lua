-- ===LEADER KEY===
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '



-- ==GENERAL CONFIG==
vim.g.have_nerd_font = true
-- vim.opt.clipboard = "unamedplus"
-- borrowed from kickstart.nvim
-- Decrease update time
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 900
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
--- width of a tab
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
-- use number of spaces to insert a <Tab>
vim.opt.expandtab = true



-- ==EDITOR STYLE==
vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.mouse = 'a'
vim.o.wrap = false
-- not sure im super keen on this (might delete)
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = "split"
vim.opt.ruler = true
-- Enable cursor line highlighting
vim.opt.cursorline = true
-- Set CursorLine to have no background
-- Customize the highlight for the cursor line number
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "White", bold = true })
vim.opt.relativenumber = true


-- ==PLUGIN CONFIG STUFF==
-- nvim-tree:
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
