return {
  'codethread/qmk.nvim',
  config = function()
    local group = vim.api.nvim_create_augroup('MyQMK', {})

    vim.api.nvim_create_autocmd('BufEnter', {
                                          -- this gets called each time you enter a buffer
      desc = 'Format banime40 keymap',
      group = group,
      pattern = '*/banime40/*/keymap.c', -- this is a pattern to match the filepath of whatever board you wish to target
      callback = function()
        require('qmk').setup({
                                    -- this calls setup with whatever config you want
          name = 'LAYOUT_ortho_4x10',
          layout = {
            'x x x x x x x x x x',
            'x x x x x x x x x x',
            'x x x x x x x x x x',
            'x x x x x x x x x x',
          },
        })
      end,
    })

    vim.api.nvim_create_autocmd('BufEnter', {
      desc = 'Format sofle keymap',
      group = group,
      pattern = '*/sofle/*/keymap.c',
      callback = function()
        require('qmk').setup({
          name = 'LAYOUT',
          layout = {
            'x x x x x x _ _ _ x x x x x x',
            'x x x x x x _ _ _ x x x x x x',
            'x x x x x x _ _ _ x x x x x x',
            'x x x x x x x _ x x x x x x x',
            '_ _ x x x x x _ x x x x x _ _',
          }
        })
      end,
    })
    -- local conf = {
    --   name = 'LAYOUT',
    --   layout = {
    --     'x x x x x x _ _ _ x x x x x x',
    --     'x x x x x x _ _ _ x x x x x x',
    --     'x x x x x x _ _ _ x x x x x x',
    --     'x x x x x x x _ x x x x x x x',
    --     '_ _ x x x x x _ x x x x x _ _',
    --   }
    -- }
    -- require('qmk').setup(conf)
  end
}
