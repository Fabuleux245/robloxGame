-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:03
-- Luau version 6, Types version 3
-- Time taken: 0.000598 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local Cryo_upvr = require(Parent.Cryo)
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
return function() -- Line 8
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: getDeepValue_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 9
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: getDeepValue_upvr (copied, readonly)
		]]
		local var6_result1 = getDeepValue_upvr(arg1, "ChatAppReducer.Conversations")
		if not var6_result1 then
			var6_result1 = {}
		end
		return not Cryo_upvr.isEmpty(var6_result1)
	end)
end