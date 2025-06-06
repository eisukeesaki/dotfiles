-- disable welcome message
vim.opt.shortmess:append("I")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.undodir = vim.fn.stdpath('data') .. '/undodir' -- For Linux and Windows
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- For Linux
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt["guicursor"] = ""

vim.opt.splitright = true

vim.diagnostic.config({ virtual_text = false })
-- vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.bo.shiftwidth = 3
    vim.bo.tabstop = 3
    vim.bo.softtabstop = 3
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript",
  callback = function()
    vim.bo.shiftwidth = 3
    vim.bo.tabstop = 3
    vim.bo.softtabstop = 3
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.bo.shiftwidth = 3
    vim.bo.tabstop = 3
    vim.bo.softtabstop = 3
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.bo.shiftwidth = 3
    vim.bo.tabstop = 3
    vim.bo.softtabstop = 3
    vim.bo.expandtab = true
  end,
})

