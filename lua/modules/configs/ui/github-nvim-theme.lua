return function()
	local transparent_background = false -- Set background transparency here!
	-- Example config in Lua
	require("github-theme").setup({
		options = {
			transparent = transparent_background,
			hide_end_of_buffer = true,
			hide_nc_statusline = true,
			styles = {
				comments = "italic,bold",
				functions = "underline",
				keywords = "bold",
				variables = "NONE",
			},
			darken = {
				floats = true,
				sidebars = {
					enable = true,
					list = {},
				},
			},
		},

		specs = {
			-- Change the color of only the 'github_dark' theme's 'hint' color to magenta and make the 'error' color a dim red.
			github_dark = {
				diag = {
					error = "#660000",
					hint = "magenta.base",
				},
			},
			-- Change the "hint" color to the "orange" color, and make the "error" color bright red.
			all = {
				diag = {
					error = "#ff0000",
					hint = "orange",
				},
			},
		},

		-- Overwrite the highlight groups for all colorschemes
		groups = {
			all = {
				htmlTag = { fg = "palette.red", bg = "#282c34", sp = "diag.hint", style = "underline,bold" },
				DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
				CursorLineNr = { fg = "#96CDFB" },
				StatusLine = { fg = "#96CDFB" },
				lualine_a_normal = { fg = "#96CDFB" },
				lualine_b_normal = { fg = "#ffffff", bg = "#96CDFB" },
				lualine_c_normal = { fg = "#ffffff", bg = "#96CDFB" },
				-- this will remove the highlight groups
				TSField = {},
			},
		},
	})
end
