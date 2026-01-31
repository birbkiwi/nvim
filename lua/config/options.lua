if vim.g.neovide then
  vim.g.neovide_opacity = 0.9
  vim.g.neovide_normal_opacity = 0.9
  vim.g.neovide_scale_factor = 0.8
  vim.g.neovide_fullscreen = true
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.autoformat = false

vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Enable break indent
vim.o.breakindent = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

vim.g.have_nerd_font = true

LazyVim.terminal.setup 'pwsh'
