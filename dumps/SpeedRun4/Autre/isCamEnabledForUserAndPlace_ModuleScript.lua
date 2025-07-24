-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:56
-- Luau version 6, Types version 3
-- Time taken: 0.002631 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("DisableCameraOnLowSpecDevices2", false)
local IXPService_upvr = game:GetService("IXPService")
local game_DefineFastString_result1_upvr = game:DefineFastString("DisableCameraOnLowSpecDevicesIXPLayer", "AvatarChat.DisableOnLowSpecAndroid")
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("DisableCameraOnLowSpecDevicesIXPField", "DisableOnAndroid")
local function ShouldCheckDeviceSpecs_upvr() -- Line 29, Named "ShouldCheckDeviceSpecs"
	--[[ Upvalues[4]:
		[1]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[2]: IXPService_upvr (readonly)
		[3]: game_DefineFastString_result1_upvr (readonly)
		[4]: game_DefineFastString_result1_upvr_2 (readonly)
	]]
	if game_DefineFastFlag_result1_upvr_4 then
		local pcall_result1, pcall_result2 = pcall(function() -- Line 32
			--[[ Upvalues[2]:
				[1]: IXPService_upvr (copied, readonly)
				[2]: game_DefineFastString_result1_upvr (copied, readonly)
			]]
			return IXPService_upvr:GetUserLayerVariables(game_DefineFastString_result1_upvr)
		end)
		if not pcall_result1 or not pcall_result2 or pcall_result2[game_DefineFastString_result1_upvr_2] == nil then
			return false
		end
		IXPService_upvr:LogUserLayerExposure(game_DefineFastString_result1_upvr)
		return pcall_result2[game_DefineFastString_result1_upvr_2]
	end
	return false
end
local GetFFlagAvatarChatServiceEnabled_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled
local AvatarChatService_upvr = game:GetService("AvatarChatService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("OnlyShowToastOnceInLifetime2", false)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("DisableCameraToastShownStorageKey")
local AppStorageService_upvr = game:GetService("AppStorageService")
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("DebugAlwaysShowDisableCameraToast", false)
local TrackerMenu_upvr = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType_upvr = require(RobloxGui.Modules.Tracker.TrackerPromptType)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("OnlyShowToastOnce2", false)
local MemStorageService_upvr = game:GetService("MemStorageService")
local getFFlagEnableAlwaysAvailableCamera_upvr = require(RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera)
local getFFlagUseCameraDevicesListener_upvr = require(RobloxGui.Modules.Flags.getFFlagUseCameraDevicesListener)
local cameraDevicesHelper_upvr = require(RobloxGui.Modules.Settings.cameraDevicesHelper)
local VideoCaptureService_upvr = game:GetService("VideoCaptureService")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return function() -- Line 47
	--[[ Upvalues[17]:
		[1]: GetFFlagAvatarChatServiceEnabled_upvr (readonly)
		[2]: AvatarChatService_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[4]: ShouldCheckDeviceSpecs_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: game_GetEngineFeature_result1_upvr (readonly)
		[7]: AppStorageService_upvr (readonly)
		[8]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[9]: TrackerMenu_upvr (readonly)
		[10]: TrackerPromptType_upvr (readonly)
		[11]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[12]: MemStorageService_upvr (readonly)
		[13]: getFFlagEnableAlwaysAvailableCamera_upvr (readonly)
		[14]: getFFlagUseCameraDevicesListener_upvr (readonly)
		[15]: cameraDevicesHelper_upvr (readonly)
		[16]: VideoCaptureService_upvr (readonly)
		[17]: Cryo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 60 start (CF ANALYSIS FAILED)
	do
		return false
	end
	-- KONSTANTERROR: [8] 7. Error Block 60 end (CF ANALYSIS FAILED)
end