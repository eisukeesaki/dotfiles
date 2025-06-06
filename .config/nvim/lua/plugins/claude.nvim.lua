return {
  'IntoTheNull/claude.nvim',
  config = function()
    require('claude').setup({
      -- Your configuration here (see Configuration section)
      -- Command to retrieve your API key (required)
      -- SECURITY NOTE: This should be a command that fetches from a secure store
      -- rather than hardcoding the key directly in your config
      api_key_cmd = "cat ~/.config/claude/api_key.txt",

      -- Model selection (optional)
      -- model = "claude-3-7-sonnet-20250219", -- Default to the latest model
      model = "claude-3-7-sonnet-latest", -- Default to the latest model

      -- Token limits (optional)
      max_tokens = 4000,

      -- Model parameters (optional)
      temperature = 0.7,
      top_p = 1.0,

      -- UI customization (optional)
      window = {
        -- These sizes are now relative maximums (98% on large screens, 97% on small)
        width = 0.8,  -- Base percentage of window width
        height = 0.8, -- Base percentage of window height
        border = "rounded", -- Border style: "none", "single", "double", "rounded"
      },

      -- Keybindings (optional)
      keymaps = {
        close = "<C-c>",
        submit = "<C-CR>",
        yank_last = "<C-y>",
        scroll_up = "<C-k>",
        scroll_down = "<C-j>",
        help = "<C-h>",
        quit = "q",
        continue = "<C-u>",
      },

      -- Behavior options
      silent = false,          -- Set to true to disable popup notifications
      show_token_count = true, -- Show token usage information
    })
  end,
  -- Add keymaps in the keys table (LazyVim style)
  -- keys = {
  --   -- Chat interface
  --   { "<leader>ac", "<cmd>Claude<cr>", desc = "Open Claude Chat" },
  --   -- Coding interface
  --   { "<leader>ar", 
  --     ":<C-u>ClaudeCoding<CR>", 
  --     mode = "v", 
  --     desc = "Refactor with Claude" 
  --   },
  -- },
}
