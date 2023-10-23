return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = {"BufReadPre", "BufNewFile"},
	config = function()
		local tree = require("nvim-treesitter.configs")


		require("nvim-treesitter.configs").setup({
			hightlight = { enable = true },
			indent = { enable = true }
		})
	end
}
