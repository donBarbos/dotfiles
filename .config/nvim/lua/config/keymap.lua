vim.keymap.set('n', ',<leader>', ':nohlsearch<CR>', {})
vim.keymap.set('n', '<F2>', ':set nonumber!<CR>', {})

-- NeoTree
vim.keymap.set('n', '<c-n>', ':Neotree left toggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ',o', ':Neotree float reveal<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<c-g>', ':Neotree float git_status<CR>')
-- vim.keymap.set('n', '<c-f>', ':Neotree float reveal<CR>')

-- Move highlighted blocks with J and K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- TeleScope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', ',f', builtin.find_files, {})
vim.keymap.set('n', ',g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Tabs
vim.keymap.set({ 'v', 'i', 'n' }, '<c-t>', '<Esc>:tabnew<CR>', {})
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {})

-- Buffers
vim.keymap.set('n', 'gn', ':bn<CR>', {})
vim.keymap.set('n', 'gp', ':bp<CR>', {})
vim.keymap.set('n', 'gw', ':Bdelete<CR>', {})

-- Terminal
vim.keymap.set('n', ',t', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', ',<CR>', ':ToggleTerm direction=horizontal<CR>')

require("toggleterm").setup { open_mapping = [[<c-\>]] }

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
