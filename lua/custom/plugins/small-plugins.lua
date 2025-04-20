return {
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    lazy = true,
  },
  {
    'numToStr/Comment.nvim',
    opts = function()
      local commentstring = require 'ts_context_commentstring.integrations.comment_nvim'
      return {
        pre_hook = commentstring.create_pre_hook(),
      }
    end,
  },
  {
    'catgoose/nvim-colorizer.lua',
    event = 'BufReadPre',
    opts = { -- set to setup table
    },
  },
}
