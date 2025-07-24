-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:56
-- Luau version 6, Types version 3
-- Time taken: 0.000640 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local RoduxNetworking_upvr = require(AppChat.Http.RoduxNetworking)
return function() -- Line 8
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: AppChatNetworking_upvr (readonly)
		[3]: RoduxNetworking_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 9
		--[[ Upvalues[2]:
			[1]: AppChatNetworking_upvr (copied, readonly)
			[2]: RoduxNetworking_upvr (copied, readonly)
		]]
		local var8
		if AppChatNetworking_upvr.rodux.GetUserConversations.getStatus(arg1, 1) ~= RoduxNetworking_upvr.Enum.NetworkStatus.Fetching then
			var8 = false
		else
			var8 = true
		end
		return var8
	end)
end