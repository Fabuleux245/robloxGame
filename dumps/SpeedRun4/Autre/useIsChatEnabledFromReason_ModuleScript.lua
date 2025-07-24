-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:05
-- Luau version 6, Types version 3
-- Time taken: 0.000693 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local useSelector_upvr = require(AppChat.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: useSelector_upvr (readonly)
		[2]: getDeepValue_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1_2) -- Line 10
		--[[ Upvalues[2]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return getDeepValue_upvr(arg1_2, `ChatAppReducer.ChatSettings.{arg1}`) or false
	end)
end