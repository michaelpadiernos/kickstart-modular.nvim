require 'bootstrap'
require 'options'
-- require 'keymaps'

require('lazy').setup({
    'tpope/vim-sleuth',

    { import = 'themes' },

    { import = 'plugins.mini' },
    { import = 'plugins.contrib' },
--     { import = 'plugins.vim' },

--     { import = 'sources' },
})
