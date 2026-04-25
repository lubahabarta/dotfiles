local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Split windows
keymap.set("n", "sh", ":vsplit<Return>", opts)
keymap.set("n", "sv", ":split<Return>", opts)

-- Indent
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Clear earch highlights
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)
