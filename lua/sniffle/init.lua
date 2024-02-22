require("sniffle.remap")
require("sniffle.lazy")
require("sniffle.set")
require("sniffle.netrw")

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    group = highlight_group,
    callback = function()
        vim.highlight.on_yank()
    end,
})
