vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.numberwidth = 4
-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.cmd([[colorscheme tokyonight]])
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.opt.termguicolors = true
vim.o.scrolloff = 999
vim.opt.colorcolumn = "80"
-- This module contains a number of default definitions
local rainbow_delimiters = require("rainbow-delimiters")

vim.g.rainbow_delimiters = {
    strategy = {
        [""] = rainbow_delimiters.strategy["global"],
        vim = rainbow_delimiters.strategy["local"]
    },
    query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-blocks"
    },
    priority = {
        [""] = 110,
        lua = 210
    },
    highlight = {"RainbowDelimiterRed", "RainbowDelimiterYellow", "RainbowDelimiterBlue", "RainbowDelimiterOrange",
                 "RainbowDelimiterGreen", "RainbowDelimiterViolet", "RainbowDelimiterCyan"}
}

local ignore_filetypes = { 'neo-tree','CompetiTest' }
local ignore_buftypes = { 'nofile', 'prompt', 'popup' }

local augroup =
    vim.api.nvim_create_augroup('FocusDisable', { clear = true })

vim.api.nvim_create_autocmd('WinEnter', {
    group = augroup,
    callback = function(_)
        if vim.tbl_contains(ignore_buftypes, vim.bo.buftype)
        then
            vim.w.focus_disable = true
        else
            vim.w.focus_disable = false
        end
    end,
    desc = 'Disable focus autoresize for BufType',
})

vim.api.nvim_create_autocmd('FileType', {
    group = augroup,
    callback = function(_)
        if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
            vim.b.focus_disable = true
        else
            vim.b.focus_disable = false
        end
    end,
    desc = 'Disable focus autoresize for FileType',
})
