-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:12
-- Luau version 6, Types version 3
-- Time taken: 0.003744 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DisableCameraOnSelfieViewForLowspecDevices", false)
local function var4_upvw() -- Line 14
	return true
end
if game_DefineFastFlag_result1_upvr then
	var4_upvw = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)
end
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local var7_upvw
local GetFFlagAvatarChatServiceEnabled_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled
local AvatarChatService_upvr = game:GetService("AvatarChatService")
local function var6_upvr() -- Line 34
	--[[ Upvalues[5]:
		[1]: var7_upvw (read and write)
		[2]: GetFFlagAvatarChatServiceEnabled_upvr (readonly)
		[3]: AvatarChatService_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: var4_upvw (read and write)
	]]
	if var7_upvw ~= nil then
		return var7_upvw
	end
	if not GetFFlagAvatarChatServiceEnabled_upvr() or _G.__TESTEZ_RUNNING_TEST__ then
		return {
			placeCamEnabled = false;
			placeMicEnabled = false;
			userCamEnabled = false;
			userCamEligible = false;
			userMicEnabled = false;
			userMicEligible = false;
		}
	end
	local pcall_result1, pcall_result2 = pcall(AvatarChatService_upvr.GetClientFeaturesAsync, AvatarChatService_upvr)
	if not pcall_result1 then
		warn("Unable to get Client Features from AvatarChatService")
		return {
			placeCamEnabled = false;
			placeMicEnabled = false;
			userCamEnabled = false;
			userCamEligible = false;
			userMicEnabled = false;
			userMicEligible = false;
		}
	end
	local module = {
		placeMicEnabled = AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.PlaceAudio);
		userMicEnabled = AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.UserAudio);
		userMicEligible = AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.UserAudioEligible);
		placeCamEnabled = AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.PlaceVideo);
		userCamEnabled = AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.UserVideo);
		userCamEligible = AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.UserVideoEligible);
	}
	if game_DefineFastFlag_result1_upvr and module.placeCamEnabled and module.userCamEligible and module.userCamEnabled and not var4_upvw() then
		module.userCamEnabled = false
	end
	var7_upvw = module
	return module
end
local getCamMicPermissions_upvr = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local default_upvr = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local function getTrackerMode_upvr() -- Line 101, Named "getTrackerMode"
	--[[ Upvalues[1]:
		[1]: FaceAnimatorService_upvr (readonly)
	]]
	if FaceAnimatorService_upvr.AudioAnimationEnabled and not FaceAnimatorService_upvr.VideoAnimationEnabled then
		return Enum.TrackerMode.Audio
	end
	if not FaceAnimatorService_upvr.AudioAnimationEnabled and FaceAnimatorService_upvr.VideoAnimationEnabled and FaceAnimatorService_upvr:IsStarted() then
		return Enum.TrackerMode.Video
	end
	if FaceAnimatorService_upvr.AudioAnimationEnabled and FaceAnimatorService_upvr.VideoAnimationEnabled and FaceAnimatorService_upvr:IsStarted() then
		return Enum.TrackerMode.AudioVideo
	end
	return Enum.TrackerMode.None
end
return {
	getPermissions = var6_upvr;
	toggleVideoAnimation = function() -- Line 87, Named "toggleVideoAnimation"
		--[[ Upvalues[5]:
			[1]: FaceAnimatorService_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr (readonly)
			[3]: var6_upvr (readonly)
			[4]: getCamMicPermissions_upvr (readonly)
			[5]: default_upvr (readonly)
		]]
		getCamMicPermissions_upvr(function() -- Line 88
			--[[ Upvalues[3]:
				[1]: FaceAnimatorService_upvr (copied, readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: var6_upvr (copied, readonly)
			]]
			if not FaceAnimatorService_upvr or not FaceAnimatorService_upvr:IsStarted() then
			elseif not game_DefineFastFlag_result1_upvr or var6_upvr().userCamEnabled then
				FaceAnimatorService_upvr.VideoAnimationEnabled = not FaceAnimatorService_upvr.VideoAnimationEnabled
			end
		end, {default_upvr.Permissions.CAMERA_ACCESS})
	end;
	getTrackerMode = getTrackerMode_upvr;
	isCameraOn = function() -- Line 121, Named "isCameraOn"
		--[[ Upvalues[1]:
			[1]: getTrackerMode_upvr (readonly)
		]]
		local getTrackerMode_result1 = getTrackerMode_upvr()
		local var20 = true
		if getTrackerMode_result1 ~= Enum.TrackerMode.AudioVideo then
			if getTrackerMode_result1 ~= Enum.TrackerMode.Video then
				var20 = false
			else
				var20 = true
			end
		end
		return var20
	end;
}