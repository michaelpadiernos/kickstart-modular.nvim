return {
  'mikew/nvim-drawer',
  opts = {},
  config = function(_, opts)
    local drawer = require('nvim-drawer')
    drawer.setup(opts)

    drawer.create_drawer({
      -- This is needed for nvim-tree.
      nvim_tree_hack = true,

      -- Position on the right size of the screen.
      position = 'left',
      size = 50,

      -- Alternatively, you can have it floating.
      -- size = 40,
      -- position = 'float',
      -- win_config = {
      --   margin = 2,
      --   border = 'rounded',
      --   anchor = 'CE',
      --   width = 40,
      --   height = '80%',
      -- },

      on_vim_enter = function(event)
        --- Open the drawer on startup.
        event.instance.open({
          focus = false,
        })

        --- Example mapping to toggle.
        vim.keymap.set('n', '<leader>e', function()
          event.instance.focus_or_toggle()
        end)
      end,

      --- Ideally, we would just call this here and be done with it, but
      --- mappings in nvim-tree don't seem to apply when re-using a buffer in
      --- a new tab / window.
      on_did_create_buffer = function()
        local nvim_tree_api = require('nvim-tree.api')
        nvim_tree_api.tree.open({ current_window = true })
      end,

      --- This gets the tree to sync when changing tabs.
      on_did_open = function()
        local nvim_tree_api = require('nvim-tree.api')
        nvim_tree_api.tree.reload()

        vim.opt_local.number = false
        vim.opt_local.signcolumn = 'no'
        vim.opt_local.statuscolumn = ''
      end,

      --- Cleans up some things when closing the drawer.
      on_did_close = function()
        local nvim_tree_api = require('nvim-tree.api')
        nvim_tree_api.tree.close()
      end,
    })
  end
}
