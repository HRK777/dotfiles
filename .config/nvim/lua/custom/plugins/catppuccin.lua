return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'frappe', -- latte, frappe, macchiato, mocha
      transparent_background = false,
      -- Add other options here if you want
    }
    -- Set the colorscheme
    -- vim.cmd.colorscheme 'catppuccin-frappe'
  end,
}
