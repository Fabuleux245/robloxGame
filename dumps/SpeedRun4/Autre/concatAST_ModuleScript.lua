-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:07
-- Luau version 6, Types version 3
-- Time taken: 0.000875 seconds

local Array_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Array
function concatAST(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local tbl = {}
	for _, v in ipairs(arg1) do
		tbl = Array_upvr.concat(tbl, v.definitions)
	end
	return {
		kind = "Document";
		definitions = tbl;
	}
end
return {
	concatAST = concatAST;
}