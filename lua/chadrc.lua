-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "bearded-arc",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

-- M.nvdash = { load_on_startup = true }

M.ui = {
  tabufline = {
    lazyload = false,
  },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "flat_light", -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = { style = "bordered" }, -- borderless / bordered

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "arrow",
    order = nil,
    modules = nil,
  },
}

M.cheatsheet = {
  theme = "grid", -- simple/grid
}

return M
