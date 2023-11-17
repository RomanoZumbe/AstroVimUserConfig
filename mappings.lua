-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>lf"] = { "<cmd>lua vim.lsp.buf.formatting()<CR>", desc = "Format Buffer" },
    ["gf"] = { "<cmd>Lspsaga finder<CR>", desc = "Find references" }, -- show definition, references
    ["ga"] = { "<cmd>Lspsaga incoming_calls<cr>", desc = "Incommin calls" },
    ["go"] = { "<cmd>Lspsaga outline<cr>", desc = "Show outline" },
    ["K"] = { "<cmd>Lspsaga hover_doc<CR>", desc = "LSP Description" },
    ["<leader>k"] = { "<cmd>%s/\\(.*\\)\\n/('\\1'),\\r/<cr>dd$xggVGy" },
    ["[e"] = {
      function() require("lspsaga.diagnostic"):goto_prev { severity = vim.diagnostic.severity.ERROR } end,
      silent = true,
      desc = "Jump to previous error",
    },
    ["]e"] = {
      function() require("lspsaga.diagnostic"):goto_next { severity = vim.diagnostic.severity.ERROR } end,
      silent = true,
      desc = "Jump to next error",
    },
    ["<leader>lt"] = { "<cmd>TagbarToggle<CR>", silent = true, desc = "Toggle Tagbar" },
    ["<Tab>"] = { ":bnext <CR>", silent = true, desc = "Next Buffer" },
    ["<S-Tab>"] = { ":bprevious <CR>", silent = true, desc = "Previous Buffer" },
    ["<A-j>"] = { ":m+<CR>", silent = true, desc = "Move line down" },
    ["<A-k>"] = { ":m-2<CR>", silent = true, desc = "Move line up" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
