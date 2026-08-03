return {
  'nvim-neotest/neotest',
  dependencies = {
    'marilari88/neotest-vitest',
  },
  opts = {
    adapters = {
      ['neotest-vitest'] = {},
      ['easy-dotnet.neotest'] = {},
    },
  },
}
