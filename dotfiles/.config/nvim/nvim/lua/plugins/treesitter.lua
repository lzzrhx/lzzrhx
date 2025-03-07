return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    dependencies = {
      {
        'andymass/vim-matchup',
        config = function()
          vim.g.matchup_motion_enabled = 0
          vim.g.matchup_text_obj_enabled = 0
          vim.g.matchup_matchparen_deferred = 1
          vim.g.matchup_matchparen_hi_surround_always = 1
        end
      },
    },
    opts = {
      ensure_installed = { 'c', 'cpp', 'c_sharp', 'python', 'latex', 'bash', 'diff', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
      matchup = { enable = true },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
