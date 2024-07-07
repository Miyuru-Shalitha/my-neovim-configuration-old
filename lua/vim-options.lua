vim.g.mapleader = " "

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.scrolloff = 10
vim.opt.clipboard = 'unnamedplus'
--[[vim.opt.guicursor =
'n-v-c-i:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175']]
vim.opt.guicursor =
'n-v-c-i:block,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor'

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function()
        vim.opt.number = false
    end
})
