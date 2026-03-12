-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Encontrar Arquivos via telescop"})
vim.keymap.set("n", "<C-f>", builtin.current_buffer_fuzzy_find, { desc = "Encontrar texto no mesmo arquivo"})
vim.keymap.set("n", "<C-o>", builtin.buffers, { desc = "Buscar por buffers"})

-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

-- Geral
vim.keymap.set("n", "<C-s>", ":w<CR>") -- Salvar
vim.keymap.set("n", "<C-z>", ":u<CR>") -- Desfazer
vim.keymap.set("v", "<C-x>", "d") -- Recortar
vim.keymap.set("v", "<C-c>", "y") -- Copiar
vim.keymap.set("n", "<leader>q", ":q!<CR>") -- Sair de tudo
vim.keymap.set("n", "<C-CR>", "o") -- Inserir na proxima linha
vim.keymap.set("n", "<C-A-CR>", "A") -- Inserir no final da linha
vim.keymap.set("n", "<C-Up>", "<C-b>") -- Sobe meia tela
vim.keymap.set("n", "<C-Down>", "<C-d>") -- Desce meia tela
