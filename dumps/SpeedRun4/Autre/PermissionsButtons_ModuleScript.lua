-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:23
-- Luau version 6, Types version 3
-- Time taken: 0.036459 seconds

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local StarterGui_upvr = game:GetService("StarterGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local default_upvr_2 = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local getCamMicPermissions_upvr = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local isCamEnabledForUserAndPlace_upvr = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)
local displayCameraDeniedToast_upvw = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.displayCameraDeniedToast)
local Images = UIBlox.App.ImageSet.Images
local Modules = CoreGui.RobloxGui.Modules
local default_upvr = require(Modules.VoiceChat.VoiceChatServiceManager).default
local Constants_upvr = require(Modules.VoiceChat.Constants)
local any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatCoreScriptSupport()
local GetFFlagJoinWithoutMicPermissions_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagJoinWithoutMicPermissions
local GetFFlagEnableInExpVoiceUpsell_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceUpsell)
local GetFFlagPassShouldRequestPermsArg_upvr = require(RobloxGui.Modules.Flags.GetFFlagPassShouldRequestPermsArg)
local GetFFlagUseMicPermForEnrollment_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUseMicPermForEnrollment
local GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints
local GetFFlagEnableShowVoiceUI_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableShowVoiceUI
local GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableSeamlessVoiceConnectDisconnectButton)
if require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)() then
	displayCameraDeniedToast_upvw = require(RobloxGui.Modules.VoiceChat.Helpers.displayCameraDeniedToast)
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("PermissionsButtons")
any_extend_result1.validateProps = t.strictInterface({
	isPortrait = t.boolean;
	isSmallTouchScreen = t.boolean;
	isTenFootInterface = t.boolean;
	ZIndex = t.number;
	LayoutOrder = t.number;
	shouldFillScreen = t.boolean;
	selfViewOpen = t.boolean;
	useNewMenuTheme = t.boolean;
	hubRef = t.any;
})
local function createDivider_upvr(arg1) -- Line 109, Named "createDivider"
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local module = {}
	module.LayoutOrder = arg1
	module.Size = UDim2.new(0, 2, 0, 24)
	module.BorderSizePixel = 0
	module.BackgroundTransparency = 0.2
	return Roact_upvr.createElement("Frame", module, {
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		});
	})
