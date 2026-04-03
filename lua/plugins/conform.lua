return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				terraform = { "terraform_fmt" },
				python = { "black" },
				sql = { "sqlfmt" },
				lua = { "stylua" },
				go = { "gofumpt" },
<<<<<<< Updated upstream
				c = { "clang-format" },
				cpp = { "clang-format" },
=======
        cpp = { "clang-format" },
        c = { "clang-format" }
>>>>>>> Stashed changes
			},
		})
	end,
}
