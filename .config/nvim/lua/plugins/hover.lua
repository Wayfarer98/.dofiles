return {
	"lewis6991/hover.nvim",
	enabled = function()
		return vim.g.vscode == nil
	end,
	config = function()
		require("hover").setup {
			init = function()
				-- Require providers
				require("hover.providers.lsp")
				-- require('hover.providers.gh')
				-- require('hover.providers.gh_user')
				-- require('hover.providers.jira')
				-- require('hover.providers.man')
				-- require('hover.providers.dictionary')
			end,
			preview_opts = {
				border = 'rounded'
			},
			-- Whether the contents of a currently open hover window should be moved
			-- to a :h preview-window when pressing the hover keymap.
			preview_window = false,
			mouse_providers = {
				'LSP'
			},
			mouse_delay = 500
		}

		-- Mouse support
		vim.keymap.set('n', '<MouseMove>', require('hover').hover_mouse, { desc = "hover.nvim (mouse)" })
		vim.o.mousemoveevent = true
	end
}
