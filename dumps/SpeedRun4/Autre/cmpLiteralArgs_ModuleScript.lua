-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:28
-- Luau version 6, Types version 3
-- Time taken: 0.000539 seconds

local fmtArgs_upvr = require(script.Parent.fmtArgs)
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[1]:
		[1]: fmtArgs_upvr (readonly)
	]]
	if arg1.n ~= arg2.n then
		return false, "number of literals in "..fmtArgs_upvr(arg1).." does not match number of args in "..fmtArgs_upvr(arg2)
	end
	for i = 1, arg1.n do
		if arg1[i] ~= arg2[i] then
			return false, "expected "..fmtArgs_upvr(arg1)..", got "..fmtArgs_upvr(arg2)
		end
	end
	return true
end