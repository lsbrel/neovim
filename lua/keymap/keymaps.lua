-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Encontrar Arquivos via telescop" })
vim.keymap.set("n", "<C-o>", builtin.buffers, { desc = "Buscar por buffers" })

-- Nvimtree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader><Right>", "<C-w>l")
vim.keymap.set("n", "<leader><Left>", "<C-w>h")

-- Comments
local comments = require("Comment.api")
vim.keymap.set({ "n", "v" }, "<C-;", comments.toggle.blockwise.current)

-- Geral
vim.keymap.set("n", "<S-q>", "%") -- Ir para fechamento
vim.keymap.set("n", "<C-s>", ":w<CR>") -- Salvar
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>") -- Salvar

vim.keymap.set("n", "<C-z>", "u") -- Desfazer

vim.keymap.set("v", "<C-x>", "d") -- Recortar
vim.keymap.set("v", "<C-c>", "y") -- Copiar
vim.keymap.set("n", "<C-v>", "p") -- Colar
vim.keymap.set("n", "<leader>q", function()
	print(vim.bo.filetype)
	if vim.bo.filetype == "NvimTree" then
		vim.cmd(":qa")
	else
		local current = vim.api.nvim_get_current_buf()
		vim.cmd("bnext")

		if vim.bo.filetype == "NvimTree" then
			vim.cmd("bnext")
		end
		vim.api.nvim_buf_delete(current, { force = false })

		local buffer_count = vim.fn.getbufinfo({ buflisted = 1 })
		if #buffer_count == 1 then
			vim.cmd("NvimTreeFocus")
		end
	end
end)

vim.keymap.set("n", "<C-CR>", "o") -- Inserir na proxima linha
vim.keymap.set("i", "<C-CR>", "<Esc>o") -- Inserir na proxima linha

vim.keymap.set("n", "<CR>", "i") -- Inserir

vim.keymap.set("n", "<C-A-CR>", "A") -- Inserir no final da linha
vim.keymap.set("n", "<A-CR>", "I") -- Inserir no começo

vim.keymap.set("n", "<C-Right>", "w") -- Para a proxima palavra
vim.keymap.set("n", "<C-Left>", "b") -- Para palavra anterior

vim.keymap.set("n", "<C-Up>", ":-3<CR>") -- Subir 3 linhas
vim.keymap.set("n", "<C-Down>", ":+3<CR>") -- Desce 3 linhas
vim.keymap.set("n", "<C-a>", "G$Vgg") -- Selecionar tudo

-- Formatar
vim.keymap.set("n", "<leader>f", function()
	require("conform").format()
end)

-- Bufferline
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
