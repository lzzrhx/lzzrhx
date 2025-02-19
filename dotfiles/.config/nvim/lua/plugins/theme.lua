return {
  {
  'projekt0n/github-nvim-theme',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('github-theme').setup({
    })
   vim.cmd.colorscheme 'github_dark_dimmed'
  end,
  enabled = false,
  },
  {
   "neanias/everforest-nvim",
   version = false,
   lazy = false,
   priority = 1000, -- make sure to load this before all the other start plugins
   config = function()
     require("everforest").setup({
         background = "hard",
     })
     vim.cmd.colorscheme 'everforest'
   end,
   enabled = false,
  },
}
