local vim=vim
local Plug = vim.fn['plug#']

--Various configs
vim.wo.number = true --See absolute line cursor is on
vim.wo.relativenumber = true --See line distance away from cursor
vim.o.clipboard = "unnamedplus"

--Keybinds
-- Swap j and k
vim.keymap.set({'n', 'v', 'o'}, 'j', 'k', {noremap = true})
vim.keymap.set({'n', 'v', 'o'}, 'k', 'j', {noremap = true})


--Plugin Setup
vim.call('plug#begin')

--List Plugins here
	Plug 'm4xshen/autoclose.nvim'
	
vim.call('plug#end')

--Plugin Config
require("autoclose").setup({
   keys = {
      ["("] = { escape = false, close = true, pair = "()" },
      ["["] = { escape = false, close = true, pair = "[]" },
      ["{"] = { escape = false, close = true, pair = "{}" },

      [">"] = { escape = true, close = false, pair = "<>" },
      [")"] = { escape = true, close = false, pair = "()" },
      ["]"] = { escape = true, close = false, pair = "[]" },
      ["}"] = { escape = true, close = false, pair = "{}" },

      ['"'] = { escape = true, close = true, pair = '""' },
      ["'"] = { escape = true, close = true, pair = "''" },
      ["`"] = { escape = true, close = true, pair = "``" },
   },
      options = {
      disabled_filetypes = { "text" },
      disable_when_touch = false,
      touch_regex = "[%w(%[{]",
      pair_spaces = false,
      auto_indent = true,
      disable_command_mode = false,
   },
})

--LUA ROCKS
	
