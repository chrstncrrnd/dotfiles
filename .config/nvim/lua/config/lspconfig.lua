local lspconfig = require("lspconfig")

local servers = { "html", "cssls", "pylsp", "clangd", "gopls", "denols", "ocamllsp" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({})
end


require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- An example for configuring `clangd` LSP to use nvim-cmp as a completion engine
-- require('lspconfig').clangd.setup {
  -- capabilities = capabilities,
-- }
