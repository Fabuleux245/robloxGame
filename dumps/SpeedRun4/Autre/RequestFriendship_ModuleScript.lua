-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:44
-- Luau version 6, Types version 3
-- Time taken: 0.001055 seconds

local Players_upvr = game:GetService("Players")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local FFlagRemoveHardCodedFriendLimitPrompt_upvr = require(RobloxGui.Modules.Flags.FFlagRemoveHardCodedFriendLimitPrompt)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local FriendingUtility_upvr = require(RobloxGui.Modules.FriendingUtility)
local SendNotificationInfo_upvr = RobloxGui:WaitForChild("SendNotificationInfo")
local RobloxTranslator_upvr = require(game:GetService("CorePackages").Workspace.Packages.RobloxTranslator)
return function(arg1, arg2) -- Line 17, Named "RequestFriendship"
	--[[ Upvalues[7]:
		[1]: FFlagRemoveHardCodedFriendLimitPrompt_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: FriendingUtility_upvr (readonly)
		[6]: SendNotificationInfo_upvr (readonly)
		[7]: RobloxTranslator_upvr (readonly)
	]]
	return function() -- Line 18
		--[[ Upvalues[9]:
			[1]: FFlagRemoveHardCodedFriendLimitPrompt_upvr (copied, readonly)
			[2]: RbxAnalyticsService_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: LocalPlayer_upvr (copied, readonly)
			[6]: FriendingUtility_upvr (copied, readonly)
			[7]: arg2 (readonly)
			[8]: SendNotificationInfo_upvr (copied, readonly)
			[9]: RobloxTranslator_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 19
			--[[ Upvalues[9]:
				[1]: FFlagRemoveHardCodedFriendLimitPrompt_upvr (copied, readonly)
				[2]: RbxAnalyticsService_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: Players_upvr (copied, readonly)
				[5]: LocalPlayer_upvr (copied, readonly)
				[6]: FriendingUtility_upvr (copied, readonly)
				[7]: arg2 (copied, readonly)
				[8]: SendNotificationInfo_upvr (copied, readonly)
				[9]: RobloxTranslator_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 17. Error Block 3 start (CF ANALYSIS FAILED)
			LocalPlayer_upvr:RequestFriendship(arg1)
			do
				return
			end
			-- KONSTANTERROR: [20] 17. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [26] 22. Error Block 26 start (CF ANALYSIS FAILED)
			local any_GetFriendCountAsync_result1 = FriendingUtility_upvr:GetFriendCountAsync(LocalPlayer_upvr.UserId)
			if not any_GetFriendCountAsync_result1 or not FriendingUtility_upvr:GetFriendCountAsync(arg1.UserId) then return end
			-- KONSTANTERROR: [26] 22. Error Block 26 end (CF ANALYSIS FAILED)
		end)()
	end
end