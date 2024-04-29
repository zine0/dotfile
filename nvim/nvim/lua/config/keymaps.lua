vim.keymap.set("n", "<leader>q", "<cmd>wq<cr>")
vim.keymap.set("i", "jj", "<Esc>")
local wk = require("which-key")
wk.register({
    ["D"] = {"<Cmd>Lspsaga hover_doc<CR>", "Show Hover Doc"},
    ["<leader>"] = {
        name = "",
        ["c"] = {
            name = "CompetiTest",
            ["g"] = {
                name = "receive",
                ["p"] = {"<Cmd>CompetiTest receive problem<CR>", "Receive Problem"},
                ["c"] = {"<Cmd>CompetiTest receive contest<CR>", "Receive Contest"},
                ["t"] = {"<Cmd>CompetiTest receive testcase<CR>", "Receive Testcase"}
            },
            ["r"] = {"<Cmd>CompetiTest run<CR>", "CompetiTest run"}
        },
        ["o"] = {"<Cmd>Lspsaga outline<CR>", "Show Outline"},
        ["\\"] = {"<Cmd>Lspsaga code_action<CR>", "Show Code Action"},
        ["p"] = {"<Cmd>FormatWrite<CR>", "Format This File And Write"},
        ["w"] = {"<Cmd>w<CR>", "Save Buffer"},
        ["q"] = {"<Cmd>bd<CR>", "Close Buffer"}
    }
})
