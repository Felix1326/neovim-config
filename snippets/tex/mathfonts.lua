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

local function in_mathmode()
    return vim.fn["vimtex#syntax#in_mathzone()"] == 1
end
return {
    s(
    { -- Parameter map
        trig = "bbR",
        dscr = "Blackboard bold R",
        snippetType="autosnippet", -- Either ''snippet' or 'autosnippet'
        priority = 1000,
        regTrig = false, -- Stop the snippet from expanding when it is a part of a word
	condition = in_mathmode,
    },
    fmta(
        [[
    	\mathbb{R}
        ]],
	{}
    )

       ),
    s(
    { -- Parameter map
        trig = "bb",
        dscr = "Blackboard bold",
        snippetType="autosnippet", -- Either ''snippet' or 'autosnippet'
        priority = 100,
        regTrig = false, -- Stop the snippet from expanding when it is a part of a word
	condition = in_mathmode
    },
    fmta(
        [[
    	\mathbb{<>}<>
        ]],
        {i(1),i(0)}
        )
    ),
    
}
