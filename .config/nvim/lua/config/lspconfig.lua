local lspconfig = require("lspconfig")

local servers = { "html", "cssls", "pylsp", "clangd", "gopls", "denols", "ocamllsp" }

require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()


-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({})
end


