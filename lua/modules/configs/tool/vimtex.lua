return function()
	vim.g.maplocalleader = " "
	vim.g.vimtex_syntax_enabled = 0
	vim.g.tex_flavor = "latex"
	vim.g.vimtex_fold_enabled = 0
	vim.g.vimtex_complete_close_braces = 1
	vim.g.vimtex_quickfix_mode = 2
	vim.g.vimtex_quickfix_open_on_warning = 1

	vim.g.vimtex_view_method = "zathura"
	vim.g.vimtex_view_general_viewer = "zathura"
	vim.g.vimtex_view_forward_search_on_start = false
	vim.g.vimtex_toc_config = {
		mode = 1,
		fold_enable = 0,
		hide_line_numbers = 1,
		resize = 0,
		refresh_always = 1,
		show_help = 0,
		show_numbers = 1,
		split_pos = "leftabove",
		split_width = 30,
		tocdeth = 3,
		indent_levels = 1,
		todo_sorted = 1,
	}
end
