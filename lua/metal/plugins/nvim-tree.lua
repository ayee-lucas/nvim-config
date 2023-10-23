return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
  	local nvimtree = require("nvim-tree")

  	-- disable netrw at the very start of your init.lua
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1

	-- set termguicolors to enable highlight groups
	vim.opt.termguicolors = true


	require("nvim-tree").setup({
	  sort_by = "case_sensitive",
	  view = {
    		width = 30,
  	},
  	renderer = {
    		group_empty = true,
  	},
  	filters = {
    		dotfiles = true,
  	},
	})

	--keymap
	local keymap = vim.keymap
	
	keymap.set("n", "<leader>oo", "<cmd>NvimTreeToggle<CR>")
	keymap.set("n", "<leader>o", "<cmd>NvimTreeFocus<CR>")
  end,
}
