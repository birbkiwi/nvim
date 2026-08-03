return {
  'kylechui/nvim-surround',
  version = '^4.0.0', -- Use for stability; omit to use `main` branch for the latest features
  events = 'VeryLazy',
  config = function()
    require('nvim-surround').setup {
      -- Configuration here, or leave empty to use defaults
    }
  end,
}
