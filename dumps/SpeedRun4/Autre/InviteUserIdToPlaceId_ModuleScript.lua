-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:46
-- Luau version 6, Types version 3
-- Time taken: 0.002441 seconds

local CorePackages = game:GetService("CorePackages")
local ShareGame = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Settings.Pages.ShareGame
local ReceivedUserInviteStatus_upvr = require(ShareGame.Actions.ReceivedUserInviteStatus)
local InviteStatus_upvr = require(ShareGame.Constants).InviteStatus
local Promise_upvr = require(CorePackages.Packages.Promise)
local ApiFetchPlaceInfos_upvr = require(CorePackages.Workspace.Packages.PlaceInfoRodux).Thunks.ApiFetchPlaceInfos
local ApiSendGameInvite_upvr = require(ShareGame.Thunks.ApiSendGameInvite)
return function(arg1, arg2, arg3) -- Line 18
	--[[ Upvalues[5]:
		[1]: ReceivedUserInviteStatus_upvr (readonly)
		[2]: InviteStatus_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: ApiFetchPlaceInfos_upvr (readonly)
		[5]: ApiSendGameInvite_upvr (readonly)
	]]
	return function(arg1_2) -- Line 19
		--[[ Upvalues[8]:
			[1]: arg3 (readonly)
			[2]: ReceivedUserInviteStatus_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: InviteStatus_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: ApiFetchPlaceInfos_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: ApiSendGameInvite_upvr (copied, readonly)
		]]
		if arg3 == '0' then
			warn("Game Invite failed to send. Cannot send invite to unpublished Place.")
			arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg2, InviteStatus_upvr.Failed))
			return Promise_upvr.reject()
		end
		local any_getState_result1_upvr = arg1_2:getState()
		return Promise_upvr.new(function(arg1_3, arg2_2) -- Line 29
			--[[ Upvalues[3]:
				[1]: any_getState_result1_upvr (readonly)
				[2]: arg2 (copied, readonly)
				[3]: InviteStatus_upvr (copied, readonly)
			]]
			if any_getState_result1_upvr.Invites[tostring(arg2)] == InviteStatus_upvr.Pending then
				arg2_2()
			else
				arg1_3()
			end
		end):andThen(function() -- Line 36
			--[[ Upvalues[10]:
				[1]: any_getState_result1_upvr (readonly)
				[2]: arg3 (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: ReceivedUserInviteStatus_upvr (copied, readonly)
				[6]: arg2 (copied, readonly)
				[7]: InviteStatus_upvr (copied, readonly)
				[8]: ApiFetchPlaceInfos_upvr (copied, readonly)
				[9]: arg1 (copied, readonly)
				[10]: ApiSendGameInvite_upvr (copied, readonly)
			]]
			local var14_upvr = any_getState_result1_upvr.PlaceInfos[arg3]
			return Promise_upvr.new(function(arg1_4, arg2_3) -- Line 39
				--[[ Upvalues[8]:
					[1]: arg1_2 (copied, readonly)
					[2]: ReceivedUserInviteStatus_upvr (copied, readonly)
					[3]: arg2 (copied, readonly)
					[4]: InviteStatus_upvr (copied, readonly)
					[5]: var14_upvr (readonly)
					[6]: ApiFetchPlaceInfos_upvr (copied, readonly)
					[7]: arg1 (copied, readonly)
					[8]: arg3 (copied, readonly)
				]]
				arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg2, InviteStatus_upvr.Pending))
				if var14_upvr then
					arg1_4(var14_upvr)
				else
					local tbl = {}
					tbl[1] = arg3
					arg1_2:dispatch(ApiFetchPlaceInfos_upvr(arg1, tbl)):andThen(function(arg1_5) -- Line 46
						--[[ Upvalues[2]:
							[1]: arg1_4 (readonly)
							[2]: arg2_3 (readonly)
						]]
						if arg1_5[1] ~= nil then
							arg1_4(arg1_5[1])
						else
							arg2_3()
						end
					end, function() -- Line 52
						--[[ Upvalues[1]:
							[1]: arg2_3 (readonly)
						]]
						arg2_3()
					end)
				end
			end):andThen(function(arg1_6) -- Line 56
				--[[ Upvalues[4]:
					[1]: arg1_2 (copied, readonly)
					[2]: ApiSendGameInvite_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: arg2 (copied, readonly)
				]]
				return arg1_2:dispatch(ApiSendGameInvite_upvr(arg1, arg2, arg1_6))
			end):andThen(function(arg1_7) -- Line 58
				--[[ Upvalues[3]:
					[1]: arg1_2 (copied, readonly)
					[2]: ReceivedUserInviteStatus_upvr (copied, readonly)
					[3]: arg2 (copied, readonly)
				]]
				arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg2, arg1_7.resultType))
				return arg1_7
			end, function() -- Line 61
				--[[ Upvalues[4]:
					[1]: arg1_2 (copied, readonly)
					[2]: ReceivedUserInviteStatus_upvr (copied, readonly)
					[3]: arg2 (copied, readonly)
					[4]: InviteStatus_upvr (copied, readonly)
				]]
				arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg2, InviteStatus_upvr.Failed))
			end)
		end)
	end
end