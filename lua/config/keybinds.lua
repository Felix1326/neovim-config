vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd",vim.cmd.Ex)
--vim.keymap.set("n","<leader>mp",<cmd>MardownPreviewToggle<CR>)
-- Scroll visual lines
vim.keymap.set("n","K","gk")
vim.keymap.set("n","J","gj")
-- The same for visual mode
vim.keymap.set("v","K","gk")
vim.keymap.set("v","J","gj")
-- Scroll window 
vim.keymap.set("n","<C-j>","<C-e>")
vim.keymap.set("n",'<C-k>',"<C-y>")
-- Go to end of line without going into insert mode
vim.keymap.set("v","L","$")
vim.keymap.set("v","H","^")
vim.keymap.set("n","H","^")
vim.keymap.set("n","L","$")
-- Create new line without going into insert mode
vim.keymap.set('n', '<leader>o', 'o<Esc>', { desc = "New line below" })
vim.keymap.set('n', '<leader>O', 'O<Esc>', { desc = "New line above" })
