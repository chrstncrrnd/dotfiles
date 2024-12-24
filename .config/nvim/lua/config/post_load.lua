-- not sure if this is the recommended way of doing stuff but it works.
vim.cmd.colorscheme("catppuccin")

require("mason").setup()
require("mason-lspconfig").setup()
require('nvim-tree').setup {
  hijack_cursor = false, 
}

