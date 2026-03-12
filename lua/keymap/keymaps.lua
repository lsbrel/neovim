-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Encontrar Arquivos via telescop"})
vim.keymap.set("n", "<C-f>", builtin.current_buffer_fuzzy_find, { desc = "Encontrar texto no mesmo arquivo"})
vim.keymap.set("n", "<C-o>", builtin.buffers, { desc = "Buscar por buffers"})

-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>w", ":Neotree focus<CR>")
vim.keymap.set("n", "<leader><Right>", "<C-w>l")
vim.keymap.set("n", "<leader><Left>", "<C-w>h")

-- Comments
local comments = require("Comment.api")
vim.keymap.set({"n", "v"}, "<C-;", comments.toggle.blockwise.current)

-- Geral
vim.keymap.set("n", "<C-s>", ":w<CR>") -- Salvar
vim.keymap.set("n", "<C-z>", ":u<CR>") -- Desfazer
vim.keymap.set("v", "<C-x>", "d") -- Recortar
vim.keymap.set("v", "<C-c>", "y") -- Copiar
vim.keymap.set("n", "<leader>q", ":q!<CR>") -- Sair de tudo

vim.keymap.set("n", "<C-CR>", "o") -- Inserir na proxima linha
vim.keymap.set("n", "<C-A-CR>", "A") -- Inserir no final da linha
vim.keymap.set("n", "<A-CR>", "I") -- Inserir no começo

vim.keymap.set("n", "<C-Right>", "w") -- Para a proxima palavra
vim.keymap.set("n", "<C-Left>", "b") -- Para palavra anterior

vim.keymap.set("n", "<C-Up>", ":-10<CR>") -- Sobe meia tela
vim.keymap.set("n", "<C-Down>", ":+10<CR>") -- Desce meia tela

-- Formatar
vim.keymap.set("n", "<leader>f", function ()
  require("conform").format()
end)
