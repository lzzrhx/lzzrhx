return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = vim.g.enable_nerd_font,
        theme = "seoul256",
        component_separators = { left = '|', right = '|'},
        section_separators = '',
        always_show_table = true,
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics', { "filename", file_status = true, path = 3, } },
        lualine_c = {},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {'filename'},
        lualine_c = {},
        lualine_x = {'progress', 'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {
        lualine_a = { { 'tabs', mode = 3, path = 0, max_length = vim.o.columns, }, },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
    })
  end,
}