end
local VideoCaptureService_upvr = game:GetService("VideoCaptureService")
local any_new_result1_upvr_2 = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local selfViewVisibilityUpdatedSignal_upvr = require(RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)
local publicApi_upvr = require(RobloxGui.Modules.SelfView.publicApi)
local any_new_result1_upvr = require(RobloxGui.Modules.SelfView.Analytics).new()
local toggleSelfViewSignal_upvr = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local GetFFlagEnableInExpJoinVoiceAnalytics_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpJoinVoiceAnalytics)
local GetFFlagEnableConnectDisconnectButtonAnalytics_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectButtonAnalytics)
local PromptType_upvr = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
local AppStorageService_upvr = game:GetService("AppStorageService")
local GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectInSettingsAndChrome)
local VOICE_JOIN_PROGRESS_upvr = Constants_upvr.VOICE_JOIN_PROGRESS
function any_extend_result1.init(arg1) -- Line 122
	--[[ Upvalues[27]:
		[1]: FaceAnimatorService_upvr (readonly)
		[2]: VideoCaptureService_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[5]: StarterGui_upvr (readonly)
		[6]: isCamEnabledForUserAndPlace_upvr (readonly)
		[7]: GetFFlagUseMicPermForEnrollment_upvr (readonly)
		[8]: GetFFlagEnableInExpVoiceUpsell_upvr (readonly)
		[9]: GetFFlagPassShouldRequestPermsArg_upvr (readonly)
		[10]: any_new_result1_upvr_2 (readonly)
		[11]: selfViewVisibilityUpdatedSignal_upvr (readonly)
		[12]: publicApi_upvr (readonly)
		[13]: Constants_upvr (readonly)
		[14]: any_new_result1_upvr (readonly)
		[15]: GetFFlagEnableShowVoiceUI_upvr (readonly)
		[16]: displayCameraDeniedToast_upvw (read and write)
		[17]: getCamMicPermissions_upvr (readonly)
		[18]: default_upvr_2 (readonly)
		[19]: toggleSelfViewSignal_upvr (readonly)
		[20]: GetFFlagEnableInExpJoinVoiceAnalytics_upvr (readonly)
		[21]: GetFFlagEnableConnectDisconnectButtonAnalytics_upvr (readonly)
		[22]: GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr (readonly)
		[23]: PromptType_upvr (readonly)
		[24]: AppStorageService_upvr (readonly)
		[25]: GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr (readonly)
		[26]: GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr (readonly)
		[27]: VOICE_JOIN_PROGRESS_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var182
	if FaceAnimatorService_upvr then
		if FaceAnimatorService_upvr:IsStarted() then
			var182 = FaceAnimatorService_upvr
			if var182.VideoAnimationEnabled then
				var182 = VideoCaptureService_upvr
			end
		end
	end
	if default_upvr.localMuted ~= nil and not default_upvr.localMuted then
		var182 = true
	else
		var182 = false
	end
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		if StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView) then
			if not isCamEnabledForUserAndPlace_upvr() then
				if not arg1.state.hasMicPermissions then
				end
			end
		end
	end
	local tbl_45 = {
		allPlayersMuted = false;
		microphoneEnabled = var182;
	}
	local var184
	if default_upvr.localMuted ~= nil then
		var184 = false
	else
		var184 = true
	end
	tbl_45.isVoiceConnecting = var184
	tbl_45.voiceServiceInitialized = false
	tbl_45.cameraEnabled = var182.Active
	tbl_45.selfViewOpen = arg1.props.selfViewOpen
	tbl_45.showSelfView = arg1.state.hasCameraPermissions
	tbl_45.hasCameraPermissions = false
	tbl_45.hasMicPermissions = false
	if GetFFlagUseMicPermForEnrollment_upvr() then
	else
	end
	tbl_45.isFetchingMicPermissions = nil
	arg1:setState(tbl_45)
	default_upvr:asyncInit():andThen(function() -- Line 153
		--[[ Upvalues[4]:
			[1]: default_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GetFFlagEnableInExpVoiceUpsell_upvr (copied, readonly)
			[4]: GetFFlagPassShouldRequestPermsArg_upvr (copied, readonly)
		]]
		if default_upvr:getService() then
			arg1:setState({
				voiceServiceInitialized = true;
			})
			if GetFFlagEnableInExpVoiceUpsell_upvr() and GetFFlagPassShouldRequestPermsArg_upvr() and not arg1.state.hasMicPermissions then
				arg1:getMicPermission(false)
			end
		end
	end):catch(function() -- Line 172
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_2 (copied, readonly)
		]]
		any_new_result1_upvr_2:warning("VoiceChatServiceManager failed to initialize")
	end)
	arg1.selfViewVisibilityUpdatedSignal = selfViewVisibilityUpdatedSignal_upvr:connect(function() -- Line 176
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: publicApi_upvr (copied, readonly)
		]]
		arg1:setState({
			selfViewOpen = publicApi_upvr.getSelfViewIsOpenAndVisible();
		})
	end)
	function arg1.toggleMuteAll() -- Line 183
		--[[ Upvalues[3]:
			[1]: default_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Constants_upvr (copied, readonly)
		]]
		if not default_upvr:getService() then
		else
			local var191 = not arg1.state.allPlayersMuted
			default_upvr:MuteAll(var191, Constants_upvr.VOICE_CONTEXT_TYPE.IN_GAME_MENU)
			arg1:setState({
				allPlayersMuted = var191;
			})
		end
	end
	function arg1.toggleMuteAllIcon(arg1_17) -- Line 198
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_30 = {}
		tbl_30.allPlayersMuted = arg1_17
		arg1:setState(tbl_30)
	end
	function arg1.toggleMic() -- Line 206
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: default_upvr (copied, readonly)
			[3]: any_new_result1_upvr (copied, readonly)
		]]
		if arg1.state.isVoiceConnecting then
			default_upvr:ShowVoiceChatLoadingMessage()
		else
			if not default_upvr:getService() then return end
			default_upvr:ToggleMic("InGameMenuPermissionsBar")
			any_new_result1_upvr:setLastCtx("inExperienceEscapeMenu")
			arg1:setState({
				microphoneEnabled = not default_upvr.localMuted;
			})
		end
	end
	if GetFFlagEnableShowVoiceUI_upvr() then
		local tbl_17 = {}
		if default_upvr.voiceUIVisible ~= nil then
		else
		end
		tbl_17.isVoiceUIVisible = false
		arg1:setState(tbl_17)
		default_upvr.showVoiceUI.Event:Connect(function() -- Line 234
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				isVoiceUIVisible = true;
			})
		end)
		default_upvr.hideVoiceUI.Event:Connect(function() -- Line 239
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				isVoiceUIVisible = false;
			})
		end)
	end
	function arg1.toggleVideo() -- Line 247
		--[[ Upvalues[3]:
			[1]: FaceAnimatorService_upvr (copied, readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 7 start (CF ANALYSIS FAILED)
		if not FaceAnimatorService_upvr:IsStarted() then
			-- KONSTANTERROR: [7] 7. Error Block 3 start (CF ANALYSIS FAILED)
			do
				return
			end
			-- KONSTANTERROR: [7] 7. Error Block 3 end (CF ANALYSIS FAILED)
		end
		FaceAnimatorService_upvr.VideoAnimationEnabled = not FaceAnimatorService_upvr.VideoAnimationEnabled
		any_new_result1_upvr:setLastCtx("inExperienceEscapeMenu")
		arg1:setState({
			cameraEnabled = FaceAnimatorService_upvr.VideoAnimationEnabled;
		})
		-- KONSTANTERROR: [2] 3. Error Block 7 end (CF ANALYSIS FAILED)
	end
	function arg1.onVideoButtonPressed() -- Line 262
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: displayCameraDeniedToast_upvw (copied, read and write)
			[3]: getCamMicPermissions_upvr (copied, readonly)
			[4]: default_upvr_2 (copied, readonly)
		]]
		if not arg1.state.hasCameraPermissions then
			getCamMicPermissions_upvr(function(arg1_18) -- Line 265
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: displayCameraDeniedToast_upvw (copied, read and write)
				]]
				arg1:setState({
					hasCameraPermissions = arg1_18.hasCameraPermissions;
				})
				if arg1_18.hasCameraPermissions then
					arg1:toggleVideo()
				else
					displayCameraDeniedToast_upvw()
				end
			end, {default_upvr_2.Permissions.CAMERA_ACCESS})
		else
			arg1:toggleVideo()
		end
	end
	function arg1.toggleSelfView() -- Line 283
		--[[ Upvalues[2]:
			[1]: toggleSelfViewSignal_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		toggleSelfViewSignal_upvr:fire()
		arg1:setState({
			selfViewOpen = not arg1.state.selfViewOpen;
		})
	end
	function arg1.muteChangedEvent(arg1_19) -- Line 290
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			microphoneEnabled = not arg1_19;
		})
	end
	function arg1.onSelfViewVisibilityUpdated() -- Line 296
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: publicApi_upvr (copied, readonly)
		]]
		arg1:setState({
			selfViewOpen = publicApi_upvr.getSelfViewIsOpenAndVisible();
		})
	end
	function arg1.onCoreGuiChanged() -- Line 302
		--[[ Upvalues[4]:
			[1]: StarterGui_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (copied, readonly)
			[4]: isCamEnabledForUserAndPlace_upvr (copied, readonly)
		]]
		if arg1.state.showSelfView ~= StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView) then
			local var215 = any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr
			if var215 then
				var215 = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
				if var215 then
					var215 = isCamEnabledForUserAndPlace_upvr()
					if not var215 then
						var215 = arg1.state.hasMicPermissions
						if not var215 then
							var215 = arg1.state.hasCameraPermissions
						end
					end
				end
			end
			arg1:setState({
				showSelfView = var215;
			})
		end
	end
	function arg1.updateVideoCaptureEnabled() -- Line 314
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: FaceAnimatorService_upvr (copied, readonly)
		]]
		arg1:setState({
			cameraEnabled = FaceAnimatorService_upvr.VideoAnimationEnabled;
		})
	end
	function arg1.onVoiceStateChange(arg1_20, arg2) -- Line 320
		--[[ Upvalues[2]:
			[1]: default_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var220
		if default_upvr:GetVoiceStateFromEnum(arg2) ~= default_upvr.VOICE_STATE.CONNECTING then
			var220 = false
		else
			var220 = true
		end
		if not var220 and arg1.state.isVoiceConnecting then
			arg1:setState({
				isVoiceConnecting = false;
			})
		end
	end
	function arg1.onJoinVoicePressed() -- Line 331
		--[[ Upvalues[9]:
			[1]: default_upvr (copied, readonly)
			[2]: GetFFlagEnableInExpJoinVoiceAnalytics_upvr (copied, readonly)
			[3]: GetFFlagEnableConnectDisconnectButtonAnalytics_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr (copied, readonly)
			[6]: PromptType_upvr (copied, readonly)
			[7]: AppStorageService_upvr (copied, readonly)
			[8]: Constants_upvr (copied, readonly)
			[9]: GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
		if GetFFlagEnableInExpJoinVoiceAnalytics_upvr() and not GetFFlagEnableConnectDisconnectButtonAnalytics_upvr() then
			default_upvr.Analytics:reportJoinVoiceButtonEvent("clicked", arg1:GetInExpJoinVoiceAnalyticsData())
		end
		if GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr() and default_upvr.previousGroupId then
			default_upvr:RejoinPreviousChannel()
			default_upvr:showPrompt(PromptType_upvr.JoinVoice)
			default_upvr:ShowVoiceUI()
			-- KONSTANTWARNING: GOTO [178] #135
		end
		-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [46] 37. Error Block 55 start (CF ANALYSIS FAILED)
		if GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr() and default_upvr.isShowingFTUX then
			default_upvr.hideFTUXSignal:Fire()
			default_upvr:HideFTUX(AppStorageService_upvr)
		elseif GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr() and default_upvr:UserVoiceEnabled() then
			default_upvr.attemptVoiceRejoin:Fire()
		else
			local var223
			if default_upvr:UserOnlyEligibleForVoice() then
				default_upvr:SetInExpUpsellEntrypoint(Constants_upvr.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE)
				if var223 == nil then
					var223 = Constants_upvr.IN_EXP_UPSELL_VARIANT.VARIANT1
				end
				default_upvr:showPrompt(default_upvr:GetInExpUpsellPromptFromEnum(var223))
			elseif not GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr() and default_upvr:UserVoiceEnabled() and not arg1.state.hasMicPermissions then
				default_upvr:showPrompt(PromptType_upvr.Permission)
			elseif GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr() and not default_upvr:UserVoiceEnabled() and default_upvr:FetchPhoneVerificationUpsell(Constants_upvr.IN_EXP_PHONE_UPSELL_IXP_LAYER) == Constants_upvr.PHONE_UPSELL_VALUE_PROP.VoiceChat then
				arg1.props.hubRef:SetVisibility(false, true)
				default_upvr:ShowInExperiencePhoneVoiceUpsell(Constants_upvr.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE, Constants_upvr.IN_EXP_PHONE_UPSELL_IXP_LAYER)
			end
		end
		if GetFFlagEnableConnectDisconnectButtonAnalytics_upvr() and GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr() then
			if default_upvr:getService() then
				local var225_upvw
				var225_upvw = default_upvr:getService().StateChanged:Connect(function(arg1_21, arg2) -- Line 390
					--[[ Upvalues[2]:
						[1]: default_upvr (copied, readonly)
						[2]: var225_upvw (read and write)
					]]
					if arg1_21 ~= arg2 then
						default_upvr.Analytics:reportJoinVoiceButtonEventWithVoiceSessionId("clicked", default_upvr:GetConnectDisconnectButtonAnalyticsData(true))
						var225_upvw:Disconnect()
					end
				end)
				return
			end
			default_upvr.Analytics:reportJoinVoiceButtonEventWithVoiceSessionId("clicked", default_upvr:GetConnectDisconnectButtonAnalyticsData(false))
		end
		-- KONSTANTERROR: [46] 37. Error Block 55 end (CF ANALYSIS FAILED)
	end
	function arg1.onLeaveVoicePressed() -- Line 408
		--[[ Upvalues[3]:
			[1]: GetFFlagEnableConnectDisconnectButtonAnalytics_upvr (copied, readonly)
			[2]: default_upvr (copied, readonly)
			[3]: GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr (copied, readonly)
		]]
		if GetFFlagEnableConnectDisconnectButtonAnalytics_upvr() then
			default_upvr.Analytics:reportLeaveVoiceButtonEvent("clicked", default_upvr:GetConnectDisconnectButtonAnalyticsData(true))
		end
		default_upvr:Leave()
		if not GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr() then
			default_upvr:SetVoiceConnectCookieValue(false)
		end
	end
	function arg1.voiceJoinProgressCallback(arg1_22) -- Line 421
		--[[ Upvalues[3]:
			[1]: VOICE_JOIN_PROGRESS_upvr (copied, readonly)
			[2]: default_upvr (copied, readonly)
			[3]: Constants_upvr (copied, readonly)
		]]
		if arg1_22 == VOICE_JOIN_PROGRESS_upvr.Joined and default_upvr.inExpUpsellEntrypoint == Constants_upvr.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
			default_upvr:ToggleMic()
		end
	end
end
function any_extend_result1.getPermissions(arg1) -- Line 434
	--[[ Upvalues[1]:
		[1]: getCamMicPermissions_upvr (readonly)
	]]
	getCamMicPermissions_upvr(function(arg1_23) -- Line 435
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			hasCameraPermissions = arg1_23.hasCameraPermissions;
			hasMicPermissions = arg1_23.hasMicPermissions;
		})
	end, nil, nil, "PermissionsButtons.getPermissions")
end
function any_extend_result1.getMicPermission(arg1, arg2) -- Line 447
	--[[ Upvalues[4]:
		[1]: GetFFlagUseMicPermForEnrollment_upvr (readonly)
		[2]: getCamMicPermissions_upvr (readonly)
		[3]: default_upvr_2 (readonly)
		[4]: GetFFlagPassShouldRequestPermsArg_upvr (readonly)
	]]
	local var234
	if GetFFlagPassShouldRequestPermsArg_upvr() and arg2 ~= nil then
		var234 = not arg2
	else
		var234 = nil
	end
	getCamMicPermissions_upvr(function(arg1_24) -- Line 448
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GetFFlagUseMicPermForEnrollment_upvr (copied, readonly)
		]]
		local tbl_31 = {}
		local hasMicPermissions_2 = arg1_24.hasMicPermissions
		tbl_31.hasMicPermissions = hasMicPermissions_2
		if GetFFlagUseMicPermForEnrollment_upvr() then
			hasMicPermissions_2 = false
		else
			hasMicPermissions_2 = nil
		end
		tbl_31.isFetchingMicPermissions = hasMicPermissions_2
		arg1:setState(tbl_31)
	end, {default_upvr_2.Permissions.MICROPHONE_ACCESS}, var234, "PermissionsButtons.getMicPermission")
