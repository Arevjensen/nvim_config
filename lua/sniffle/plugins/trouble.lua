-- return {
--     "folke/trouble.nvim",
--     event = { "BufReadPost", "BufWritePost", "BufNewFile" },
--     cmd = { "TroubleToggle", "Trouble" },
--     opts = { use_diagnostic_signs = true },
--     config = function()
--         require("trouble").setup {
--             icons = false,
--             -- your configuration comes here
--             -- or leave it empty to use the default settings
--             -- refer to the configuration section below
--         }
--         vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end,
--             { desc = 'Toggle trouble window' })
--         vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
--         vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
--         vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
--         vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
--         vim.keymap.set("n", "<leader>xn", function()
--             if require("trouble").is_open() then
--                 require("trouble").previous({ skip_groups = true, jump = true })
--             else
--                 local ok, err = pcall(vim.cmd.cprev)
--                 if not ok then
--                     vim.notify(err, vim.log.levels.ERROR)
--                 end
--             end
--         end)
--         vim.keymap.set("n", "<leader>xp",
--             function()
--                 if require("trouble").is_open() then
--                     require("trouble").next({ skip_groups = true, jump = true })
--                 else
--                     local ok, err = pcall(vim.cmd.cnext)
--                     if not ok then
--                         vim.notify(err, vim.log.levels.ERROR)
--                     end
--                 end
--             end
--         )
--     end
-- }
return {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true },
    cmd = "Trouble",
    config = function()
        require("trouble").setup();
        vim.keymap.set("n", "<leader>xp", function()
            if require("trouble").is_open() then
                require("trouble").previous({ skip_groups = true, jump = true })
            else
                local ok, err = pcall(vim.cmd.cprev)
                if not ok then
                    vim.notify(err, vim.log.levels.ERROR)
                end
            end
        end)
        vim.keymap.set("n", "<leader>xn",
            function()
                if require("trouble").is_open() then
                    require("trouble").next({ skip_groups = true, jump = true })
                else
                    local ok, err = pcall(vim.cmd.cnext)
                    if not ok then
                        vim.notify(err, vim.log.levels.ERROR)
                    end
                end
            end
        )
    end,
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>xX",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>xs",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>xl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
            "<leader>xL",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List (Trouble)",
        },
        {
            "<leader>xQ",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)",
        },
    },
}
