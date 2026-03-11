return {
    "https://github.com/nvim-treesitter/nvim-treesitter",
    branch = "main",
    init = function()
        vim.api.nvim_create_autocmd("FileType", {
            group = vim.api.nvim_create_augroup("vim-treesitter-start", { clear = true }),
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end,
}
