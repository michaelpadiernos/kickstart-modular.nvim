return {
    'wilfreddenton/history.nvim',
    enabled = true,
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require("history").setup {
            --[[
            keybinds = {
                back = '<your custom keybind>',
                forward = '<your custom keybind>'
                view = '<your custom keybind>'
            }
            ]]
        }
    end
}
