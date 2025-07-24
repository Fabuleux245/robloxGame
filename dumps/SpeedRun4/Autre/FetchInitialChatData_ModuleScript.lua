-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:08
-- Luau version 6, Types version 3
-- Time taken: 0.000753 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local NetworkingUsers_upvr = require(AppChat.Http.NetworkingUsers)
local FetchChatSettings_upvr = require(AppChat.Conversations.Thunks.FetchChatSettings)
local SetAppLoaded_upvr = require(AppChat.Actions.SetAppLoaded)
return function(arg1) -- Line 11
	--[[ Upvalues[3]:
		[1]: NetworkingUsers_upvr (readonly)
		[2]: FetchChatSettings_upvr (readonly)
		[3]: SetAppLoaded_upvr (readonly)
	]]
	arg1:dispatch(function(arg1_2) -- Line 12
		--[[ Upvalues[1]:
			[1]: NetworkingUsers_upvr (copied, readonly)
		]]
		return arg1_2:dispatch(NetworkingUsers_upvr.GetUserV2FromUserId.API(arg1_2:getState().LocalUserId))
	end)
	return arg1:dispatch(FetchChatSettings_upvr.API()):andThen(function() -- Line 18
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SetAppLoaded_upvr (copied, readonly)
		]]
		arg1:dispatch(SetAppLoaded_upvr(true))
	end):catch(function(arg1_3) -- Line 21
		warn("AppChat.Conversations.Thunks.FetchInitialChatData with error: ", tostring(arg1_3))
	end)
end