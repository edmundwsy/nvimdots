local config = {}

function config.github()
    require("github-theme").setup({
        themeStyle = "light",
        functionStyle = "italic",
        sidebars = {"qf", "vista_kind", "terminal", "packer"}
    })
end

function config.lualine()
    require('lualine').setup {
        options = {
            theme = 'github',
            -- For round icons (require Nerd-Font)
            section_separators = {"", ""}
            -- component_separators = {"", ""},
            -- ... your lualine config
        }
    }
end

function config.nvim_bufferline()
    require('bufferline').setup {
        options = {
            number = "none",
            number_style = "superscript",
            modified_icon = '✥',
            buffer_close_icon = "",
            mappings = true,
            left_trunc_marker = "",
            right_trunc_marker = "",
            max_name_length = 14,
            max_prefix_length = 13,
            tab_size = 20,
            show_buffer_close_icons = true,
            show_tab_indicators = true,
            separator_style = "thin",
            diagnostics = "nvim_lsp",
            always_show_bufferline = false,
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    padding = 1
                }
            }
        }
    }
end

function config.dashboard()
    local home = os.getenv('HOME')
    vim.g.dashboard_footer_icon = '🐬 '
    vim.g.dashboard_default_executive = 'telescope'

    vim.g.dashboard_custom_header = {
        [[              ...  .......          ]],
        [[         ....................       ]],
        [[    ..'........................     ]],
        [[ ...,'.......'.., .........'....    ]],
        [[  .'......,. ;'., '..'.......'.'.   ]],
        [[ .'.,'.''.;..,'.. .  ...'....','..  ]],
        [[..''.'.''''.....        .,'....;'.. ]],
        [[..',.......'. .        ..';'..','...]],
        [[ ....''..  ..        .....;,..','...]],
        [[  . .....           ......,..';,....]],
        [[      .'.         ....  ... ,,'.....]],
        [[      .,..             .....,'..... ]],
        [[     .'''.             ...'......   ]],
        [[     ..'..'.          ... ......    ]],
        [[       . '.'..             ..       ]],
        [[         ......           .         ]],
        [[            ....                    ]]
    }

    vim.g.dashboard_custom_section = {
        change_colorscheme = {
            description = {' Scheme change              comma s c '},
            command = 'DashboardChangeColorscheme'
        },
        find_frecency = {
            description = {' File frecency              comma f r '},
            command = 'Telescope frecency'
        },
        find_history = {
            description = {' File history               comma f e '},
            command = 'DashboardFindHistory'
        },
        find_project = {
            description = {' Project find               comma f p '},
            command = 'Telescope project'
        },
        find_file = {
            description = {' File find                  comma f f '},
            command = 'DashboardFindFile'
        },
        file_new = {
            description = {' File new                   comma f n '},
            command = 'DashboardNewFile'
        },
        find_word = {
            description = {' Word find                  comma f w '},
            command = 'DashboardFindWord'
        }
    }
end

function config.nvim_tree()
    if not packer_plugins['nvim-tree.lua'].loaded then
        vim.cmd [[packadd nvim-tree.lua]]
    end
    vim.g.nvim_tree_width = 35
    vim.g.nvim_tree_follow = 1
    vim.g.nvim_tree_gitignore = 1
    vim.g.nvim_tree_auto_open = 1
    vim.g.nvim_tree_auto_close = 1
    vim.g.nvim_tree_auto_ignore_ft = {'startify', 'dashboard'}
    vim.g.nvim_tree_quit_on_open = 1
    vim.g.nvim_tree_indent_markers = 1
    vim.g.nvim_tree_hide_dotfiles = 0
    vim.g.nvim_tree_git_hl = 1
    vim.g.nvim_tree_highlight_opened_files = 1
    vim.g.nvim_tree_tab_open = 1
    vim.g.nvim_tree_lsp_diagnostics = 1
    vim.g.nvim_tree_indent_markers = 1
    vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
    vim.g.nvim_tree_icons = {
        default = '',
        symlink = '',
        git = {
            unstaged = "✚",
            staged = "✚",
            unmerged = "≠",
            renamed = "≫",
            untracked = "★"
        }
    }
end

function config.gitsigns()
    if not packer_plugins['plenary.nvim'].loaded then
        vim.cmd [[packadd plenary.nvim]]
    end
    require('gitsigns').setup {
        signs = {
            add = {hl = 'GitGutterAdd', text = '▋'},
            change = {hl = 'GitGutterChange', text = '▋'},
            delete = {hl = 'GitGutterDelete', text = '▋'},
            topdelete = {hl = 'GitGutterDeleteChange', text = '▔'},
            changedelete = {hl = 'GitGutterChange', text = '▎'}
        },
        keymaps = {
            -- Default keymap options
            noremap = true,
            buffer = true,

            ['n ]g'] = {
                expr = true,
                "&diff ? ']g' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"
            },
            ['n [g'] = {
                expr = true,
                "&diff ? '[g' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"
            },

            ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
            ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
            ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
            ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
            ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line()<CR>',

            -- Text objects
            ['o ih'] = ':<C-U>lua require"gitsigns".text_object()<CR>',
            ['x ih'] = ':<C-U>lua require"gitsigns".text_object()<CR>'
        }
    }
end

function config.indent_blankline()
    -- vim.cmd [[highlight IndentOne guifg=#BF616A guibg=NONE gui=nocombine]]
    -- vim.cmd [[highlight IndentTwo guifg=#D08770 guibg=NONE gui=nocombine]]
    -- vim.cmd [[highlight IndentThree guifg=#EBCB8B guibg=NONE gui=nocombine]]
    -- vim.cmd [[highlight IndentFour guifg=#A3BE8C guibg=NONE gui=nocombine]]
    -- vim.cmd [[highlight IndentFive guifg=#5E81AC guibg=NONE gui=nocombine]]
    -- vim.cmd [[highlight IndentSix guifg=#88C0D0 guibg=NONE gui=nocombine]]
    -- vim.cmd [[highlight IndentSeven guifg=#B48EAD guibg=NONE gui=nocombine]]
    -- vim.g.indent_blankline_char_highlight_list = {
    --     "IndentOne", "IndentTwo", "IndentThree", "IndentFour", "IndentFive",
    --     "IndentSix", "IndentSeven"
    -- }
    vim.g.indent_blankline_char = "│"
    vim.g.indent_blankline_show_first_indent_level = true
    vim.g.indent_blankline_filetype_exclude = {
        "startify", "dashboard", "dotooagenda", "log", "fugitive", "gitcommit",
        "packer", "vimwiki", "markdown", "json", "txt", "vista", "help",
        "todoist", "NvimTree", "peekaboo", "git", "TelescopePrompt", "undotree",
        "flutterToolsOutline", "" -- for all buffers without a file type
    }
    vim.g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
    vim.g.indent_blankline_show_trailing_blankline_indent = false
    vim.g.indent_blankline_show_current_context = true
    vim.g.indent_blankline_context_patterns = {
        "class", "function", "method", "block", "list_literal", "selector",
        "^if", "^table", "if_statement", "while", "for"
    }
    -- because lazy load indent-blankline so need readd this autocmd
    vim.cmd('autocmd CursorMoved * IndentBlanklineRefresh')
end

function config.zen_mode() require('zen-mode').setup {} end

function config.twilight() require('twilight').setup {} end

return config