return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("pylsp")
			vim.lsp.enable("terraformls")
			vim.lsp.enable("docker_compose_language_service")
			vim.lsp.enable("sqls")
			vim.lsp.enable("gopls")
			vim.lsp.enable("vimls")
			vim.lsp.enable("clangd")

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			vim.lsp.config("pylsp", {
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								ignore = { "E501" }, -- Desabilitando erros de linhas muitos longas
							},
						},
					},
				},
			})
		end,
	},
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = {
					"lua_ls",
				},
			})
		end,
	},
}
