-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:49
-- Luau version 6, Types version 3
-- Time taken: 0.015012 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = CoreGui.RobloxGui.Modules
local default_upvr_2 = require(Modules.VoiceChat.VoiceChatServiceManager).default
local Constants_upvr_2 = require(Modules.InGameChat.BubbleChat.Constants)
local getFFlagDoNotPromptCameraPermissionsOnMount_upvr = require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ControlsBubble")
any_extend_result1.validateProps = t.strictInterface({
	chatSettings = t.table;
	isInsideMaximizeDistance = t.boolean;
	isLocalPlayer = t.boolean;
	LayoutOrder = t.optional(t.number);
	hasCameraPermissions = t.boolean;
	hasMicPermissions = t.boolean;
	isShowingDueToEasierUnmuting = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	LayoutOrder = 1;
}
local GetFFlagLocalMutedNilFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLocalMutedNilFix
local any_new_result1_upvr = require(Modules.SelfView.Analytics).new()
local Constants_upvr = require(Modules.VoiceChat.Constants)
local displayCameraDeniedToast_upvr = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.displayCameraDeniedToast)
local getCamMicPermissions_upvr = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local default_upvr = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local publicApi_upvr = require(Modules.SelfView.publicApi)
local toggleSelfViewSignal_upvr = require(Modules.SelfView.toggleSelfViewSignal)
function any_extend_result1.init(arg1) -- Line 62
	--[[ Upvalues[12]:
		[1]: FaceAnimatorService_upvr (readonly)
		[2]: GetFFlagLocalMutedNilFix_upvr (readonly)
		[3]: default_upvr_2 (readonly)
		[4]: Constants_upvr_2 (readonly)
		[5]: any_new_result1_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (readonly)
		[8]: displayCameraDeniedToast_upvr (readonly)
		[9]: getCamMicPermissions_upvr (readonly)
		[10]: default_upvr (readonly)
		[11]: publicApi_upvr (readonly)
		[12]: toggleSelfViewSignal_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var22
	if FaceAnimatorService_upvr then
		if FaceAnimatorService_upvr:IsStarted() then
			-- KONSTANTWARNING: GOTO [12] #11
		end
	else
	end
	local tbl_5 = {}
	if GetFFlagLocalMutedNilFix_upvr then
		if default_upvr_2.localMuted ~= false then
			var22 = false
		else
			var22 = true
		end
	else
		var22 = not default_upvr_2.localMuted
	end
	tbl_5.microphoneEnabled = var22
	tbl_5.cameraEnabled = false
	arg1:setState(tbl_5)
	function arg1.toggleMic() -- Line 75
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr_2 (copied, readonly)
			[3]: default_upvr_2 (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: Constants_upvr (copied, readonly)
		]]
		if arg1.props.isLocalPlayer then
			if not arg1.props.hasMicPermissions then
			else
				if arg1.props.voiceState == Constants_upvr_2.VOICE_STATE.ERROR then
					default_upvr_2:RejoinPreviousChannel()
					return
				end
				if arg1.props.voiceState == Constants_upvr_2.VOICE_STATE.CONNECTING then
					default_upvr_2:ShowVoiceChatLoadingMessage()
					return
				end
				any_new_result1_upvr:setLastCtx("bubbleChatToggle")
				default_upvr_2:ToggleMic("LegacyBubbleChatToggle")
				arg1:setState({
					microphoneEnabled = not default_upvr_2.localMuted;
				})
			end
		end
		local userId = arg1.props.userId
		if arg1.props.isShowingDueToEasierUnmuting then
			userId = Constants_upvr.VOICE_CONTEXT_TYPE.EASIER_UNMUTING
		else
			userId = Constants_upvr.VOICE_CONTEXT_TYPE.BUBBLE_CHAT
		end
		default_upvr_2:ToggleMutePlayer(tonumber(userId), userId)
	end
	function arg1.updateVideo() -- Line 104
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: FaceAnimatorService_upvr (copied, readonly)
		]]
		arg1:setState({
			cameraEnabled = FaceAnimatorService_upvr.VideoAnimationEnabled;
		})
	end
	function arg1.onVideoButtonPressed() -- Line 111
		--[[ Upvalues[5]:
			[1]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: displayCameraDeniedToast_upvr (copied, readonly)
			[4]: getCamMicPermissions_upvr (copied, readonly)
			[5]: default_upvr (copied, readonly)
		]]
		if getFFlagDoNotPromptCameraPermissionsOnMount_upvr() and not arg1.props.hasCameraPermissions then
			getCamMicPermissions_upvr(function(arg1_2) -- Line 114
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: displayCameraDeniedToast_upvr (copied, readonly)
				]]
				if arg1_2.hasCameraPermissions then
					arg1:toggleVideo()
					arg1.props.setCameraPermissionStateFromControl(arg1_2.hasCameraPermissions)
				else
					displayCameraDeniedToast_upvr()
				end
			end, {default_upvr.Permissions.CAMERA_ACCESS})
		else
			arg1:toggleVideo()
		end
	end
	function arg1.toggleVideo() -- Line 130
		--[[ Upvalues[6]:
			[1]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: FaceAnimatorService_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: publicApi_upvr (copied, readonly)
			[6]: toggleSelfViewSignal_upvr (copied, readonly)
		]]
		if not getFFlagDoNotPromptCameraPermissionsOnMount_upvr() and not arg1.props.hasCameraPermissions then
		else
			if not FaceAnimatorService_upvr or not FaceAnimatorService_upvr:IsStarted() then return end
			FaceAnimatorService_upvr.VideoAnimationEnabled = not FaceAnimatorService_upvr.VideoAnimationEnabled
			any_new_result1_upvr:setLastCtx("bubbleChatToggle")
			arg1:setState({
				cameraEnabled = FaceAnimatorService_upvr.VideoAnimationEnabled;
			})
			if FaceAnimatorService_upvr.VideoAnimationEnabled and not publicApi_upvr.getSelfViewIsOpenAndVisible() then
				toggleSelfViewSignal_upvr:fire()
			end
		end
	end
	function arg1.muteChangedEvent(arg1_3) -- Line 155
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			microphoneEnabled = not arg1_3;
		})
	end
