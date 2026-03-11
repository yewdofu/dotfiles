return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
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

