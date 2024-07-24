vim.keymap.set("n", "<leader>q", "<cmd>wq<cr>")
vim.keymap.set("i", "jj", "<Esc>")
local wk = require("which-key")
wk.register({
	["D"] = { "<Cmd>Lspsaga hover_doc<CR>", "Show Hover Doc" },
	["<leader>"] = {
		name = "",
		["o"] = { "<Cmd>Lspsaga outline<CR>", "Show Outline" },
		["\\"] = { "<Cmd>Lspsaga code_action<CR>", "Show Code Action" },
		["w"] = { "<Cmd>w<CR>", "Save Buffer" },
		["q"] = { "<Cmd>bd<CR>", "Close Buffer" },
	},
})

vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "zz", "za")
vim.keymap.set("n", "<leader>t", "<Cmd>Neotree toggle<CR>")
