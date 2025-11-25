return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local nvimtree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            view = {
                width = 30,
                signcolumn = "yes",
            },
            renderer = {
                indent_markers = {
                    enable = true,
                },
            },
            -- Add this section to enable window separator
            -- ui = {
            --     border = "single",
            -- },
        })

        vim.keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<CR>")

        -- Add this to ensure the separator line is visible
        vim.cmd([[
            hi NvimTreeWinSeparator guifg=#3b4261
        ]])
    end,
}
