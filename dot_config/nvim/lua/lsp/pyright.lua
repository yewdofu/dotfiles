vim.lsp.config("pyright", {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", ".venv", ".git" },

    settings = {
      ["pyright"] = {},
    },
})

vim.lsp.enable("pyright")
