return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- pakai versi stable
    ft = { "rust" },
    config = function()
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(_, bufnr)
            local bufmap = function(mode, lhs, rhs) vim.keymap.set(mode, lhs, rhs, { buffer = bufnr }) end
            -- shortcut buat hover, go to def, dll
            bufmap("n", "K", vim.lsp.buf.hover)
            bufmap("n", "gd", vim.lsp.buf.definition)
            bufmap("n", "<leader>ca", vim.lsp.buf.code_action)
          end,
        },
      }
    end,
  },
}
