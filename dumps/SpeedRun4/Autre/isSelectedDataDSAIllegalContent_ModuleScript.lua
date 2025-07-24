-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:46
-- Luau version 6, Types version 3
-- Time taken: 0.000771 seconds

local Constants_upvr = require(script:FindFirstAncestor("DsaIllegalContentReporting").Utility.Constants)
return function(arg1) -- Line 6, Named "isSelectedDataDSAIllegalContent"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if arg1 == nil then
		return false
	end
	local var2 = arg1[#arg1]
	local var3 = false
	if var2 ~= nil then
		if var2.tagValues[1] ~= Constants_upvr.DSA_TAG_VALUE then
			var3 = false
		else
			var3 = true
		end
	end
	return var3
end