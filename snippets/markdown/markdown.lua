-- Markdown snippets
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

-- Put mathmode around a letter
--
--
-- Insert url
return {
    s(
	{
	    trig = "url",
	    dscr = "URL in markdown",
	    priority = 100,
	    regTrig = false,
	    snippetType = "autosnippet",
	},
	fmta(
	    [[
	    [<>](<>)<>
	    ]],
	    {
		i(1,"text"),
		i(2,"url"),
		i(0)
	    }
	)
    ),
}
