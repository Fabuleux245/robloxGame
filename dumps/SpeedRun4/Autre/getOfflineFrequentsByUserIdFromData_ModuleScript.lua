-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:36
-- Luau version 6, Types version 3
-- Time taken: 0.000501 seconds

local getProfileInsightsByUserIdFromData_upvr = require(script.Parent.getProfileInsightsByUserIdFromData)
return function(arg1, arg2) -- Line 3
	--[[ Upvalues[1]:
		[1]: getProfileInsightsByUserIdFromData_upvr (readonly)
	]]
	local var2_result1 = getProfileInsightsByUserIdFromData_upvr(arg1, arg2)
	if var2_result1 then
		return var2_result1.isOfflineFrequents or false
	end
	return false
end