end
function any_extend_result1.shouldShowCameraIndicator(arg1) -- Line 164
	if arg1.props.isLocalPlayer and arg1:getCameraButtonVisibleAtMount() then
		return true
	end
	return false
end
function any_extend_result1.shouldShowMicOffIndicator(arg1) -- Line 172
	--[[ Upvalues[1]:
		[1]: Constants_upvr_2 (readonly)
	]]
	if arg1.props.isLocalPlayer then
		local var36 = true
		if arg1.props.voiceState ~= Constants_upvr_2.VOICE_STATE.MUTED then
			if arg1.props.voiceState ~= Constants_upvr_2.VOICE_STATE.LOCAL_MUTED then
				var36 = false
			else
				var36 = true
			end
		end
		if not arg1.props.hasMicPermissions or var36 then
			return true
		end
	end
	return false
end
local getFFlagEnableAlwaysAvailableCamera_upvr = require(RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera)
local isCameraOnlyUser_upvr = require(RobloxGui.Modules.Settings.isCameraOnlyUser)
local isCamEnabledForUserAndPlace_upvr = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)
function any_extend_result1.getCameraButtonVisibleAtMount(arg1) -- Line 187
	--[[ Upvalues[3]:
		[1]: getFFlagEnableAlwaysAvailableCamera_upvr (readonly)
		[2]: isCameraOnlyUser_upvr (readonly)
		[3]: isCamEnabledForUserAndPlace_upvr (readonly)
	]]
	if getFFlagEnableAlwaysAvailableCamera_upvr() and isCameraOnlyUser_upvr() then
		return false
	end
	return isCamEnabledForUserAndPlace_upvr()
