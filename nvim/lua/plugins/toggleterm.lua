return {
	"akinsho/toggleterm.nvim",
    keys = {[[<c-\>]]},
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			float_opts = {
				border = "rounded",
			},
			direction = "float",
		})
	end,
}
