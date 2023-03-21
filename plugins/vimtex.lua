return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_view_general_viewer = 'C:/Users/MSI/AppData/Local/SumatraPDF/SumatraPDF'
    vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
    vim.g.vimtex_view_general_options_latexmk = '-reuse-instance'
  end
}
