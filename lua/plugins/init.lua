return {
  { "luarocks.nvim", enabled = false },

  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = require "configs.treesitter",
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = require "configs.mason-lspconfig",
  },
}
