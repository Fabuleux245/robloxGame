-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:12
-- Luau version 6, Types version 3
-- Time taken: 0.000350 seconds

local getUserProfileFromId_upvr = require(script.Parent.getUserProfileFromId)
return function(arg1, arg2) -- Line 3
	--[[ Upvalues[1]:
		[1]: getUserProfileFromId_upvr (readonly)
	]]
	local var2_result1 = getUserProfileFromId_upvr(arg1, arg2)
	if var2_result1.names then
		return var2_result1.names.platformName
	end
	return nil
end