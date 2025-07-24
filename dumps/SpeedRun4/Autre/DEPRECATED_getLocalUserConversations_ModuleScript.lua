-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:06
-- Luau version 6, Types version 3
-- Time taken: 0.000848 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local NetworkingChat_upvr = require(AppChat.Http.NetworkingChat)
local RoduxNetworking_upvr = require(AppChat.Http.RoduxNetworking)
local Promise_upvr = require(AppChat.Parent.Promise)
local processConversations_upvr = require(script.Parent.processConversations)
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[4]:
		[1]: NetworkingChat_upvr (readonly)
		[2]: RoduxNetworking_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: processConversations_upvr (readonly)
	]]
	return function(arg1_2) -- Line 11
		--[[ Upvalues[6]:
			[1]: NetworkingChat_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: RoduxNetworking_upvr (copied, readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: processConversations_upvr (copied, readonly)
		]]
		if NetworkingChat_upvr.GetUserConversations.getStatus(arg1_2:getState(), arg1) == RoduxNetworking_upvr.Enum.NetworkStatus.Fetching then
			return Promise_upvr.resolve()
		end
		return arg1_2:dispatch(NetworkingChat_upvr.GetUserConversations.API(arg1, arg2)):andThen(function(arg1_3) -- Line 20
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: processConversations_upvr (copied, readonly)
			]]
			arg1_2:dispatch(processConversations_upvr(arg1_3.responseBody))
		end):catch(function(arg1_4) -- Line 25
			warn("NetworkingChat failure in DEPRECATED_getLocalUserConversations, Status: "..tostring(arg1_4))
		end)
	end
end