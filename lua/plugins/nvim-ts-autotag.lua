return {
	-- use treesitter to autoclose & autorename html tag
	"windwp/nvim-ts-autotag",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-ts-autotag").setup({
			opts = {
				enable_close = true, -- Auto close tags
				enable_rename = true, -- Auto rename pairs
				enable_close_on_slash = false, -- Auto close on trailing </
			},
		})
	end,
}
