return function()
	local transparent_background = true -- Set background transparency here!
	require("github-theme").setup({
		theme_style = "light",
		function_style = "italic",
		dark_sidebar = false,
		sidebars = { "qf", "vista_kind", "terminal", "packer" },

		-- Change the "hint" color to the "orange" color, and make the "error" color bright red
		colors = { hint = "orange", error = "#ff0000" },
		transparent = transparent_background,
	})
end
