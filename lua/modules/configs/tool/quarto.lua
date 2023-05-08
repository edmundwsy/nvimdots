return function()
	require("quarto").setup({
		closePreviewOnExit = true,
		lspFeatures = {
			enabled = true,
			languages = { "python", "julia" },
			diagnostics = {
				enabled = true,
				triggers = { "BufWrite" },
			},
			completion = {
				enabled = false,
			},
		},
		keymap = {
			hover = "K",
			definition = "gd",
		},
	})
end
