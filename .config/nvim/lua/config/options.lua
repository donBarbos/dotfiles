---@diagnostic disable: undefined-global
--
vim.opt.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'

vim.opt.clipboard = 'unnamedplus'

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.nu = true
vim.opt.relativenumber = true

-- vim-sleugh is tracking these options
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ai = true
vim.opt.cc = '119'

vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.mouse = 'ar'
vim.opt.mousefocus = true
vim.opt.background = 'dark'

vim.opt.ignorecase = true
vim.opt.laststatus = 2
vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.hidden = true

vim.g.have_nerd_font = true

vim.opt.showmode = false

vim.opt.swapfile = false

vim.opt.timeoutlen = 200

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.shell = "/bin/zsh"

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Fillchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

vim.opt.completeopt = 'menuone,noselect'
