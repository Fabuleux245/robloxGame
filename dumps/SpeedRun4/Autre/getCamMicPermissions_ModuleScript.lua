-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:47
-- Luau version 6, Types version 3
-- Time taken: 0.012220 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local default_upvr = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local Promise_upvr = require(CorePackages.Packages.Promise)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatCoreScriptSupport()
local GetFFlagSelfieViewEnabled_upvr = require(CoreGui.RobloxGui.Modules.SelfieView.Flags.GetFFlagSelfieViewEnabled)
local GetFFlagAvatarChatServiceEnabled_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugSkipVoicePermissionCheck", false)
local var11_upvr
if GetFFlagAvatarChatServiceEnabled_upvr() then
	var11_upvr = game:GetService("AvatarChatService")
else
	var11_upvr = nil
end
local var12_upvw
local var13_upvw
local var14_upvw = false
local GetFFlagJoinWithoutMicPermissions_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagJoinWithoutMicPermissions
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("CheckCameraAvailabilityBeforePermissions", false)
local VideoCaptureService_upvr = game:GetService("VideoCaptureService")
local function removePermissionsBasedOnUserSetting_upvr(arg1, arg2, arg3) -- Line 78, Named "removePermissionsBasedOnUserSetting"
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: GetFFlagJoinWithoutMicPermissions_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[6]: VideoCaptureService_upvr (readonly)
	]]
	local var18
	if not arg1.isCameraEnabled and Cryo_upvr.List.find(var18, default_upvr.Permissions.CAMERA_ACCESS) then
		var18 = Cryo_upvr.List.removeValue(var18, default_upvr.Permissions.CAMERA_ACCESS)
	end
	if GetFFlagJoinWithoutMicPermissions_upvr() then
		if not arg1.isVoiceEnabled and Cryo_upvr.List.find(var18, default_upvr.Permissions.MICROPHONE_ACCESS) or arg3 == nil then
			var18 = Cryo_upvr.List.removeValue(var18, default_upvr.Permissions.MICROPHONE_ACCESS)
			-- KONSTANTWARNING: GOTO [93] #66
		end
	elseif not arg1.isVoiceEnabled and Cryo_upvr.List.find(var18, default_upvr.Permissions.MICROPHONE_ACCESS) then
		var18 = Cryo_upvr.List.removeValue(var18, default_upvr.Permissions.MICROPHONE_ACCESS)
	end
	if game_DefineFastFlag_result1_upvr and Cryo_upvr.List.find(var18, default_upvr.Permissions.MICROPHONE_ACCESS) then
		var18 = Cryo_upvr.List.removeValue(var18, default_upvr.Permissions.MICROPHONE_ACCESS)
	end
	if game_DefineFastFlag_result1_upvr_2 and Cryo_upvr.List.find(var18, default_upvr.Permissions.CAMERA_ACCESS) and Cryo_upvr.isEmpty(VideoCaptureService_upvr:GetCameraDevices()) then
		var18 = Cryo_upvr.List.removeValue(var18, default_upvr.Permissions.CAMERA_ACCESS)
	end
	return var18
