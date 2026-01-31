vim.keymap.set('x', '/', '<Esc>/\\%V', { desc = 'search from selection' })

vim.keymap.set('i', '<C-BS>', '<Esc>dbxi', { noremap = true, silent = true, desc = 'delete from cursor to beginning word' })

vim.keymap.set('v', '<Leader>p', '"0p', { desc = '[p]aste without replacing register' })

vim.keymap.set('n', '<Esc>', '<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>')

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<A-l>', 'gt', { desc = 'Move to next tab' })
vim.keymap.set('n', '<A-h>', 'gT', { desc = 'Move to previous tab' })
vim.keymap.set('n', '<tab>', ':tabnext<Return>', { noremap = true, silent = true })
vim.keymap.set('n', '<s-tab>', ':tabprev<Return>', { noremap = true, silent = true })

vim.keymap.set({ 'n', 'x' }, '<leader>fd', function()
  LazyVim.format { force = true }
end, { desc = 'Format' })

-- delete default lazy keymaps
vim.keymap.del('n', ']d')
vim.keymap.del('n', '[d')
vim.keymap.del('n', ']e')
vim.keymap.del('n', '[e')
vim.keymap.del('n', ']w')
vim.keymap.del('n', '[w')

vim.keymap.del({ 'n', 'x' }, '<leader>cf')
