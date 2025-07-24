-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:06
-- Luau version 6, Types version 3
-- Time taken: 0.000541 seconds

local getDeepValue_upvr = require(script.Parent.Parent.getDeepValue)
local llama_upvr = require(script:FindFirstAncestor("FriendsRodux").Parent.llama)
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: getDeepValue_upvr (readonly)
		[2]: llama_upvr (readonly)
	]]
	local keyPath_upvr = arg1.keyPath
	return function(arg1_2, arg2, arg3) -- Line 10
		--[[ Upvalues[3]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: keyPath_upvr (readonly)
			[3]: llama_upvr (copied, readonly)
		]]
		local var2_result1 = getDeepValue_upvr(arg1_2, keyPath_upvr..".byUserId")
		if var2_result1[arg2] ~= nil and llama_upvr.List.find(var2_result1[arg2], arg3) then
			return true
		end
		return false
	end
end