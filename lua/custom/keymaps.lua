local options = { noremap = true }
local keymap = vim.keymap

keymap.set("i", "kj", "<Esc>", options)
keymap.set("n", ";w", ":w<CR>")
keymap.set("n", ";q", ":wq<CR>")

keymap.set("n", "<leader>f", ":Format<CR>")

-- prevent to save in clipboard the cuted words using x in normal mode
keymap.set("n", "x", '"_x')
