vim.lsp.config("tsserver", {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "typescript", "typescriptreact" },
    root_markers = { "package.json", ".git" },

    settings = {
    },
})

vim.lsp.enable("tsserver")