end
local AVATAR_CHAT_UI_SETTINGS_upvr = Constants_upvr_2.AVATAR_CHAT_UI_SETTINGS
local ControlBubbleV2_upvr = require(script.Parent.ControlBubbleV2)
local HttpService_upvr = game:GetService("HttpService")
local ExternalEventConnection_upvr = require(CorePackages.Packages.UIBlox).Utility.ExternalEventConnection
function any_extend_result1.render(arg1) -- Line 197
	--[[ Upvalues[8]:
		[1]: AVATAR_CHAT_UI_SETTINGS_upvr (readonly)
		[2]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ControlBubbleV2_upvr (readonly)
		[5]: HttpService_upvr (readonly)
		[6]: ExternalEventConnection_upvr (readonly)
		[7]: default_upvr_2 (readonly)
		[8]: FaceAnimatorService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local hasMicPermissions = arg1.props.hasMicPermissions
	if hasMicPermissions then
		hasMicPermissions = arg1.props.voiceEnabled
	end
	local any_shouldShowCameraIndicator_result1_2 = arg1:shouldShowCameraIndicator()
	local var69 = any_shouldShowCameraIndicator_result1_2 and hasMicPermissions
	local chatSettings_2 = arg1.props.chatSettings
	if not var69 or not AVATAR_CHAT_UI_SETTINGS_upvr.DoubleIconCornerRadiusOffset then
		local SingleIconCornerRadiusOffset_2 = AVATAR_CHAT_UI_SETTINGS_upvr.SingleIconCornerRadiusOffset
	end
	if not var69 or not AVATAR_CHAT_UI_SETTINGS_upvr.DoubleIconButtonSize then
	end
	if arg1.props.isLocalPlayer then
	else
	end
	if arg1.state.cameraEnabled and arg1.props.hasCameraPermissions then
	else
	end
	if getFFlagDoNotPromptCameraPermissionsOnMount_upvr() then
		if arg1.state.cameraEnabled and arg1:getCameraButtonVisibleAtMount() then
		else
		end
	end
	local module_2 = {}
	local tbl_10 = {}
	if not arg1.props.isInsideMaximizeDistance then
	else
	end
	tbl_10.Scale = 1
	module_2.Scale = Roact_upvr.createElement("UIScale", tbl_10)
	module_2.UICorner = Roact_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, SingleIconCornerRadiusOffset_2);
	})
	local tbl_2 = {}
	if chatSettings_2.CornerEnabled then
	end
	tbl_2.UICorner = Roact_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, SingleIconCornerRadiusOffset_2);
	})
	tbl_2.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	local var80 = hasMicPermissions
	if var80 then
		var80 = Roact_upvr.createElement
		local tbl_12 = {
			LayoutOrder = 1;
		}
		local toggleMic_3 = arg1.toggleMic
		tbl_12.onActivated = toggleMic_3
		tbl_12.chatSettings = chatSettings_2
		tbl_12.controlBubbleSize = AVATAR_CHAT_UI_SETTINGS_upvr.SingleIconButtonSize
		tbl_12.cornerRadiusOffset = SingleIconCornerRadiusOffset_2
		if arg1:shouldShowMicOffIndicator() then
			toggleMic_3 = "icons/controls/voice/microphone_off_light"
		else
			toggleMic_3 = nil
		end
		tbl_12.iconAssetName = toggleMic_3
		tbl_12.iconSize = AVATAR_CHAT_UI_SETTINGS_upvr.IconSize
		tbl_12.iconTransparency = AVATAR_CHAT_UI_SETTINGS_upvr.IconTransparency
		tbl_12.voiceState = arg1.props.voiceState
		tbl_12.renderStepName = HttpService_upvr:GenerateGUID()
		tbl_12.iconStyle = "speaker"
		var80 = var80(ControlBubbleV2_upvr, tbl_12)
	end
	tbl_2.MicrophoneBubble = var80
	var80 = hasMicPermissions
	local var83 = var80
	if var83 then
		var83 = any_shouldShowCameraIndicator_result1_2
		if var83 then
			var83 = Roact_upvr.createElement
			var83 = var83("Frame", {
				Size = AVATAR_CHAT_UI_SETTINGS_upvr.DividerSize;
				AnchorPoint = Vector2.new(0.5, 1);
				BorderSizePixel = 0;
				LayoutOrder = 2;
				ZIndex = 1;
				BackgroundColor3 = AVATAR_CHAT_UI_SETTINGS_upvr.DividerColor;
			})
		end
	end
	tbl_2.Divider = var83
	local var85
	if any_shouldShowCameraIndicator_result1_2 then
		local tbl_11 = {}
		var85 = 3
		tbl_11.LayoutOrder = var85
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var85 = arg1.onVideoButtonPressed
			return var85
		end
		if not getFFlagDoNotPromptCameraPermissionsOnMount_upvr() or not INLINED_3() then
			var85 = arg1.toggleVideo
		end
		tbl_11.onActivated = var85
		tbl_11.chatSettings = chatSettings_2
		tbl_11.cornerRadiusOffset = SingleIconCornerRadiusOffset_2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_11.controlBubbleSize = AVATAR_CHAT_UI_SETTINGS_upvr.SingleIconButtonSize
		tbl_11.iconAssetName = "icons/controls/voice/video_off_light"
		var85 = AVATAR_CHAT_UI_SETTINGS_upvr.IconSize
		tbl_11.iconSize = var85
		var85 = AVATAR_CHAT_UI_SETTINGS_upvr.IconTransparency
		tbl_11.iconTransparency = var85
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_11.iconStyle = "speaker"
	end
	tbl_2.CameraBubble = Roact_upvr.createElement(ControlBubbleV2_upvr, tbl_11)
	module_2.Container = Roact_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}, tbl_2)
	local TailVisible = chatSettings_2.TailVisible
	if TailVisible then
		TailVisible = Roact_upvr.createElement
		local tbl_9 = {
			LayoutOrder = 3;
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundTransparency = 1;
		}
		var85 = -1
		tbl_9.Position = UDim2.new(0.5, 0, 1, var85)
		tbl_9.Size = UDim2.fromOffset(12, 8)
		tbl_9.Image = "rbxasset://textures/ui/InGameChat/Caret.png"
		tbl_9.ImageColor3 = chatSettings_2.BackgroundColor3
		tbl_9.ImageTransparency = chatSettings_2.BackgroundTransparency
		TailVisible = TailVisible("ImageLabel", tbl_9)
	end
	module_2.Carat = TailVisible
	module_2.MuteChangedEvent = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = default_upvr_2.muteChanged.Event;
		callback = arg1.muteChangedEvent;
	})
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		tbl_7.callback = arg1.updateVideo
		tbl_7.event = FaceAnimatorService_upvr:GetPropertyChangedSignal("VideoAnimationEnabled")
		local tbl_7 = {}
		return Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_7)
	end
	if not FaceAnimatorService_upvr or not INLINED_4() then
	end
	module_2.VideoEnabledChanged = nil
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1);
		Position = UDim2.new(0.5, 0, 1, -8);
		AutomaticSize = Enum.AutomaticSize.X;
		Size = UDim2.fromOffset(0, AVATAR_CHAT_UI_SETTINGS_upvr.FrameHeight);
		LayoutOrder = arg1.props.LayoutOrder;
		BackgroundTransparency = chatSettings_2.BackgroundTransparency;
		BackgroundColor3 = chatSettings_2.BackgroundColor3;
		Visible = hasMicPermissions or any_shouldShowCameraIndicator_result1_2;
	}, module_2)
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1, arg2) -- Line 305, Named "mapStateToProps"
	return {
		voiceState = arg1.voiceState[arg2.userId];
	}
end)(any_extend_result1)