end
function any_extend_result1.getCameraPermissionWithoutRequest(arg1) -- Line 465
	--[[ Upvalues[2]:
		[1]: getCamMicPermissions_upvr (readonly)
		[2]: default_upvr_2 (readonly)
	]]
	getCamMicPermissions_upvr(function(arg1_25) -- Line 466
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			hasCameraPermissions = arg1_25.hasCameraPermissions;
		})
	end, {default_upvr_2.Permissions.CAMERA_ACCESS}, true)
end
function any_extend_result1.getCameraButtonVisibleAtMount(arg1) -- Line 474
	--[[ Upvalues[1]:
		[1]: isCamEnabledForUserAndPlace_upvr (readonly)
	]]
	return isCamEnabledForUserAndPlace_upvr()
end
local GetFStringVoiceUpsellLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringVoiceUpsellLayer
local IXPService_upvr = game:GetService("IXPService")
function any_extend_result1.getJoinVoiceButtonVisibleAtMount(arg1) -- Line 478
	--[[ Upvalues[6]:
		[1]: GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: GetFStringVoiceUpsellLayer_upvr (readonly)
		[4]: IXPService_upvr (readonly)
		[5]: GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	if GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr() and default_upvr:IsSeamlessVoice() then
		local var243 = not arg1.state.isVoiceUIVisible
		if not var243 then
			var243 = default_upvr.isShowingFTUX
		end
		return var243
	end
	if default_upvr:UserVoiceEnabled() then
		if arg1.state.isFetchingMicPermissions then
			return false
		end
		if not arg1.state.hasMicPermissions then
			local any_FetchAgeVerificationOverlay_result1 = default_upvr:FetchAgeVerificationOverlay(false)
			if any_FetchAgeVerificationOverlay_result1 then
				if any_FetchAgeVerificationOverlay_result1.elegibleToSeeVoiceUpsell then
					local var238_result1 = GetFStringVoiceUpsellLayer_upvr()
					if var238_result1 ~= "" then
						IXPService_upvr:LogUserLayerExposure(var238_result1)
					end
				end
			end
			return default_upvr:UserInInExperienceUpsellTreatment()
		end
	end
	if GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr() and not default_upvr:UserOnlyEligibleForVoice() and not default_upvr:UserVoiceEnabled() and default_upvr:FetchPhoneVerificationUpsell(Constants_upvr.IN_EXP_PHONE_UPSELL_IXP_LAYER) == Constants_upvr.PHONE_UPSELL_VALUE_PROP.VoiceChat then
		return true
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not default_upvr:UserOnlyEligibleForVoice() then
		return false
	end
	return default_upvr:UserInInExperienceUpsellTreatment()
end
local GetFFlagHideVoiceDisconnectButton_upvr = require(RobloxGui.Modules.Flags.GetFFlagHideVoiceDisconnectButton)
function any_extend_result1.getLeaveVoiceButtonVisibleAtMount(arg1) -- Line 526
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr (readonly)
		[2]: GetFFlagHideVoiceDisconnectButton_upvr (readonly)
		[3]: default_upvr (readonly)
	]]
	if GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr() and not GetFFlagHideVoiceDisconnectButton_upvr() then
		if default_upvr:IsSeamlessVoice() then
			local isVoiceUIVisible_2 = arg1.state.isVoiceUIVisible
			if isVoiceUIVisible_2 then
				isVoiceUIVisible_2 = not default_upvr.isShowingFTUX
			end
			return isVoiceUIVisible_2
		end
	end
	return false
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 539
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableShowVoiceUI_upvr (readonly)
		[2]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[3]: StarterGui_upvr (readonly)
		[4]: isCamEnabledForUserAndPlace_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 5. Error Block 20 start (CF ANALYSIS FAILED)
	local var250
	if var250 ~= arg3.hasMicPermissions or GetFFlagEnableShowVoiceUI_upvr() and arg1.state.isVoiceUIVisible ~= arg3.isVoiceUIVisible then
		-- KONSTANTERROR: [27] 16. Error Block 18 start (CF ANALYSIS FAILED)
		if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
			if StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView) then
				if not isCamEnabledForUserAndPlace_upvr() then
					if not arg1.state.hasMicPermissions then
					end
				end
			end
		end
		arg1:setState({
			showSelfView = arg1.state.hasCameraPermissions;
		})
		-- KONSTANTERROR: [27] 16. Error Block 18 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [8] 5. Error Block 20 end (CF ANALYSIS FAILED)
