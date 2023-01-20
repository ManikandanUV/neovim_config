--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode

-- Toggle nvim-tree
map('n', '<Leader>n', [[:NvimTreeToggle<CR>]], {})

-- Toggle more plugins
map('n', '<Leader>l', [[:IndentLinesToggle]], {})
map('n', '<Leader>t', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
map('n', '<Leader>u', [[:Telescope undo]], {})
map('n', '<Leader>j', [[:ToggleTerm direction=float<CR>]], {})
map('t', 'jk', [[<C-\><C-N>]], {})

