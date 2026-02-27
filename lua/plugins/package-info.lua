return {
  'vuki656/package-info.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  event = 'BufEnter package.json',
  config = function(event)
    require('package-info').setup()

    local opts = { silent = true, noremap = true, buffer = event.buf }

    local function withDesc(desc)
      return vim.tbl_extend('force', opts, { desc = desc })
    end
    require('which-key').add {
      { mode = { 'n' }, '<leader>d', group = 'dependencies', icon = '📦' },
    }

    vim.keymap.del('n', '<leader>dph', { buffer = event.buf })
    vim.keymap.del('n', '<leader>dpp', { buffer = event.buf })
    vim.keymap.del('n', '<leader>dps', { buffer = event.buf })

    vim.keymap.set('n', '<leader>dt', require('package-info').toggle, withDesc 'Toggle Dependency')
    vim.keymap.set('n', '<leader>du', require('package-info').update, withDesc 'Update Dependency')
    vim.keymap.set('n', '<leader>di', require('package-info').install, withDesc 'Install Dependency')
    vim.keymap.set('n', '<leader>dc', require('package-info').change_version, withDesc 'Change Dependency Version')
    vim.keymap.set('n', '<leader>dd', require('package-info').delete, withDesc 'Delete Dependency')
  end,
}
