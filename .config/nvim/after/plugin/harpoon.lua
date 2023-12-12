if vim.g.vscode == false then

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-s>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-i>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-o>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-p>", function() ui.nav_file(3) end)

vim.keymap.set("n", "<Tab>", ui.nav_next)
vim.keymap.set("n", "<S-Tab>", ui.nav_prev)

else
end
