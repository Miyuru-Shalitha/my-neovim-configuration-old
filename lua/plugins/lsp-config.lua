return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver" },
                --[[ensure_installed = { "lua_ls", "tsserver", "clangd", "cmake", "zls", "gopls", "ols" },]]
            })

            local capabilities = require('cmp_nvim_lsp').default_capabilities();

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })
--[[
            lspconfig.clangd.setup({
                cmd = { "clangd", "--compile-commands-dir=build/debug" },
                capabilities = capabilities
            })
            lspconfig.cmake.setup({
                capabilities = capabilities
            })
            lspconfig.zls.setup({
                capabilities = capabilities
            })
            lspconfig.gopls.setup({
                capabilities = capabilities
            })
            lspconfig.ols.setup({
                capabilities = capabilities
            })
]]
            lspconfig.astro.setup({
                capabilities = capabilities
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "gt", vim.lsp.buf.type_definition)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
            vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

            vim.diagnostic.config({
                virtual_text = false
            })
            vim.keymap.set("n", "W", function() vim.diagnostic.open_float(nil, { focus = false }) end)
        end,
    },
}
