-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:05
-- Luau version 6, Types version 3
-- Time taken: 0.000506 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local useSelector_upvr = require(AppChat.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue2_upvr = require(AppChat.Utils.getDeepValue2)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: useSelector_upvr (readonly)
		[2]: getDeepValue2_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 8
		--[[ Upvalues[1]:
			[1]: getDeepValue2_upvr (copied, readonly)
		]]
		local getDeepValue2_upvr_result1 = getDeepValue2_upvr(arg1, "ChatAppReducer.ChatSettings.chatUserMessagesEnabled")
		if getDeepValue2_upvr_result1 == nil then
			return true
		end
		return getDeepValue2_upvr_result1
	end)
end