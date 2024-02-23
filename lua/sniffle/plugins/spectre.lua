return {
    {
        "nvim-pack/nvim-spectre",
        build = false,
        cmd = "Spectre",
        opts = { open_cmd = "noswapfile vnew" },
        -- stylua: ignore
        config = function()
            vim.keymap.set("n", "<leader>sr", function() require("spectre").open() end,
                { desc = "Replace in files (Spectre)" })
        end
    }
}
