return {
    'echasnovski/mini.misc',
    enabled = true,
    version = false,
    config = function()
        require('mini.misc').setup {
            -- Array of fields to make global (to be used as independent variables)
            make_global = { 'put', 'put_text' },
        }
    end,
}
