-- load defaults i.e lua_lsp
local M = {}

local nvchad_lsp = require "nvchad.configs.lspconfig"
nvchad_lsp.defaults()

local lspconfig = require "lspconfig"

-- LSPs wwith default configuration
M.default_servers = {
  "html",
  "cssls",
  "clangd",
  "cmake",
  "bashls",
  "dockerls",
  "rust_analyzer",
  "jedi_language_server",
  "ltex",
  "texlab",
  "taplo",
  "vhdl_ls",
  "kotlin_language_server",
  "gradle_ls",
}

-- lsps with default config
for _, lsp in ipairs(M.default_servers) do
  lspconfig[lsp].setup {
    on_attach = nvchad_lsp.on_attach,
    on_init = nvchad_lsp.on_init,
    capabilities = nvchad_lsp.capabilities,
  }
end

return M
