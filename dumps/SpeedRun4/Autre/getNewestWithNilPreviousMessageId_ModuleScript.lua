-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:04
-- Luau version 6, Types version 3
-- Time taken: 0.000575 seconds

local getDeepValue_upvr = require(script:FindFirstAncestor("AppChat").Utils.getDeepValue)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: getDeepValue_upvr (readonly)
	]]
	local var2_result1 = getDeepValue_upvr(arg1, "values")
	local var11
	for _, v in pairs(getDeepValue_upvr(arg1, "keys")) do
		if var2_result1[v] and var2_result1[v].previousMessageId == nil then
			var11 = v
			return var11
		end
	end
	return var11
end