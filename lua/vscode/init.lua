local load_config = function()
	-- settings

	vim.g.mapleader = " "

	local options = require("vscode.options")
	local option = options.scope.option

	options.set(option, "clipboard", "unnamedplus")
	options.set(option, "ignorecase", true)
	options.set(option, "smartcase", true)

	-- mappings

	local keymaps = require("vscode.keymaps")
	keymaps.register("n", {
		["<C-b><C-s>"] = [[<cmd>call VSCodeNotify('workbench.action.files.save')<cr>]],
		["ga"] = [[<cmd>call VSCodeNotify('editor.action.formatDocument')<cr>]],
		["gi"] = [[<cmd>call VSCodeNotify('editor.action.goToImplementation')<cr>]],
		["gn"] = [[<cmd>call VSCodeNotify('editor.action.marker.next')<cr>]],
		["gp"] = [[<cmd>call VSCodeNotify('editor.action.marker.prev')<cr>]],
		["gr"] = [[<cmd>call VSCodeNotify('editor.action.rename')<cr>]],
		["gx"] = [[<cmd>call VSCodeNotify('keyboard-quickfix.openQuickFix')<cr>]],

		["<leader>w"] = [[<cmd>HopChar1<cr>]],
		["<leader>k"] = [[<cmd>HopLine<cr>]],
		["<leader>j"] = [[<cmd>HopLine<cr>]],
		["<leader>l"] = [[<cmd>HopWord<cr>]],
	})
end

load_config()
