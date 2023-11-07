return {
  "glepnir/lspsaga.nvim",
  lazy = false,
  config = function()
    require("lspsaga").init_lsp_saga({
      -- keybinds for navigation in lspsaga window
      move = { prev = "<C-p>", next = "<C-n>" },
      -- use enter to open file with finder
      finder = {
        open = "<CR>",
      },
      -- use enter to open file with definition preview
      definition = {
        edit = "<CR>",
        quit = "q",
      },
      ui = {
        -- currently only round theme
        theme = "round",
        -- this option only work in neovim 0.9
        title = false,
        -- border type can be single,double,rounded,solid,shadow.
        border = "single",
        winblend = 0,
        expand = "",
        collapse = "",
        preview = " ",
        code_action = "💡",
        diagnostic = "🐞",
        incoming = " ",
        outgoing = " ",
        colors = {
          --float window normal background color
          normal_bg = "#1c1c19",
          --title background color
          title_bg = "#afd700",
          red = "#e95678",
          magenta = "#b33076",
          orange = "#FF8700",
          yellow = "#f7bb3b",
          green = "#afd700",
          cyan = "#36d0e0",
          blue = "#61afef",
          purple = "#CBA6F7",
          white = "#d1d4cf",
          black = "#1c1c19",
        },
        kind = {},
      },
    })
  end
}
