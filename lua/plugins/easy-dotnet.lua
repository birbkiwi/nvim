return {
  'GustavEikaas/easy-dotnet.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'folke/snacks.nvim' },
  opts = {
    test_runner = {
      neotest_integration = true,
    },
  },
}
