-- [[ plug.lua ]]

return require('packer').startup({function(use)
  -- [[ Plugins Go Here ]]
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }
  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'},
    {'debugloop/telescope-undo.nvim'},
    { 'nvim-telescope/telescope-file-browser.nvim'}
  }}
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,}
  use {
        "max397574/better-escape.nvim",
        config = function()
        require("better_escape").setup()
        end,}
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
        end}

end,
config = {
  package_root = vim.fn.stdpath('config') .. '/site/pack'
}})
