-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- LSPs wwith default configuration
local default_servers = {
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
}
local default_nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(default_servers) do
  lspconfig[lsp].setup {
    on_attach = default_nvlsp.on_attach,
    on_init = default_nvlsp.on_init,
    capabilities = default_nvlsp.capabilities,
  }
end
