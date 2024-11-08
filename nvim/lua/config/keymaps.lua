local keymap = vim.keymap.set

local opt = { noremap = true, silent = true }


keymap("n", "<leader>q", "<cmd>wq<cr>", opt)
keymap("i", "jj", "<Esc>", opt)

keymap("n", "<leader>D", ":Lspsaga hover_doc<CR>", { noremap = true, silent = true })
keymap("n", "<leader>o", ":Lspsaga outline<CR>", { noremap = true, silent = true })
keymap("n", "<leader>\\", ":Lspsaga code_action<CR>", { noremap = true, silent = true })
keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
keymap("n", "<leader>q", ":bd<CR>", { noremap = true, silent = true })

keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })

local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, {})
keymap("n", "<leader>fg", builtin.live_grep, {})
keymap("n", "<leader>fb", builtin.buffers, {})
keymap("n", "<leader>fh", builtin.help_tags, {})

keymap("v", "J", ":m '>+1<CR>gv=gv", opt)
keymap("v", "K", ":m '<-2<CR>gv=gv", opt)

keymap("n", "zz", "za", opt)

keymap("n", "<leader>tt", "<Cmd>Neotree toggle<CR>", opt)

keymap("n","<leader>nt","<Cmd>tabnew<CR>",opt)
keymap("n","<leader>nd","<Cmd>tabclose<CR>",opt)
