-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:07
-- Luau version 6, Types version 3
-- Time taken: 0.001750 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local RoactChatAnalytics_upvr = require(AppChat.LegacyAnalytics.RoactChatAnalytics)
local any_new_result1_upvr_2 = require(Parent.Analytics).Analytics.new(game:GetService("RbxAnalyticsService"))
local SetAppLoaded_upvr = require(AppChat.Actions.SetAppLoaded)
return function() -- Line 13
	--[[ Upvalues[5]:
		[1]: any_new_result1_upvr (readonly)
		[2]: AppChatNetworking_upvr (readonly)
		[3]: RoactChatAnalytics_upvr (readonly)
		[4]: any_new_result1_upvr_2 (readonly)
		[5]: SetAppLoaded_upvr (readonly)
	]]
	any_new_result1_upvr:info("Fetching chat metadata...")
	return function(arg1) -- Line 16
		--[[ Upvalues[5]:
			[1]: AppChatNetworking_upvr (copied, readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: RoactChatAnalytics_upvr (copied, readonly)
			[4]: any_new_result1_upvr_2 (copied, readonly)
			[5]: SetAppLoaded_upvr (copied, readonly)
		]]
		local LocalUserId_upvr = arg1:getState().LocalUserId
		return arg1:dispatch(AppChatNetworking_upvr.rodux.GetMetadata.API()):andThen(function(arg1_2) -- Line 20
			--[[ Upvalues[6]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: LocalUserId_upvr (readonly)
				[3]: RoactChatAnalytics_upvr (copied, readonly)
				[4]: any_new_result1_upvr_2 (copied, readonly)
				[5]: arg1 (readonly)
				[6]: SetAppLoaded_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 9 start (CF ANALYSIS FAILED)
			local isChatEnabled = arg1_2.responseBody.isChatEnabled
			if isChatEnabled then
				any_new_result1_upvr:info("Chat is enabled and privacy settings allow chat")
				if LocalUserId_upvr then
					RoactChatAnalytics_upvr.new(any_new_result1_upvr_2, LocalUserId_upvr):userLoadedChat()
					-- KONSTANTWARNING: GOTO [27] #22
				end
			else
				any_new_result1_upvr:info("Chat is disabled or privacy settings do not allow chat")
			end
			-- KONSTANTERROR: [0] 1. Error Block 9 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [27] 22. Error Block 6 start (CF ANALYSIS FAILED)
			arg1:dispatch(SetAppLoaded_upvr(isChatEnabled))
			do
				return isChatEnabled
			end
			-- KONSTANTERROR: [27] 22. Error Block 6 end (CF ANALYSIS FAILED)
		end):catch(function(arg1_3) -- Line 37
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:warning("FetchChatData failed with error: {}", tostring(arg1_3))
		end)
	end
end