-- load defaults
require("nvchad.configs.lspconfig").defaults()

local M = {}

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

vim.lsp.enable(M.default_servers)

return M
