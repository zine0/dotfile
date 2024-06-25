return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig["lua_ls"].setup({})
		lspconfig["clangd"].setup({})
		lspconfig["pyright"].setup({})
		lspconfig["cmake"].setup({})
        lspconfig["zls"].setup({})
        lspconfig["rust_analyzer"].setup({})
	end,
	opts = {
		inlay_hints = { enabled = true },
	},
}
