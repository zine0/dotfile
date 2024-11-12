return {
	"hrsh7th/nvim-cmp",
	event = "VimEnter",
	opts = function(_, opts)
		local cmp = require("cmp")
		-- `:` cmdline setup.
		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			sources = cmp.config.sources({
				{ name = "luasnip" },
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "vsnip" },
			}),
			-- formatting = {
			-- 	format = require("lspkind").cmp_format({
			-- 		with_text = true,
			-- 		maxwidth = 50, -- do not show text alongside icons
			-- 		before = function(entry, vim_item)
			-- 			vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
			-- 			return vim_item
			-- 		end,
			-- 	}),
			-- },
		})

		cmp.setup.cmdline(":", {
			mapping = {
				["<Tab>"] = cmp.mapping.confirm({ select = false }),
				["<C-e>"] = cmp.mapping.abort(),
				["<Down>"] = cmp.mapping.select_next_item(),
				["<Up>"] = cmp.mapping.select_prev_item(),
			},
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
			matching = { disallow_symbol_nonprefix_matching = false },
		})

		require("luasnip.loaders.from_vscode").lazy_load()
		return {
			view = {
				entries = { name = "custom", selection_order = "near_cursor" },
			},
			completion = {
				completeopt = "menu,menuone,preview,noinsert",
			},
			sources = cmp.config.sources({
				{ name = "luasnip" },
				{ name = "nvim_lsp" },
				{ name = "path" },
				{ name = "buffer" },
				{ name = "vsnip" },
			}),
			mapping = {
				["<Tab>"] = cmp.mapping.confirm({ select = false }),
				["<C-e>"] = cmp.mapping.abort(),
				["<Down>"] = cmp.mapping.select_next_item(),
				["<Up>"] = cmp.mapping.select_prev_item(),
			},
		}
	end,
}
