return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    -- config = true, -- default
    config = function()
      require('nvim-autopairs').setup({})
      require('nvim-autopairs').remove_rule('`')
    end,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  }
}

