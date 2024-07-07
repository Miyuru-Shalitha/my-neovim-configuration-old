return {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim',     -- optional for vim.ui.select
    },
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require("flutter-tools").setup({
            capabilities = capabilities,
            lsp = {
                color = {
                    enabled = true,
                    background = true,
                    background_color = nil,
                    foreground = false,
                    virtual_text = true,
                    --virtual_text_str = "■"
                }
            },
        });
    end
}
