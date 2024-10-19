return {
    'echasnovski/mini.hipatterns',
    enabled = true,
    version = false,
    config = function()
        require('mini.hipatterns').setup {
            -- Table with highlighters (see |MiniHipatterns.config| for more details).
            -- Nothing is defined by default. Add manually for visible effect.
            highlighters = {},

            -- Delays (in ms) defining asynchronous highlighting process
            delay = {
                -- How much to wait for update after every text change
                text_change = 200,

                -- How much to wait for update after window scroll
                scroll = 50,
            },
        }
    end,
}
