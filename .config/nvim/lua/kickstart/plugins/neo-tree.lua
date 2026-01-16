-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	'nvim-neo-tree/neo-tree.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
		'MunifTanjim/nui.nvim',
	},
	lazy = false,
	keys = {
		{ '<leader><tab>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
	},
	opts = {
		close_if_last_window = false,
		popup_border_style = 'rounded',
		enable_git_status = true,
		enable_diagnostrics = true,
		window = {
			position = 'float',
			width = 40,
		},
		filesystem = {
			window = {
				mappings = {
					['<leader><tab>'] = 'close_window',
				},
			},
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
			},
			follow_current_file = {
				enabled = true,
			},
		},
	},
}
