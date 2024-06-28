return {
    'ThePrimeagen/harpoon',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
        local harpoon = require('harpoon')
        harpoon.setup {}
        local harpoon_mark = require('harpoon.mark')
        local harpoon_ui = require('harpoon.ui')
        local harpoon_term = require('harpoon.term')
        vim.keymap.set('n', '<M-a>', function() harpoon_mark.add_file() end, {})
        vim.keymap.set('n', '<M-n>', function() harpoon_ui.nav_next() end, {})
        vim.keymap.set('n', '<M-p>', function() harpoon_ui.nav_prev() end, {})
        vim.keymap.set('n', '<M-q>', function() harpoon_ui.toggle_quick_menu() end, {})
        vim.keymap.set('n', '<M-1>', function() harpoon_ui.nav_file(1) end, {})
        vim.keymap.set('n', '<M-2>', function() harpoon_ui.nav_file(2) end, {})
        vim.keymap.set('n', '<M-3>', function() harpoon_ui.nav_file(3) end, {})
        vim.keymap.set('n', '<M-4>', function() harpoon_ui.nav_file(4) end, {})
        vim.keymap.set('n', '<M-t>', function() harpoon_term.gotoTerminal(1) end, {})
    end

}
