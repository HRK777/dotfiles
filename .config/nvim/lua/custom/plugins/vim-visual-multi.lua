return {
	'mg979/vim-visual-multi',
	branch = 'master',
	config = function()
		-- Set the default mapping to use gb for adding cursors
		vim.g.VM_maps = {
			['Find Under'] = 'gb', -- Add cursor on word under cursor
			['Find Subword Under'] = 'gb',
		}

		-- Optional: customize other mappings
		vim.g.VM_maps['Skip Region'] = 'q' -- Skip current and move to next
		vim.g.VM_maps['Remove Region'] = 'Q' -- Remove current cursor

		-- Optional: disable default mappings you don't want
		vim.g.VM_default_mappings = 0

		-- Enable the core mappings you want
		vim.g.VM_maps['Find Under'] = 'gb'
		vim.g.VM_maps['Find Subword Under'] = 'gb'
	end,
}
