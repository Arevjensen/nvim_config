return {
    'akinsho/toggleterm.nvim',
    event = 'VeryLazy',
    config = function()
        require("toggleterm").setup()
        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
        vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
        -- vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-W>h]])
        -- vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-W>j]])
        -- vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-W>k]])
        -- vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-W>l]])

        vim.keymap.set("n", "<leader>ts", "<cmd>ToggleTerm size=20 direction=horizontal<cr>")
        vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=100 direction=vertical<cr>")
        vim.keymap.set("n", "<leader>tl", "<C-w>v<C-w>l<Cmd>terminal<CR>i")
        vim.keymap.set("n", "<leader>tj", "<C-w>s<C-w>j<Cmd>terminal<CR>i")
    end
}
