return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = { enable = true },
        indent = {
          enable = true,
          disable = { "rust" }
        },
        ensure_installed = {
          "bash",
          "c",
          "html",
          "javascript",
          "jsdoc",
          "json",
          "jsonc",
          "lua",
          "luadoc",
          "luap",
          "markdown",
          "markdown_inline",
          "python",
          "regex",
          "rust",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
        },
      })
    end,
  }
}

