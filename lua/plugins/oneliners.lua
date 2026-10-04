return {
    {
	'ojroques/vim-oscyank',
    },
    { -- Git plugin
	'tpope/vim-fugitive',
    },
    { -- Show CSS Colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
    {
	'mini.nvim',
	config = function()
	    require('mini.pairs').setup()
	end
    },
    {
    "mason-org/mason.nvim",
    opts = {}
    },
}
