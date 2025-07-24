-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:04
-- Luau version 6, Types version 3
-- Time taken: 0.000684 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
local populateListFromIds_upvr = require(AppChat.SocialLibraries).populate.populateListFromIds
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[2]:
		[1]: getDeepValue_upvr (readonly)
		[2]: populateListFromIds_upvr (readonly)
	]]
	local var3_result1 = getDeepValue_upvr(arg1, "Users")
	if not var3_result1 then
		var3_result1 = {}
	end
	return populateListFromIds_upvr(arg2, var3_result1)
end