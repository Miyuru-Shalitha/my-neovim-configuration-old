return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({})
            vim.cmd.colorscheme("gruvbox")
        end,
    },
    --[[{
        "tiagovla/tokyodark.nvim",
        config = function()
            require("tokyodark").setup({})
            vim.cmd.colorscheme("tokyodark")
        end,
    },]]
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({})
        end,
    },
    {
        "huy-hng/anyline.nvim",
        config = function()
            require('anyline').setup()
        end
    }
}
