return {
    'echasnovski/mini.map',
    enabled = true,
    version = false,
    config = function()
        require('mini.map').setup {
            -- Highlight integrations (none by default)
            integrations = nil,

            -- Symbols used to display data
            symbols = {
                -- Encode symbols. See `:h MiniMap.config` for specification and
                -- `:h MiniMap.gen_encode_symbols` for pre-built ones.
                -- Default: solid blocks with 3x2 resolution.
                encode = default,

                -- Scrollbar parts for view and line. Use empty string to disable any.
                scroll_line = '█',
                scroll_view = '┃',
            },

            -- Window options
            window = {
                -- Whether window is focusable in normal way (with `wincmd` or mouse)
                focusable = true,

                -- Side to stick ('left' or 'right')
                side = 'right',

                -- Whether to show count of multiple integration highlights
                show_integration_count = true,

                -- Total width
                width = 20,

                -- Value of 'winblend' option
                winblend = 25,

                -- Z-index
                zindex = 10,

                vim.api.nvim_create_autocmd ('vimEnter', {
                    pattern = '*.*',
                    command = ':lua MiniMap.open()',
                })
            },
        }
    end,
}
