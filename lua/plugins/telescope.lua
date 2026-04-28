return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			defaults = {
				mappings = {
					n = {
						["dd"] = actions.delete_buffer,
            ["<CR>"] = function ()

            end
					},
				},
			},
		})
	end,
}
