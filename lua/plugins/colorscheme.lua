-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false, -- load on startup so colorscheme exists when options run
        opts = {
            flavour = "mocha", -- pick latte, frappe, macchiato, mocha
            integrations = {
                cmp = true,
                gitsigns = true,
                telescope = true,
                treesitter = true,
                -- add whatever integrations you want
            },
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
