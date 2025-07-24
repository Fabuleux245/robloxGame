-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:43
-- Luau version 6, Types version 3
-- Time taken: 0.000873 seconds

local ArgCheck_upvr = require(script:FindFirstAncestor("CollectionViews").Parent.ArgCheck)
return function(arg1, arg2, arg3, arg4) -- Line 8, Named "calculateRelativeColumnGap"
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	if arg1 < 2 then
		return 0
	end
	local var2 = ArgCheck_upvr
	if 2 > arg1 then
		var2 = false
	else
		var2 = true
	end
	var2.assert(var2)
	local var3 = arg1 * arg3 + (arg1 - 1) * arg2 + arg4 * 2
	if 0 < var3 then
		return arg2 / var3
	end
	return 0
end