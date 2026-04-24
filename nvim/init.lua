local vim=vim
local Plug = vim.fn['plug#']

--Various configs
vim.wo.number = true --See absolute line cursor is on
vim.wo.relativenumber = true --See line distance away from cursor

vim.o.clipboard = "unnamedplus" --ties "yank" commands to the system keyboard

vim.api.nvim_set_hl(0, "Normal", { bg = "none"}) --To match kitty theme
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) --To match kitty theme



--Keybinds
-- Swap j and k
vim.keymap.set({'n', 'v', 'o'}, 'j', 'k', {noremap = true})
vim.keymap.set({'n', 'v', 'o'}, 'k', 'j', {noremap = true})


--Plugin Setup
vim.call('plug#begin')

--List Plugins here
	Plug 'm4xshen/autoclose.nvim' -- [ = []
	Plug 'nvim-treesitter/nvim-treesitter'
	
vim.call('plug#end')

--Plugin Config
require("autoclose").setup({ --for autoclose
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

require ("nvim-treesitter.config").setup({
	 auto_install = true,
	-- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "javascript" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },

  vim.api.nvim_create_autocmd('FileType', {
	pattern = { '<filetype>' },
	callback = function() vim.treesitter.start() end,
	})
})
