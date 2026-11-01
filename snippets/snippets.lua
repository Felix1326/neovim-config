-- Snippets for creating new snippets
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
		local fmt = require("luasnip.extras.fmt").fmt
		local fmta = require("luasnip.extras.fmt").fmta
		local rep = require("luasnip.extras").rep
	    ]]
	)
    )
}
