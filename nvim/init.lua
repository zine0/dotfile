if not vim.g.vscode then
    vim.g.mapleader = " "
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
                       "--branch=stable", -- latest stable release
        lazypath})
    end
    vim.opt.rtp:prepend(lazypath)
    require("lazy").setup("plugins")
    require("config")
else
    vim.g.mapleader = " "
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    vim.opt.rtp:prepend(lazypath)
    require("lazy").setup("vsplug")
    require("config")
end
