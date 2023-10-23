return {
	'akinsho/bufferline.nvim', 
	version = "*", 
	dependencies = { 
		'nvim-tree/nvim-web-devicons'
	},
	config = function()
		local bufferline = require("bufferline")

		vim.opt.termguicolors = true

		vim.opt.mouse = "a"

		require("bufferline").setup({
			options = {
				mode="tabs",
            			close_icon = '',
				separator_style = "padded_slant",
					hover = {
						enabled = true,
						delay = 200,
						reveal = {'close'}
					},
	 				offsets = {
						{
						    filetype = "NvimTree",
						    text = "File Explorer",
						    highlight = "Directory",
						    separator = true -- use a "true" to enable the default, or set your own character
						}

					}

			}
		})
	--keymap
	local keymap = vim.keymap
	
	keymap.set("n", "<leader>tt", "<cmd>BufferLinePick<CR>")
	end,
}
