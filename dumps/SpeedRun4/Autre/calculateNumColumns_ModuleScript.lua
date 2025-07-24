-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:35
-- Luau version 6, Types version 3
-- Time taken: 0.001110 seconds

local ArgCheck_upvr = require(script:FindFirstAncestor("CollectionViews").Parent.ArgCheck)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 9, Named "calculateNumColumns"
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	local var2 = ArgCheck_upvr
	if 1 > arg1 then
		var2 = false
	else
		var2 = true
	end
	var2.assert(var2)
	var2 = ArgCheck_upvr
	if 0 > arg2 then
		var2 = false
	else
		var2 = true
	end
	var2.assert(var2)
	var2 = (arg5 + arg2) / (arg1 + arg2)
	local floored = math.floor(var2)
	if arg6 then
		var2 = math.floor(floored * 0.5)
		floored = var2 * 2
	end
	var2 = math.min(arg4, math.max(arg3, floored))
	return var2
end