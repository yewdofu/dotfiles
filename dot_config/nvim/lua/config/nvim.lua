local opt = vim.opt

vim.env.LANG = "C"

opt.mouse = 'a'
opt.title = false 
opt.ambiwidth = 'double'

opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.hidden = true

opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.showmatch = true
opt.expandtab =  true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.ruler = false

opt.ignorecase = true
opt.smartcase = true

opt.wrapscan = true

opt.termguicolors = true
opt.background = 'dark'

vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
        ['+'] = 'xsel -bi',
        ['*'] = 'xsel -bi',
    },
    paste = {
        ['+'] = 'xsel -bo',
        ['*'] = function() return vim.fn.systemlist('xsel -bo | tr -d "\r"') end,
    },
    cache_enabled = 1,
}

vim.schedule(function()
    -- vim.cmd("colorscheme base")
    -- vim.cmd("colorscheme tokyonight-night")
    -- vim.cmd("colorscheme gruvbox")
    vim.cmd("colorscheme nightfox")
end)
