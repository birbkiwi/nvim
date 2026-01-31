return {
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  keys = {
    {
      '<leader>,',
      '<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>',
      desc = 'Switch Buffer',
      false,
    },
    { '<leader>/', LazyVim.pick 'live_grep', desc = 'Grep (Root Dir)', false },
    { '<leader>sg', LazyVim.pick 'live_grep', desc = 'Grep (Root Dir)', false },
    { '<leader>:', '<cmd>Telescope command_history<cr>', desc = 'Command History' },
    { '<leader><space>', LazyVim.pick 'files', desc = 'Find Files (Root Dir)', false },
    -- find
    {
      '<leader>fb',
      '<cmd>Telescope buffers sort_mru=true sort_lastused=true ignore_current_buffer=true<cr>',
      desc = 'Buffers',
      false,
    },
    {
      '<leader><leader>',
      '<cmd>Telescope buffers sort_mru=true sort_lastused=true ignore_current_buffer=true<cr>',
      desc = 'Buffers',
    },
    { '<leader>fB', '<cmd>Telescope buffers<cr>', desc = 'Buffers (all)', false },
    { '<leader>fc', LazyVim.pick.config_files(), desc = 'Find Config File', false },
    { '<leader>sn', LazyVim.pick.config_files(), desc = 'Find Config File' },
    { '<leader>ff', LazyVim.pick 'files', desc = 'Find Files (Root Dir)', false },
    { '<leader>sf', LazyVim.pick 'files', desc = 'Find Files (Root Dir)' },
    { '<leader>fF', LazyVim.pick('files', { root = false }), desc = 'Find Files (cwd)', false },
    { '<leader>fg', '<cmd>Telescope git_files<cr>', desc = 'Find Files (git-files)' },
    { '<leader>fr', '<cmd>Telescope oldfiles<cr>', desc = 'Recent' },
    { '<leader>fR', LazyVim.pick('oldfiles', { cwd = vim.uv.cwd() }), desc = 'Recent (cwd)' },
    -- git
    { '<leader>gc', '<cmd>Telescope git_commits<CR>', desc = 'Commits' },
    { '<leader>gl', '<cmd>Telescope git_commits<CR>', desc = 'Commits' },
    { '<leader>gs', '<cmd>Telescope git_status<CR>', desc = 'Status' },
    { '<leader>gS', '<cmd>Telescope git_stash<cr>', desc = 'Git Stash' },
    -- search
    { '<leader>s"', '<cmd>Telescope registers<cr>', desc = 'Registers' },
    { '<leader>s/', '<cmd>Telescope search_history<cr>', desc = 'Search History' },
    { '<leader>sa', '<cmd>Telescope autocommands<cr>', desc = 'Auto Commands' },
    { '<leader>sb', '<cmd>Telescope current_buffer_fuzzy_find<cr>', desc = 'Buffer Lines' },
    { '<leader>sc', '<cmd>Telescope command_history<cr>', desc = 'Command History' },
    { '<leader>sC', '<cmd>Telescope commands<cr>', desc = 'Commands' },
    { '<leader>sd', '<cmd>Telescope diagnostics<cr>', desc = 'Diagnostics' },
    { '<leader>sD', '<cmd>Telescope diagnostics bufnr=0<cr>', desc = 'Buffer Diagnostics' },
    { '<leader>sg', LazyVim.pick 'live_grep', desc = 'Grep (Root Dir)' },
    { '<leader>sG', LazyVim.pick('live_grep', { root = false }), desc = 'Grep (cwd)' },
    { '<leader>sh', '<cmd>Telescope help_tags<cr>', desc = 'Help Pages' },
    { '<leader>sH', '<cmd>Telescope highlights<cr>', desc = 'Search Highlight Groups' },
    { '<leader>sj', '<cmd>Telescope jumplist<cr>', desc = 'Jumplist' },
    { '<leader>sk', '<cmd>Telescope keymaps<cr>', desc = 'Key Maps' },
    { '<leader>sl', '<cmd>Telescope loclist<cr>', desc = 'Location List' },
    { '<leader>sM', '<cmd>Telescope man_pages<cr>', desc = 'Man Pages' },
    { '<leader>sm', '<cmd>Telescope marks<cr>', desc = 'Jump to Mark' },
    { '<leader>so', '<cmd>Telescope vim_options<cr>', desc = 'Options' },
    { '<leader>sR', '<cmd>Telescope resume<cr>', desc = 'Resume' },
    { '<leader>sq', '<cmd>Telescope quickfix<cr>', desc = 'Quickfix List' },
    { '<leader>sw', LazyVim.pick('grep_string', { word_match = '-w' }), desc = 'Word (Root Dir)' },
    { '<leader>sW', LazyVim.pick('grep_string', { root = false, word_match = '-w' }), desc = 'Word (cwd)' },
    { '<leader>sw', LazyVim.pick 'grep_string', mode = 'x', desc = 'Selection (Root Dir)' },
    { '<leader>sW', LazyVim.pick('grep_string', { root = false }), mode = 'x', desc = 'Selection (cwd)' },
    { '<leader>uC', LazyVim.pick('colorscheme', { enable_preview = true }), desc = 'Colorscheme with Preview' },
    {
      '<leader>ss',
      function()
        require('telescope.builtin').lsp_document_symbols {
          symbols = LazyVim.config.get_kind_filter(),
        }
      end,
      desc = 'Goto Symbol',
      false,
    },
    {
      '<leader>gO',
      function()
        require('telescope.builtin').lsp_document_symbols {
          symbols = LazyVim.config.get_kind_filter(),
        }
      end,
      desc = 'Goto Symbol',
    },
    {
      '<leader>sS',
      function()
        require('telescope.builtin').lsp_dynamic_workspace_symbols {
          symbols = LazyVim.config.get_kind_filter(),
        }
      end,
      desc = 'Goto Symbol (Workspace)',
      false,
    },
    {
      '<leader>gW',
      function()
        require('telescope.builtin').lsp_dynamic_workspace_symbols {
          symbols = LazyVim.config.get_kind_filter(),
        }
      end,
      desc = 'Goto Symbol (Workspace)',
    },
  },
}
