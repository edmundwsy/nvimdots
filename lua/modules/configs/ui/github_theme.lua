return function()
	local transparent_background = false -- Set background transparency here!
	require("github-theme").setup({
		theme_style = "dark",
		function_style = "italic",
		sidebars = { "qf", "vista_kind", "terminal", "packer" },

		-- Change the "hint" color to the "orange" color, and make the "error" color bright red
		colors = { hint = "orange", error = "#ff0000" },
	})
end
