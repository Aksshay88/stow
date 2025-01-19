local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add file to Harpoon" })
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu, { desc = "Open Harpoon menu" })

for i = 1, 4 do
    vim.keymap.set("n", "<leader>" .. i, function()
        ui.nav_file(i)
    end, { desc = "Navigate to Harpoon file " .. i })
end
