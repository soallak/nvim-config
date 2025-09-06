require "nvchad.mappings"

local map = vim.keymap.set

-- Miscellaneous
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Telescope
map("n", "<leader>gm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", { desc = "telescope git branches" })

map("n", "<leader>lr", "<cmd>Telescope lsp_references<CR>", { desc = "telescope lsp references" })
map("n", "<leader>li", "<cmd>Telescope lsp_incoming_calls<CR>", { desc = "telescope lsp incoming calls" })
map("n", "<leader>lo", "<cmd>Telescope lsp_outgoing_calls<CR>", { desc = "telescope lsp outgoing calls" })
map("n", "<leader>ls", "<cmd>Telescope lsp_workspace_symbols<CR>", { desc = "telescope lsp workspace symbols" })
