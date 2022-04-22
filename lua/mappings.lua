-- Use the extra-most-superior leader key, the space
vim.g.mapleader = ' '

-- A helper function to map keys
function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_expand('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Telescope (opening, searching files)
map('n', '<leader>ff', ':Telescope find_files theme=ivy<cr>')
map('n', '<leader>fg', ':Telescope live_grep theme=ivy<cr>')
map('n', '<leader>fb', ':Telescope buffers theme=ivy<cr>')
