-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:20
-- Luau version 6, Types version 3
-- Time taken: 0.003642 seconds

local dependencies = require(script.Parent.dependencies)
local RoduxCall_upvr = dependencies.RoduxCall
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local Players_upvr = game:GetService("Players")
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local default_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local var8_upvw
local var9_upvw
local var10_upvw
local var11_upvw
local var12_upvw
local var13_upvw
local CallAction_upvr = RoduxCall_upvr.Enums.CallAction
local teleportToRootPlace_upvr = dependencies.teleportToRootPlace
return function(arg1) -- Line 22
	--[[ Upvalues[13]:
		[1]: RobloxReplicatedStorage_upvr (readonly)
		[2]: RoduxCall_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: FaceAnimatorService_upvr (readonly)
		[5]: default_upvr (readonly)
		[6]: var8_upvw (read and write)
		[7]: var9_upvw (read and write)
		[8]: var10_upvw (read and write)
		[9]: var11_upvw (read and write)
		[10]: var12_upvw (read and write)
		[11]: var13_upvw (read and write)
		[12]: CallAction_upvr (readonly)
		[13]: teleportToRootPlace_upvr (readonly)
	]]
	local function _(arg1_2) -- Line 23
		--[[ Upvalues[1]:
			[1]: RobloxReplicatedStorage_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 24
			--[[ Upvalues[2]:
				[1]: RobloxReplicatedStorage_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			RobloxReplicatedStorage_upvr:WaitForChild("UpdateCurrentCall", math.huge):FireServer(arg1_2)
		end)()
	end
	arg1:getCallState():andThen(function(arg1_3) -- Line 36
		--[[ Upvalues[3]:
			[1]: RoduxCall_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if arg1_3.status == RoduxCall_upvr.Enums.Status.Teleporting and Players_upvr.LocalPlayer and arg1_3.callerId == Players_upvr.LocalPlayer.UserId and arg1_3.callId then
			if arg1_3.instanceId == game.JobId then
				arg1:teleportSuccessCall(arg1_3.callId)
			else
				arg1:finishCall(arg1_3.callId)
			end
		end
		if arg1_3.status == RoduxCall_upvr.Enums.Status.Accepting and Players_upvr.LocalPlayer and arg1_3.calleeId == Players_upvr.LocalPlayer.UserId and arg1_3.callId then
			if arg1_3.instanceId == game.JobId then
				arg1:answerSuccessCall(arg1_3.callId)
				return
			end
			arg1:rejectCall(arg1_3.callId)
		end
	end)
	FaceAnimatorService_upvr:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(function() -- Line 65
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: FaceAnimatorService_upvr (copied, readonly)
		]]
		arg1:updateMicAndCamState(nil, FaceAnimatorService_upvr.VideoAnimationEnabled)
	end)
	default_upvr.muteChanged.Event:Connect(function(arg1_4) -- Line 70
		--[[ Upvalues[2]:
			[1]: default_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local any_getService_result1_2 = default_upvr:getService()
		if any_getService_result1_2 and any_getService_result1_2.VoiceChatState ~= Enum.VoiceChatState.Leaving and any_getService_result1_2.VoiceChatState ~= Enum.VoiceChatState.Ended then
			arg1:updateMicAndCamState(arg1_4, nil)
		end
	end)
	var8_upvw = arg1:listenToHandleMicAndCamChanged(function(arg1_5) -- Line 83
		--[[ Upvalues[2]:
			[1]: default_upvr (copied, readonly)
			[2]: FaceAnimatorService_upvr (copied, readonly)
		]]
		local any_getService_result1 = default_upvr:getService()
		if any_getService_result1 and any_getService_result1.VoiceChatState == Enum.VoiceChatState.Joined and default_upvr.localMuted ~= nil and arg1_5.muted ~= nil and arg1_5.muted ~= default_upvr.localMuted then
			default_upvr:ToggleMic("CallAPI")
		end
		if FaceAnimatorService_upvr:IsStarted() and FaceAnimatorService_upvr.VideoAnimationEnabled ~= arg1_5.camEnabled and arg1_5.camEnabled ~= nil then
			FaceAnimatorService_upvr.VideoAnimationEnabled = arg1_5.camEnabled
		end
	end)
	var9_upvw = arg1:listenToHandleTeleportingCall(function(arg1_6) -- Line 107
		--[[ Upvalues[4]:
			[1]: RoduxCall_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: RobloxReplicatedStorage_upvr (copied, readonly)
		]]
		if arg1_6.status == RoduxCall_upvr.Enums.Status.Teleporting and Players_upvr.LocalPlayer and arg1_6.callId and arg1_6.callerId == Players_upvr.LocalPlayer.UserId then
			coroutine.wrap(function() -- Line 114
				--[[ Upvalues[3]:
					[1]: arg1_6 (readonly)
					[2]: arg1 (copied, readonly)
					[3]: RobloxReplicatedStorage_upvr (copied, readonly)
				]]
				if arg1_6.instanceId == game.JobId then
					arg1:teleportSuccessCall(arg1_6.callId)
				else
					RobloxReplicatedStorage_upvr:WaitForChild("ContactListIrisInviteTeleport", math.huge):FireServer(arg1_6.placeId, arg1_6.instanceId, arg1_6.reservedServerAccessCode)
				end
			end)()
		end
	end)
	var10_upvw = arg1:listenToHandleTransferCallTeleportJoin(function(arg1_7) -- Line 133
		--[[ Upvalues[1]:
			[1]: RobloxReplicatedStorage_upvr (copied, readonly)
		]]
		local tbl_upvr_2 = {
			callId = arg1_7.callId;
			participants = {tostring(arg1_7.callerId), tostring(arg1_7.calleeId)};
		}
		coroutine.wrap(function() -- Line 24
			--[[ Upvalues[2]:
				[1]: RobloxReplicatedStorage_upvr (copied, readonly)
				[2]: tbl_upvr_2 (readonly)
			]]
			RobloxReplicatedStorage_upvr:WaitForChild("UpdateCurrentCall", math.huge):FireServer(tbl_upvr_2)
		end)()
	end)
	var11_upvw = arg1:listenToHandleTransferCallTeleportLeave(function(arg1_8) -- Line 140
		--[[ Upvalues[1]:
			[1]: RobloxReplicatedStorage_upvr (copied, readonly)
		]]
		local var32_upvr
		coroutine.wrap(function() -- Line 24
			--[[ Upvalues[2]:
				[1]: RobloxReplicatedStorage_upvr (copied, readonly)
				[2]: var32_upvr (readonly)
			]]
			RobloxReplicatedStorage_upvr:WaitForChild("UpdateCurrentCall", math.huge):FireServer(var32_upvr)
		end)()
	end)
	var12_upvw = arg1:listenToHandleActiveCall(function(arg1_9) -- Line 146
		--[[ Upvalues[1]:
			[1]: RobloxReplicatedStorage_upvr (copied, readonly)
		]]
		local tbl_upvr = {
			callId = arg1_9.callId;
			participants = {tostring(arg1_9.callerId), tostring(arg1_9.calleeId)};
		}
		coroutine.wrap(function() -- Line 24
			--[[ Upvalues[2]:
				[1]: RobloxReplicatedStorage_upvr (copied, readonly)
				[2]: tbl_upvr (readonly)
			]]
			RobloxReplicatedStorage_upvr:WaitForChild("UpdateCurrentCall", math.huge):FireServer(tbl_upvr)
		end)()
	end)
	var13_upvw = arg1:listenToHandleEndCall(function(arg1_10) -- Line 153
		--[[ Upvalues[3]:
			[1]: RobloxReplicatedStorage_upvr (copied, readonly)
			[2]: CallAction_upvr (copied, readonly)
			[3]: teleportToRootPlace_upvr (copied, readonly)
		]]
		local var39_upvr
		coroutine.wrap(function() -- Line 24
			--[[ Upvalues[2]:
				[1]: RobloxReplicatedStorage_upvr (copied, readonly)
				[2]: var39_upvr (readonly)
			]]
			RobloxReplicatedStorage_upvr:WaitForChild("UpdateCurrentCall", math.huge):FireServer(var39_upvr)
		end)()
		var39_upvr = CallAction_upvr
		if arg1_10.callAction == var39_upvr.Finish and game.JobId == arg1_10.instanceId then
			teleportToRootPlace_upvr()
		end
	end)
end