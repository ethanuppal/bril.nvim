-- Based off of https://github.com/NMAC427/guess-indent.nvim

local M = {}

M.config = {
	lsp_command = "bril-lsp",
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})

	if M.config.lsp_command ~= nil then
		-- download from https://github.com/ethanuppal/cs6120/tree/main/bril-lsp
		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.bril",
			callback = function()
				vim.lsp.start({
					name = "bril-lsp",
					cmd = { M.config.lsp_command },
					root_dir = vim.fn.getcwd(),
				})
			end,
		})
	end
end

return M
