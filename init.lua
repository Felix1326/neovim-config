require('config.options')
require('config.keybinds')
vim.g.vimtex_view_method = "zathura"
require('config.lazy')
local ls = require("luasnip")
-- Expand snippet or jump to the next placeholder (<Tab> or <C-k>)
vim.keymap.set({ "i", "s" }, "<C-L>", function()
  if ls.locally_jumpable(1) then
    ls.jump(1)
  end
end, { silent = true })

-- Jump backward (<C-h>)
vim.keymap.set({ "i", "s" }, "<C-H>", function()
  if ls.locally_jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })
