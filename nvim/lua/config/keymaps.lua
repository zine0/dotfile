local keymap = vim.keymap.set

local opt = { noremap = true, silent = true }
keymap("n", "<leader>q", "<cmd>q<cr>", opt)

keymap("n", "<leader>D", ":Lspsaga hover_doc<CR>", { noremap = true, silent = true })
keymap("n", "<leader>o", ":Lspsaga outline<CR>", { noremap = true, silent = true })
keymap("n", "<leader>\\", ":Lspsaga code_action<CR>", { noremap = true, silent = true })
keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
keymap("n", "<leader>q", ":bd<CR>", { noremap = true, silent = true })

local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, {})
keymap("n", "<leader>fg", builtin.live_grep, {})
keymap("n", "<leader>fb", builtin.buffers, {})
keymap("n", "<leader>fh", builtin.help_tags, {})

keymap("v", "J", ":m '>+1<CR>gv=gv", opt)
keymap("v", "K", ":m '<-2<CR>gv=gv", opt)

keymap("n", "zz", "za", opt)

keymap("n", "<leader>tt", "<Cmd>Neotree toggle<CR>", opt)

keymap("n", "<leader>tn", "<Cmd>tabnew<CR>", opt)
keymap("n", "<leader>tc", "<Cmd>tabclose<CR>", opt)
keymap("n", "<leader>t[", "<Cmd>tabp<CR>", opt)
keymap("n", "<leader>t]", "<Cmd>tabn<CR>", opt)
keymap("n", "<leader>tj", "<Cmd>Tabby jump_to_tab<CR>", opt)

for i = 1, 9, 1 do
	keymap("n", "<leader>"..i, i.."gt<CR>", opt)
end

-- keymap({"n","i","v"},"<C-j>","<Down>",opt)
-- keymap({"n","i","v"},"<C-k>","<Up>",opt)

