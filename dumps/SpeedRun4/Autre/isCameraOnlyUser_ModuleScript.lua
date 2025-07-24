-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:56
-- Luau version 6, Types version 3
-- Time taken: 0.002061 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local GetFFlagAvatarChatServiceEnabled_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled
local AvatarChatService_upvr = game:GetService("AvatarChatService")
local getFFlagUseCameraDevicesListener_upvr = require(RobloxGui.Modules.Flags.getFFlagUseCameraDevicesListener)
local cameraDevicesHelper_upvr = require(RobloxGui.Modules.Settings.cameraDevicesHelper)
local VideoCaptureService_upvr = game:GetService("VideoCaptureService")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return function() -- Line 14
	--[[ Upvalues[6]:
		[1]: GetFFlagAvatarChatServiceEnabled_upvr (readonly)
		[2]: AvatarChatService_upvr (readonly)
		[3]: getFFlagUseCameraDevicesListener_upvr (readonly)
		[4]: cameraDevicesHelper_upvr (readonly)
		[5]: VideoCaptureService_upvr (readonly)
		[6]: Cryo_upvr (readonly)
	]]
	if not GetFFlagAvatarChatServiceEnabled_upvr() then
		return false
	end
	local pcall_result1, pcall_result2 = pcall(AvatarChatService_upvr.GetClientFeaturesAsync, AvatarChatService_upvr)
	if not pcall_result1 then
		warn("Unable to get Client Features from AvatarChatService")
		return false
	end
	local var12
	if getFFlagUseCameraDevicesListener_upvr() then
		var12 = cameraDevicesHelper_upvr.GetDevices()
	else
		var12 = VideoCaptureService_upvr:GetCameraDevices()
	end
	if Cryo_upvr.isEmpty(var12) then
		return false
	end
	if not AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.PlaceVideo) then
		return false
	end
	if AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.PlaceAudio) and AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.UserAudio) and AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.UserAudioEligible) then
		return false
	end
	if AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.UserVideo) and AvatarChatService_upvr:IsEnabled(pcall_result2, Enum.AvatarChatServiceFeature.UserVideoEligible) then
		return true
	end
	return false
end