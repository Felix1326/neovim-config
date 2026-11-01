return
{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	opts = {
	    enable_autosnippets = true,
	    history  = true,
	    update_events = 'TextChanged,TextChangedI',
	    store_selection_keys = "<Tab>",
	},
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	config = function(_,opts)
	    local ls = require("luasnip")
	    ls.setup(opts) -- setup the optional parameters
	    -- Load snippets lazily from a dedicated directory
	    require("luasnip.loaders.from_lua").lazy_load({
	      paths = { "~/.config/nvim/snippets" }
	    })
	end,
}
