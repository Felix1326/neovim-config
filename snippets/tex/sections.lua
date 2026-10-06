-- Latex section shortcuts
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local line_begin = require("luasnip.extras.expand_conditions").line_begin

s(
    {
	trig = "s",
	snippetType = "autosnippet", 
	condition = line_begin,
    },
    {
	fmt("\\section")
    }
)
s(
    {
	trig = "ss",
	snippetType = "autosnippet", 
	condition = line_begin,
    },
    {
	fmt("\\subsection")
    }
)
s(
    {
	trig = "sss",
	snippetType = "autosnippet", 
	condition = line_begin,
    },
    {
	fmt("\\subsubsection")
    }
)
