return {
  {
    'lervag/vimtex',
    config = function()
      vim.g.tex_flavor='latex'
      vim.g.vimtex_quickfix_mode=0
      vim.g.vimtex_syntax_conceal_disable=1
      vim.g.vimtex_view_general_viewer='okular'
      vim.g.vimtex_compiler_latexmk = { aux_dir = ".aux" }
    end
  },
}
