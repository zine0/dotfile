return {{"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig["lua_ls"].setup({})
		lspconfig["clangd"].setup({})
		lspconfig["pyright"].setup({})
        lspconfig["cmake"].setup({})
	end
}}
