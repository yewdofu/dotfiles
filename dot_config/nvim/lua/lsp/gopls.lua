vim.lsp.config("gopls", {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_markers = { "go.work", "go.mod", ".git" },

  settings = {
    gopls = {
      staticcheck = true,
      gofumpt = true,
    },
  },
})

vim.lsp.enable("gopls")
