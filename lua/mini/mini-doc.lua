return {
    'echasnovski/mini.doc',
    enabled = true,
    version = false,
    config = function()
        require('mini.doc').setup {
            -- Lua string pattern to determine if line has documentation annotation.
            -- First capture group should describe possible section id. Default value
            -- means that annotation line should:
            -- - Start with `---` at first column.
            -- - Any non-whitespace after `---` will be treated as new section id.
            -- - Single whitespace at the start of main text will be ignored.
            annotation_pattern = '^%-%-%-(%S*) ?',

            -- Identifier of block annotation lines until first captured identifier
            default_section_id = '@text',

            -- Hooks to be applied at certain stage of document life cycle. Should
            -- modify its input in place (and not return new one).
            hooks = {
                -- Applied to block before anything else
--                 block_pre = --<function: infers header sections (tag and/or signature)>,

                -- Applied to section before anything else
--                 section_pre = --<function: replaces current aliases>,

                -- Applied if section has specified captured id
                sections = {
--                     ['@alias'] = --<function: registers alias in MiniDoc.current.aliases>,
--                     ['@class'] = --<function>,
                    -- For most typical usage see |MiniDoc.afterlines_to_code|
--                     ['@eval'] = --<function: evaluates lines; replaces with their return>,
--                     ['@field'] = --<function>,
--                     ['@param'] = --<function>,
--                     ['@private'] = --<function: registers block for removal>,
--                     ['@return'] = --<function>,
--                     ['@seealso'] = --<function>,
--                     ['@signature'] = --<function: formats signature of documented object>,
--                     ['@tag'] = --<function: turns its line in proper tag lines>,
--                     ['@text'] = --<function: purposefully does nothing>,
--                     ['@type'] = --<function>,
--                     ['@usage'] = --<function>,
                },

                -- Applied to section after all previous steps
--                 section_post = --<function: currently does nothing>,

                -- Applied to block after all previous steps
--                 block_post = --<function: does many things>,

                -- Applied to file after all previous steps
--                 file = --<function: adds separator>,

                -- Applied to doc after all previous steps
--                 doc = --<function: adds modeline>,

                -- Applied before output file is written. Takes lines array as argument.
--                 write_pre = --<function: currently returns its input>,

                -- Applied after output help file is written. Takes doc as argument.
--                 write_post = --<function: various convenience actions>,
            },

            -- Path (relative to current directory) to script which handles project
            -- specific help file generation (like custom input files, hooks, etc.).
            script_path = 'scripts/minidoc.lua',

            -- Whether to disable showing non-error feedback
            silent = false,
        }
    end,
}
