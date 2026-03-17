return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
		end,
	},
	{
		"pradhyu/gitlens.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
