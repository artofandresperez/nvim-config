return {
	"epwalsh/obsidian.nvim",
	opts = {
		workspaces = {
			name = "personal",
			path = "Z:/Obsidian/petri-dish",
		},
	},
	config = function()
		require "obsidian".setup({})
	end
}
