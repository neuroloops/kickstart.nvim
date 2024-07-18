-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save' })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { desc = 'Save' })
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- select All
vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select all' })

-- new tab
vim.keymap.set('n', 'te', ':tabedit<CR>', { desc = 'Open new tab' })
vim.keymap.set('n', '<tab>', ':tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<s-tab>', ':tabnext<CR>', { desc = 'Next tab' })
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--split window
vim.keymap.set('n', 'ss', ':split<Return>', { desc = 'split window' })
vim.keymap.set('n', 'sv', ':vsplit<Return>', { desc = 'vsplit window vertically' })

-- resize window
vim.keymap.set('n', '<C-<left>>', '<C-w><', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-w> <right>', '<C-w>>', { desc = 'Increase window width' })
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- open lazyvim
vim.keymap.set('n', '<leader>l', ':Lazy<CR>', { desc = 'Lazy' })

-- open file
vim.keymap.set('n', '<C-o>', ':Telescope find_files<CR>', { desc = 'Open file' })

-- accept codeium
vim.keymap.set('i', '<C-g>', function()
  return vim.fn['codeium#Accept']()
end, { expr = true, silent = true })