end
local getFFlagMicrophoneDevicePermissionsPromptLogging_upvr = require(RobloxGui.Modules.Flags.getFFlagMicrophoneDevicePermissionsPromptLogging)
local MicrophoneDevicePermissionsLogging_upvr = require(CoreGui.RobloxGui.Modules.Settings.Resources.MicrophoneDevicePermissionsLogging)
local cameraDevicePermissionGrantedSignal_upvr = require(CoreGui.RobloxGui.Modules.Settings.cameraDevicePermissionGrantedSignal)
local getFFlagEnableAnalyticsForCameraDevicePermissions_upvr = require(RobloxGui.Modules.Flags.getFFlagEnableAnalyticsForCameraDevicePermissions)
local RunService_upvr = game:GetService("RunService")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local getFFlagDoNotPromptCameraPermissionsOnMount_upvr = require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local TrackerMenu_upvr = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType_upvr = require(RobloxGui.Modules.Tracker.TrackerPromptType)
local function requestPermissions_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 132, Named "requestPermissions"
	--[[ Upvalues[18]:
		[1]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[2]: GetFFlagSelfieViewEnabled_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: default_upvr (readonly)
		[5]: removePermissionsBasedOnUserSetting_upvr (readonly)
		[6]: var14_upvw (read and write)
		[7]: Promise_upvr (readonly)
		[8]: getFFlagMicrophoneDevicePermissionsPromptLogging_upvr (readonly)
		[9]: MicrophoneDevicePermissionsLogging_upvr (readonly)
		[10]: var12_upvw (read and write)
		[11]: var13_upvw (read and write)
		[12]: cameraDevicePermissionGrantedSignal_upvr (readonly)
		[13]: getFFlagEnableAnalyticsForCameraDevicePermissions_upvr (readonly)
		[14]: RunService_upvr (readonly)
		[15]: RbxAnalyticsService_upvr (readonly)
		[16]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (readonly)
		[17]: TrackerMenu_upvr (readonly)
		[18]: TrackerPromptType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 8. Error Block 35 start (CF ANALYSIS FAILED)
	if Cryo_upvr.List.find(arg4, default_upvr.Permissions.CAMERA_ACCESS) == nil then
		-- KONSTANTWARNING: GOTO [23] #19
	end
	-- KONSTANTERROR: [7] 8. Error Block 35 end (CF ANALYSIS FAILED)
end
local function tryGetCachedResults_upvr(arg1) -- Line 300, Named "tryGetCachedResults"
	--[[ Upvalues[4]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: var13_upvw (read and write)
		[3]: var12_upvw (read and write)
		[4]: default_upvr (readonly)
	]]
	local var32
	if var32 then
		var32 = true
		var13_upvw = var32
	end
	var32 = var12_upvw
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var32 = var13_upvw
		return var32 == nil
	end
	if var32 == nil or INLINED() then
		var32 = nil
		return var32
	end
	var32 = false
	for _, v in arg1 do
		if v ~= default_upvr.Permissions.MICROPHONE_ACCESS and v ~= default_upvr.Permissions.CAMERA_ACCESS then
			var32 = true
		end
	end
	if var32 then
		return nil
	end
	return {
		hasCameraPermissions = var12_upvw or false;
		hasMicPermissions = var13_upvw or false;
	}
end
local tbl_2_upvr = {}
local GetFFlagGetRawMicrophonePermissions_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGetRawMicrophonePermissions
local function getCamMicPermissions_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 332, Named "getCamMicPermissions"
	--[[ Upvalues[12]:
		[1]: default_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: getCamMicPermissions_upvr (readonly)
		[4]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[5]: GetFFlagSelfieViewEnabled_upvr (readonly)
		[6]: GetFFlagGetRawMicrophonePermissions_upvr (readonly)
		[7]: tryGetCachedResults_upvr (readonly)
		[8]: var14_upvw (read and write)
		[9]: GetFFlagAvatarChatServiceEnabled_upvr (readonly)
		[10]: Promise_upvr (readonly)
		[11]: var11_upvr (readonly)
		[12]: requestPermissions_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var53
	if arg2 then
		local _ = arg2
	else
		local tbl_7_upvw = {}
		var53 = default_upvr.Permissions.MICROPHONE_ACCESS
		tbl_7_upvw[1] = var53
		tbl_7_upvw[2] = default_upvr.Permissions.CAMERA_ACCESS
	end
	local function invokeNextRequest_upvr() -- Line 350, Named "invokeNextRequest"
		--[[ Upvalues[2]:
			[1]: tbl_2_upvr (copied, readonly)
			[2]: getCamMicPermissions_upvr (copied, readonly)
		]]
		if tbl_2_upvr[1] then
			local _1_4 = tbl_2_upvr[1]
			table.remove(tbl_2_upvr, 1)
			getCamMicPermissions_upvr(_1_4.callback, _1_4.permissionsToRequest, _1_4.shouldNotRequestPerms, _1_4.context, _1_4.getRawPermission)
		end
	end
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr or GetFFlagSelfieViewEnabled_upvr() then
		if GetFFlagGetRawMicrophonePermissions_upvr() then
		else
		end
		if true then
			local tryGetCachedResults_upvr_result1_2 = tryGetCachedResults_upvr(tbl_7_upvw)
			if tryGetCachedResults_upvr_result1_2 then
				arg1(tryGetCachedResults_upvr_result1_2)
				if tbl_2_upvr[1] then
					local _1 = tbl_2_upvr[1]
					table.remove(tbl_2_upvr, 1)
					getCamMicPermissions_upvr(_1.callback, _1.permissionsToRequest, _1.shouldNotRequestPerms, _1.context, _1.getRawPermission)
				end
				return
			end
		end
	end
	if var14_upvw then
		local tbl_3 = {}
		tbl_3.callback = arg1
		tbl_3.permissionsToRequest = arg2
		tbl_3.shouldNotRequestPerms = arg3
		tbl_3.context = arg4
		tbl_3.getRawPermission = arg5
		table.insert(tbl_2_upvr, tbl_3)
		return
	end
	var14_upvw = true
	if GetFFlagGetRawMicrophonePermissions_upvr() and arg5 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return default_upvr:hasPermissions(tbl_7_upvw):andThen(function(arg1_6) -- Line 392
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: var14_upvw (copied, read and write)
				[3]: tbl_2_upvr (copied, readonly)
				[4]: getCamMicPermissions_upvr (copied, readonly)
			]]
			arg1(arg1_6)
			var14_upvw = false
			if tbl_2_upvr[1] then
				local _1_3 = tbl_2_upvr[1]
				table.remove(tbl_2_upvr, 1)
				getCamMicPermissions_upvr(_1_3.callback, _1_3.permissionsToRequest, _1_3.shouldNotRequestPerms, _1_3.context, _1_3.getRawPermission)
			end
		end)
	end
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr or GetFFlagSelfieViewEnabled_upvr() then
		if GetFFlagAvatarChatServiceEnabled_upvr() then
			return Promise_upvr.new(function(arg1_7, arg2_4) -- Line 401
				--[[ Upvalues[1]:
					[1]: var11_upvr (copied, readonly)
				]]
				if var11_upvr.ClientFeaturesInitialized then
					arg1_7({
						isVoiceEnabled = var11_upvr:IsEnabled(var11_upvr.ClientFeatures, Enum.AvatarChatServiceFeature.UserAudio);
						isCameraEnabled = var11_upvr:IsEnabled(var11_upvr.ClientFeatures, Enum.AvatarChatServiceFeature.UserVideo);
					})
				else
					local var65_upvw
					var65_upvw = var11_upvr:GetPropertyChangedSignal("ClientFeatures"):Connect(function() -- Line 417
						--[[ Upvalues[3]:
							[1]: var65_upvw (read and write)
							[2]: var11_upvr (copied, readonly)
							[3]: arg1_7 (readonly)
						]]
						var65_upvw:Disconnect()
						arg1_7({
							isVoiceEnabled = var11_upvr:IsEnabled(var11_upvr.ClientFeatures, Enum.AvatarChatServiceFeature.UserAudio);
							isCameraEnabled = var11_upvr:IsEnabled(var11_upvr.ClientFeatures, Enum.AvatarChatServiceFeature.UserVideo);
						})
					end)
				end
			end):andThen(function(arg1_8) -- Line 432
				--[[ Upvalues[6]:
					[1]: requestPermissions_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: invokeNextRequest_upvr (readonly)
					[4]: tbl_7_upvw (read and write)
					[5]: arg3 (readonly)
					[6]: arg4 (readonly)
				]]
				requestPermissions_upvr(arg1_8, arg1, invokeNextRequest_upvr, tbl_7_upvw, arg3, arg4)
			end)
		end
	end
	return Promise_upvr.new(function(arg1_9, arg2_5) -- Line 445
		arg1_9({
			isVoiceEnabled = false;
			isCameraEnabled = false;
		})
	end)
end
return getCamMicPermissions_upvr