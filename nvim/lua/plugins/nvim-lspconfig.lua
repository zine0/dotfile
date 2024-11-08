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
		lspconfig["dockerls"].setup({})
        lspconfig["cssls"].setup({})
		lspconfig["docker_compose_language_service"].setup({})
		--Enable (broadcasting) snippet capability for completion
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true
		lspconfig.html.setup({
			cmd = { "vscode-html-language-server", "--stdio" },
			filetype = { "html", "templ" },
			capabilities = capabilities,
			init_options = {
				{
					configurationSection = { "html", "css", "javascript" },
					embeddedLanguages = {
						css = true,
						javascript = true,
					},
					provideFormatter = true,
				},
			},
		})
	end,
	opts = {
		inlay_hints = { enabled = true },
	},
}
