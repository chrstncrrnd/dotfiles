-- KEYBINDS:
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>v', '<C-w>v', { desc = 'Split vertically' })
vim.keymap.set('n', '<leader>h', '<C-w>s', { desc = 'Split horizontally' })
vim.keymap.set('n', '<leader>x', '<C-w>q', { desc = 'Close window' })
vim.keymap.set('n', '<leader>t', '<cmd>tabnew<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFocus<CR>')
