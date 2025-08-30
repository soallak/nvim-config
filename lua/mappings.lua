require "nvchad.mappings"

local map = vim.keymap.set

-- Miscellaneous
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
