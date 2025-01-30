return {
	{
		"sampsyo/bril",
		lazy = false, -- the plugin is already lazy
		opts = {
			lsp_command = "/Users/ethan/gh/cs6120/target/debug/bril-lsp",
		},
		-- https://github.com/folke/lazy.nvim/issues/183
		init = function(plugin)
			require("lazy.core.loader").ftdetect(plugin.dir .. "/bril-vim")
		end,
		config = function(plugin)
			vim.opt.rtp:append(plugin.dir .. "/bril-vim")
			require("lazy.core.loader").packadd(plugin.dir)
		end,
	},
	{ "ethanuppal/bril.nvim", opts = {}, lazy = false },
}
