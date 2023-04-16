return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_view_method = 'zathura'
    -- vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
    -- vim.g.vimtex_view_general_viewer = 'zathura'
    -- vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
    -- vim.g.vimtex_view_general_options_latexmk = '-reuse-instance'
  end
}
