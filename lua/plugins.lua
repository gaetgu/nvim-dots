return require 'packer'.startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Use the github theme
	use {
		'projekt0n/github-nvim-theme',
		config = function()
			require 'github-theme'.setup()
		end
	}

	-- Fancy status line
	use {
		'nvim-lualine/lualine.nvim',
		config = function()
			require 'lualine'.setup {
				options = { 
					theme = 'ayu_mirage',
				}
			}
		end
	}

	-- Treesitter!
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require 'nvim-treesitter.configs'.setup {
				ensure_installed = {
					'lua',
					'go',
					'rust',
					'fish',
					'commonlisp'
				},
				highlight = { enable = true },
				endwise = { enable = true }
			}
		end
	}

	-- Add better highlighting for the common lisp namespace
	use 'theHamsta/nvim-treesitter-commonlisp'

	-- Automatically add the `end` keyword in ruby, lua, etc.
	use 'RRethy/nvim-treesitter-endwise'

	-- Better autopairs
	use {
		'windwp/nvim-autopairs',
		config = function()
			require 'nvim-autopairs'.setup {}
		end
	}

	-- The best file searcher/opener
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} },
		config = function()
			require 'telescope'.setup {
				defaults = {
					preview = false,
					height = 10,
					mappings = {
						i = {
							['<esc>'] = require 'telescope.actions'.close
						},
					},
				}
			}
		end
	}
end)
