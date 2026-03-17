return {
	"nvim-mini/mini.nvim",
	version = false,
	event = "VeryLazy",
	config = function()
		require("mini.animate").setup({})
	end,
}