end
function any_extend_result1.didMount(arg1) -- Line 554
	--[[ Upvalues[2]:
		[1]: GetFFlagJoinWithoutMicPermissions_upvr (readonly)
		[2]: default_upvr (readonly)
	]]
	local var252
	if GetFFlagJoinWithoutMicPermissions_upvr() then
		var252 = not default_upvr:IsSeamlessVoice()
	else
		var252 = nil
	end
	arg1:getMicPermission(var252)
	arg1:getCameraPermissionWithoutRequest()
end
function any_extend_result1.isShowingPermissionButtons(arg1) -- Line 561
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableShowVoiceUI_upvr (readonly)
		[2]: GetFFlagJoinWithoutMicPermissions_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: GetFFlagEnableInExpVoiceUpsell_upvr (readonly)
	]]
	if GetFFlagEnableShowVoiceUI_upvr() then
		local var254
		if var254 then
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var254 = arg1.state.isVoiceUIVisible
				return var254
			end
			if not arg1.state.voiceServiceInitialized or default_upvr:VoiceChatEnded() or not INLINED_2() then
				var254 = arg1.state.hasCameraPermissions
				if not var254 then
					var254 = arg1.state.showSelfView
					if not var254 then
						var254 = arg1:getCameraButtonVisibleAtMount()
						if not var254 then
							var254 = GetFFlagEnableInExpVoiceUpsell_upvr()
							if var254 then
								var254 = arg1:getJoinVoiceButtonVisibleAtMount()
							end
						end
					end
				end
			end
			return var254
		end
	end
	var254 = arg1.state.hasMicPermissions
	if not var254 then
		var254 = arg1.state.hasCameraPermissions
		if not var254 then
			var254 = arg1.state.showSelfView
			if not var254 then
				var254 = arg1:getCameraButtonVisibleAtMount()
				if not var254 then
					var254 = GetFFlagEnableInExpVoiceUpsell_upvr()
					if var254 then
						var254 = arg1:getJoinVoiceButtonVisibleAtMount()
					end
				end
			end
		end
	end
	return var254
