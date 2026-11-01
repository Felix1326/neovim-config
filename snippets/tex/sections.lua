-- Latex section shortcuts
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local line_begin = require("luasnip.extras.expand_conditions").line_begin
return {
s(
    {
	trig = "sec",
	snippetType = "autosnippet", 
	condition = line_begin,
    },
    
	fmta(
	    [[
		\section{<>}
		<>
	    ]], {i(1), i(0)})
   
),
s(
    {
	trig = "ssec",
	snippetType = "autosnippet", 
	condition = line_begin,
    },
    
	fmta(
	    [[
		\subsection{<>}
		<>
	    ]] ,{i(1), i(0)})
    
),
s(
    {
	trig = "sssec",
	snippetType = "autosnippet", 
	condition = line_begin,
    },
    
	fmta(
	    [[
		\subsubsection{<>}
		<>
	    ]] ,
	    {i(1), i(0)})
    
),
}
