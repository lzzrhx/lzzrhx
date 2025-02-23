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
        always_show_tabline = true,
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics', { "filename", file_status = true, path = 3, } },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_b = {'filename'},
        lualine_x = {'progress', 'location'},
      },
      tabline = {
        lualine_b = { { 'tabs', mode = 3, path = 0, max_length = vim.o.columns  } },
      },
    })
  end,
}
