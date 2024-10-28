local harpoon = require("harpoon")
harpoon:setup{ settings = { save_on_toggle = true } }

map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list(), {title = " Harpoon ", title_pos = "left", border = "rounded"}) end)

map("n", "<LEADER>a", function() harpoon:list():add() end)
map("n", "<LEADER>z", function() harpoon:list():remove() end)
map("n", "<C-z>", function() harpoon:list():clear() end)

map("n", "<C-g>", function() harpoon:list():select(1) end)
map("n", "<C-h>", function() harpoon:list():select(2) end)
map("n", "<C-y>", function() harpoon:list():select(3) end)
map("n", "<C-l>", function() harpoon:list():select(4) end)
