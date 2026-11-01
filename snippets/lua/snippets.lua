-- Snippets for creating snippets
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node -- Static text
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    s(
	{
	    trig = "snhdr",
	    dscr ="Header of a snippet file",
	    snippetType = "autosnippet",
	    priority = 100,
	},
	fmt(
	    [[
		local ls = require("luasnip")
		local s = ls.snippet
		local sn = ls.snippet_node
		local t = ls.text_node -- Static text
		local i = ls.insert_node
		local f = ls.function_node
		local d = ls.dynamic_node
		local fmt = require("luasnip.extras.fmt").fmt -- Default insert {}
		local fmta = require("luasnip.extras.fmt").fmta -- Default insert <>
		local rep = require("luasnip.extras").rep
	    ]],
	    {},
	    {delimiters = "~@"} -- just some random delimiters to not cause error
	)
    ),
    s(
	{
	    trig = "snip",
	    dscr = "Basic snippet form",
	    snippetType = "snippet",
	    priority = 100,
	},
	fmta(
	    [=[
	s(
	{ -- Parameter map
	    trig = "<>",
	    dscr = "<>",
	    snippetType="<>", -- Either ''snippet' or 'autosnippet'
	    priority = <>,
	    regTrig = <>, -- Stop the snippet from expanding when it is a part of a word
	},
	fmta(
	    [[
		<>
	    ]]
	)

    ),
	    ]=],
	    {i(1), i(2), i(3, "autosnippet"), i(4, "100"), i(5, "false"),i(0)},
	    {}
	)
    ),
}
