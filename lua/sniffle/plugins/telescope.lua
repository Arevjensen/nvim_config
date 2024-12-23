return {
	"nvim-telescope/telescope.nvim",
	event = 'VeryLazy',
	dependecies = {
		"nvim-lua/plenary.nvim",
		'nvim-telescope/telescope-ui-select.nvim',
		'nvim-tree/nvim-web-devicons'
	},
	config =
	    function()
		    require('telescope').setup {
			    defaults = {
				    mappings = {
					    i = {
						    ['<C-u>'] = false,
						    ['<C-d>'] = false,
					    },
				    },
			    },
			    extensions = {
				    ['ui-select'] = {
					    require('telescope.themes').get_dropdown(),
				    },
			    },
		    }
		    pcall(require('telescope').load_extension, 'ui-select')

		    local builtin = require('telescope.builtin')
		    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		    vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
		    vim.keymap.set('n', '<leader>pws', function()
			    local word = vim.fn.expand("<cword>")
			    builtin.grep_string({ search = word });
		    end)
		    vim.keymap.set('n', '<leader>pWs', function()
			    local word = vim.fn.expand("<cword>")
			    builtin.grep_string({ search = word });
		    end)
		    vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
		    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
		    vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
	    end
}
