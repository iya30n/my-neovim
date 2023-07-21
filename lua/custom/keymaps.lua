local options = { noremap = true }
local keymap = vim.keymap

keymap.set("i", "kj", "<Esc>", options)
keymap.set("n", ";w", ":w<CR>")
keymap.set("n", ";q", ":q<CR>")
keymap.set("n", ";wq", ":wq<CR>")

keymap.set("n", "<leader>f", ":Format<CR>")

-- prevent to save in clipboard the cuted words using x in normal mode
keymap.set("n", "x", '"_x')


-- window control keymaps
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab

-- NOTE: use <leader>gt instead
-- keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>gp", ":tabp<CR>") -- go to previous tab
