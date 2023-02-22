return function()
	local home = vim.fn.expand("/home/siyuan/Notes")
	require("telekasten").setup({
		home = home,
		take_over_my_home = false,
		dailies = home .. "/" .. "journal",
		image_subdir = "assets",
		calendar_opts = {
			weeknm = 1,
		},
		command_palette_theme = "dropdown",
	})
end
