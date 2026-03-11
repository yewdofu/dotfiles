return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    config = function()
        require('telescope').setup({
            defaults = {
                find_command = { "rg", "--files", "--hidden", "--no-ignore", "--no-ignore-vcs" },
            },
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "--no-ignore", "--no-ignore-vcs" },
                },
            }
        })
    end,
}

