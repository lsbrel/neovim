vim.cmd("filetype plugin off")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set number")


-- trim trail whitespaces
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.cmd([[%s/\s\+$//e]])
  end,
})

-- Show inline Diagnostics
vim.diagnostic.config({ virtual_text = true })

-- Tema
vim.cmd("colorscheme tokyonight-night")
