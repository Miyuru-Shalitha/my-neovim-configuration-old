return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({})
            vim.cmd.colorscheme("gruvbox")
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },
    --[[{
        "tiagovla/tokyodark.nvim",
        config = function()
            require("tokyodark").setup({})
            vim.cmd.colorscheme("tokyodark")
        end,
    },]]
    --[[{
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({})
            vim.cmd.colorscheme("rose-pine")
        end
    },]]
    --[[{
         "craftzdog/solarized-osaka.nvim",
        lazy = false, 
        priority = 1000,
        opts = {},
        config = function()
            require("solarized-osaka").setup({
                vim.cmd.colorscheme("solarized-osaka"),
            })
        end
    },]]
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({})
        end,
    },
    --[[{
        "huy-hng/anyline.nvim",
        config = function()
            require('anyline').setup()
        end
    }]]
}
