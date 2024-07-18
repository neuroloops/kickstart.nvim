local keymap = vim.keymap
local g = vim.g
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)

g.mapleader = ' '
g.maplocalleader = ' '

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save' })
keymap.set('i', '<C-s>', '<Esc>:w<CR>', { desc = 'Save' })
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- increase/decrease numbers
keymap.set('n', '+', '<C-a>', { desc = 'Increase number' })
keymap.set('n', '-', '<C-x>', { desc = 'Decrease number' })

-- select All
keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select all' })

-- new tab
keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'Open new tab' })
keymap.set('n', '<leader>tc', ':tabclose<CR>', { desc = 'Close tab' })
keymap.set('n', '<tab>', ':tabnext<CR>', { desc = 'Next tab' })
keymap.set('n', '<s-tab>', ':tabnext<CR>', { desc = 'Next tab' })
-- Keybinds to make split navigation easier.

--split window
keymap.set('n', 'sh', ':split<Return>', { desc = 'Split window horizontally' })
keymap.set('n', 'sv', ':vsplit<Return>', { desc = 'Split window vertically' })

-- resize window
keymap.set('n', '<leader><left>', '<C-w><', { desc = 'Decrease window width' })
keymap.set('n', '<leader><right>', '<C-w>>', { desc = 'Increase window width' })
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' })

--  See `:help wincmd` for a list of all window commands
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- open lazyvim
keymap.set('n', '<leader>l', ':Lazy<CR>', { desc = 'Lazy' })

-- open file
keymap.set('n', '<C-o>', ':Telescope find_files<CR>', { desc = 'Open file' })

-- accept codeium
keymap.set('i', '<C-g>', function()
  return vim.fn['codeium#Accept']()
end, { expr = true, silent = true })
