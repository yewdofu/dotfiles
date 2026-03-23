vim.lsp.config("zls", {
  cmd = { "zls" },
  filetypes = { "zig" },
  root_markers = { "build.zig", ".git" },

  settings = {
    ["zls"] = {},
  },
})

vim.lsp.enable("zls")

