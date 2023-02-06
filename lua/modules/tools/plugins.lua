local tools = {}
local conf = require("modules.tools.config")

tools["nvim-telescope/telescope.nvim"] = {
	lazy = true,
	cmd = "Telescope",
	config = conf.telescope,
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-lua/popup.nvim" },
		{ "debugloop/telescope-undo.nvim" },
		{ "ahmedkhalf/project.nvim", event = "BufReadPost", config = conf.project },
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-telescope/telescope-frecency.nvim", dependencies = {
			{ "kkharji/sqlite.lua" },
		} },
		{ "jvgrootveld/telescope-zoxide" },
		{ "nvim-telescope/telescope-live-grep-args.nvim" },
		{ "bi0ha2ard/telescope-ros.nvim" },
	},
}

tools["wakatime/vim-wakatime"] = {
	lazy = false,
}

tools["folke/todo-comments.nvim"] = {
	lazy = true,
	event = "BufRead",
	config = conf.todo,
}
tools["michaelb/sniprun"] = {
	lazy = true,
	build = "bash ./install.sh",
	cmd = { "SnipRun" },
}
tools["folke/trouble.nvim"] = {
	lazy = true,
	cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
	config = conf.trouble,
}
tools["gelguy/wilder.nvim"] = {
	lazy = true,
	event = "CmdlineEnter",
	config = conf.wilder,
	dependencies = { { "romgrk/fzy-lua-native" } },
}
tools["mrjones2014/legendary.nvim"] = {
	lazy = true,
	cmd = "Legendary",
	config = conf.legendary,
	dependencies = {
		{ "kkharji/sqlite.lua" },
		{ "stevearc/dressing.nvim", event = "VeryLazy", config = conf.dressing },
		-- Please don't remove which-key.nvim otherwise you need to set timeoutlen=300 at `lua/core/options.lua`
		{ "folke/which-key.nvim", event = "VeryLazy", config = conf.which_key },
	},
}

tools["f3fora/nvim-texlabconfig"] = {
	lazy = true,
	config = conf.texlabconfig,
	build = "go build",
	ft = { "tex", "bib" },
}

return tools
