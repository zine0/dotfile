return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				lua = { require("formatter.filetypes.lua").stylua },
				cpp = function()
					return {
						exe = "clang-format",
						args = {
							"-assume-filename=",
							vim.api.nvim_buf_get_name(0),
							'-style="{\
                            BasedOnStyle: microsoft,\
                            IndentWidth: 4,\
                            AllowAllParametersOfDeclarationOnNextLine: true,\
                            AllowShortIfStatementsOnASingleLine: WithoutElse,\
                            }"',
						},
						stdin = true,
					}
				end,
				python = { require("formatter.filetypes.python").autopep8 },
			},
		})
	end,
}
