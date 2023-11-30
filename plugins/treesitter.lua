return {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
        require("nvim-treesitter.configs").setup({
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>",
                    node_incremental = "<Tab>",
                    scope_incremental = "<C-Tab>",
                    node_decremental = "<S-Tab>"
                }
            },
            textsubjects = {
                enable = true,
                prev_selection = ',', -- (Optional) keymap to select the previous selection
                keymaps = {
                    ['.'] = 'textsubjects-smart',
                    [';'] = 'textsubjects-container-outer',
                    ['i;'] = 'textsubjects-container-inner'
                }
            }
        })
    end
}
