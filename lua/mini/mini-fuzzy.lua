return {
    'echasnovski/mini.fuzzy',
    enabled = true,
    version = false,
    config = function()
        require('mini.fuzzy').setup {
            -- Maximum allowed value of match features (width and first match). All
            -- feature values greater than cutoff can be considered "equally bad".
            cutoff = 100,
        }
    end,
}
