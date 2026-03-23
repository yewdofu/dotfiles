vim.lsp.config("rust-analyzer", {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml", ".git" },

  settings = {
    ["rust-analyzer"] = {},
  },
})

vim.lsp.enable("rust-analyzer")

