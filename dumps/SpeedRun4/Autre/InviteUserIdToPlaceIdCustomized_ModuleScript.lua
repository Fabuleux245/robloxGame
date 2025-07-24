-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:46
-- Luau version 6, Types version 3
-- Time taken: 0.001282 seconds

local CorePackages = game:GetService("CorePackages")
local ShareGame = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Settings.Pages.ShareGame
local ReceivedUserInviteStatus_upvr = require(ShareGame.Actions.ReceivedUserInviteStatus)
local InviteStatus_upvr = require(ShareGame.Constants).InviteStatus
local Promise_upvr = require(CorePackages.Packages.Promise)
local PostSendExperienceInvite_upvr = require(CorePackages.Workspace.Packages.GameInvite).PostSendExperienceInvite
local GameInviteEvents_upvr = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 18
	--[[ Upvalues[5]:
		[1]: ReceivedUserInviteStatus_upvr (readonly)
		[2]: InviteStatus_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: PostSendExperienceInvite_upvr (readonly)
		[5]: GameInviteEvents_upvr (readonly)
	]]
	return function(arg1_2) -- Line 27
		--[[ Upvalues[12]:
			[1]: arg3 (readonly)
			[2]: ReceivedUserInviteStatus_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: InviteStatus_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: PostSendExperienceInvite_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: arg5 (readonly)
			[9]: arg6 (readonly)
			[10]: arg7 (readonly)
			[11]: arg4 (readonly)
			[12]: GameInviteEvents_upvr (copied, readonly)
		]]
		if arg3 == '0' then
			warn("Game Invite failed to send. Cannot send invite to unpublished Place.")
			arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg2, InviteStatus_upvr.Failed))
			return Promise_upvr.reject()
		end
		local any_getState_result1_upvr = arg1_2:getState()
		return Promise_upvr.new(function(arg1_3, arg2_2) -- Line 36
			--[[ Upvalues[3]:
				[1]: any_getState_result1_upvr (readonly)
				[2]: arg2 (copied, readonly)
				[3]: InviteStatus_upvr (copied, readonly)
			]]
			if any_getState_result1_upvr.Invites[arg2] == InviteStatus_upvr.Pending then
				arg2_2()
			else
				arg1_3()
			end
		end):andThen(function() -- Line 44
			--[[ Upvalues[10]:
				[1]: arg1_2 (readonly)
				[2]: ReceivedUserInviteStatus_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: InviteStatus_upvr (copied, readonly)
				[5]: PostSendExperienceInvite_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
				[7]: arg3 (copied, readonly)
				[8]: arg5 (copied, readonly)
				[9]: arg6 (copied, readonly)
				[10]: arg7 (copied, readonly)
			]]
			arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg2, InviteStatus_upvr.Pending))
			return PostSendExperienceInvite_upvr(arg1, arg2, arg3, arg5, arg6, arg7)
		end):andThen(function(arg1_4) -- Line 48
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: ReceivedUserInviteStatus_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: InviteStatus_upvr (copied, readonly)
			]]
			arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg2, InviteStatus_upvr.Success))
			return arg1_4
		end, function() -- Line 51
			--[[ Upvalues[7]:
				[1]: arg4 (copied, readonly)
				[2]: arg5 (copied, readonly)
				[3]: GameInviteEvents_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: ReceivedUserInviteStatus_upvr (copied, readonly)
				[6]: arg2 (copied, readonly)
				[7]: InviteStatus_upvr (copied, readonly)
			]]
			arg4:sendEvent(arg5, GameInviteEvents_upvr.ErrorShown)
			arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg2, InviteStatus_upvr.Failed))
		end)
	end
end