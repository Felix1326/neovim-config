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
-- First some LaTeX-specific functions
local function in_mathmode()
    return vim.fn["vimtex#syntax#in_mathzone()"] == 1
end

return {
    s(
	{ -- Parameter map
	    trig = "ff",
	    dscr = "Math fraction",
	    snippetType="autosnippet", -- Either ''snippet' or 'autosnippet'
	    priority = 100,
	    regTrig = false, -- Stop the snippet from expanding when it is a part of a word
	    condition = in_mathmode,
	},
	{

	}
    ),
}
