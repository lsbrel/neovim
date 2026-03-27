return {
	"pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({
			enabled = true,
			execution_message = { message = "AutoSave: saved!" },
			trigger_events = { "InsertLeave", "TextChanged" },
		})
	end,
}
