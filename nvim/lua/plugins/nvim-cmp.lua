return {
	"hrsh7th/nvim-cmp",
    event = "InsertEnter",
	opts = function(_, opts)
		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "vsnip" },
			}),
			formatting = {
				format = require("lspkind").cmp_format({
					with_text = true,
					maxwidth = 50, -- do not show text alongside icons
					before = function(entry, vim_item)
						vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
						return vim_item
					end,
				}),
			},
		})

		return {
			view = {
				entries = { name = "custom", selection_order = "near_cursor" },
			},
			completion = {
				completeopt = "menu,menuone,preview,noinsert",
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
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