end
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
function any_extend_result1.GetInExpJoinVoiceAnalyticsData(arg1) -- Line 581
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	local var257 = ""
	if game_GetEngineFeature_result1_upvr then
		var257 = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	return game.GameId, game.PlaceId, var257
end
local GetFFlagUpdateSelfieViewOnBan_upvr = require(RobloxGui.Modules.Flags.GetFFlagUpdateSelfieViewOnBan)
local GetFFlagInvertMuteAllPermissionButton_upvr = require(RobloxGui.Modules.Flags.GetFFlagInvertMuteAllPermissionButton)
local icons_controls_microphone_upvr = Images["icons/controls/microphone"]
local icons_controls_microphoneMute_upvr = Images["icons/controls/microphoneMute"]
local GetFFlagFixPermissionsButtonsEvents_upvr = require(RobloxGui.Modules.Settings.Flags.GetFFlagFixPermissionsButtonsEvents)
local PermissionButton_upvr = require(Modules.Settings.Components.PermissionButton)
local icons_controls_headphone_upvr = Images["icons/controls/headphone"]
local icons_controls_headphoneDeafen_upvr = Images["icons/controls/headphoneDeafen"]
local icons_controls_publicAudioJoin_upvr = Images["icons/controls/publicAudioJoin"]
local icons_controls_publicAudioLeave_upvr = Images["icons/controls/publicAudioLeave"]
local icons_controls_video_upvr = Images["icons/controls/video"]
local icons_controls_videoOff_upvr = Images["icons/controls/videoOff"]
local icons_controls_selfie_upvr = Images["icons/controls/selfie"]
local icons_controls_selfieOff_upvr = Images["icons/controls/selfieOff"]
local RecordingIndicator_upvr = require(Modules.Settings.Components.RecordingIndicator)
local ExternalEventConnection_upvr = UIBlox.Utility.ExternalEventConnection
local FFlagMuteNonFriendsEvent_upvr = require(RobloxGui.Modules.Flags.FFlagMuteNonFriendsEvent)
function any_extend_result1.render(arg1) -- Line 589
	--[[ Upvalues[26]:
		[1]: GetFFlagUpdateSelfieViewOnBan_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: GetFFlagJoinWithoutMicPermissions_upvr (readonly)
		[4]: GetFFlagEnableShowVoiceUI_upvr (readonly)
		[5]: GetFFlagEnableInExpVoiceUpsell_upvr (readonly)
		[6]: GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr (readonly)
		[7]: GetFFlagInvertMuteAllPermissionButton_upvr (readonly)
		[8]: icons_controls_microphone_upvr (readonly)
		[9]: icons_controls_microphoneMute_upvr (readonly)
		[10]: GetFFlagFixPermissionsButtonsEvents_upvr (readonly)
		[11]: Roact_upvr (readonly)
		[12]: createDivider_upvr (readonly)
		[13]: PermissionButton_upvr (readonly)
		[14]: icons_controls_headphone_upvr (readonly)
		[15]: icons_controls_headphoneDeafen_upvr (readonly)
		[16]: icons_controls_publicAudioJoin_upvr (readonly)
		[17]: icons_controls_publicAudioLeave_upvr (readonly)
		[18]: icons_controls_video_upvr (readonly)
		[19]: icons_controls_videoOff_upvr (readonly)
		[20]: icons_controls_selfie_upvr (readonly)
		[21]: icons_controls_selfieOff_upvr (readonly)
		[22]: RecordingIndicator_upvr (readonly)
		[23]: ExternalEventConnection_upvr (readonly)
		[24]: StarterGui_upvr (readonly)
		[25]: FaceAnimatorService_upvr (readonly)
		[26]: FFlagMuteNonFriendsEvent_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 280 start (CF ANALYSIS FAILED)
	local var278
	if GetFFlagUpdateSelfieViewOnBan_upvr() then
		local hasMicPermissions_3 = arg1.state.hasMicPermissions
		if hasMicPermissions_3 then
			hasMicPermissions_3 = not default_upvr:VoiceChatEnded()
		end
		var278 = hasMicPermissions_3
	end
	if GetFFlagJoinWithoutMicPermissions_upvr() then
		var278 = arg1.state.voiceServiceInitialized
	end
	if GetFFlagEnableShowVoiceUI_upvr() then
		local var280 = var278
		if var280 then
			var280 = arg1.state.isVoiceUIVisible
			if var280 then
				var280 = not default_upvr.isShowingFTUX
			end
		end
		var278 = var280
	end
	if GetFFlagEnableInExpVoiceUpsell_upvr() then
	end
	if GetFFlagEnableSeamlessVoiceConnectDisconnectButton_upvr() then
	end
	if GetFFlagInvertMuteAllPermissionButton_upvr() then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 280 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 55. Error Block 21 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 55. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 58. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 58. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 62. Error Block 239 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 62. Error Block 239 end (CF ANALYSIS FAILED)
end
function any_extend_result1.willUnmount(arg1) -- Line 885
	if arg1.selfViewVisibilityUpdatedSignal then
		arg1.selfViewVisibilityUpdatedSignal:disconnect()
		arg1.selfViewVisibilityUpdatedSignal = nil
	end
end
return any_extend_result1