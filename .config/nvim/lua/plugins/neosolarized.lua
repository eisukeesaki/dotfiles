return {
  {
    "svrana/neosolarized.nvim",
    dependencies = { "tjdevries/colorbuddy.nvim" },
    config = function()
      require('neosolarized').setup({
        comment_italics = true,
        background_set = false, -- Change to true if you want the background to be set by the theme
      })
      vim.cmd('colorscheme neosolarized')
    end,
  }
}

