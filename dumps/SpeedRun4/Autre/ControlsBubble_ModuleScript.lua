-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:49
-- Luau version 6, Types version 3
-- Time taken: 0.011720 seconds

local CorePackages = game:GetService("CorePackages")
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local RunService_upvr = game:GetService("RunService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local default_upvr = require(Modules.VoiceChat.VoiceChatServiceManager).default
local Constants_upvr = require(Modules.InGameChat.BubbleChat.Constants)
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
local Constants_upvr_2 = require(Modules.VoiceChat.Constants)
local publicApi_upvr = require(Modules.SelfView.publicApi)
local toggleSelfViewSignal_upvr = require(Modules.SelfView.toggleSelfViewSignal)
local HttpService_upvr = game:GetService("HttpService")
function any_extend_result1.init(arg1) -- Line 54
	--[[ Upvalues[11]:
		[1]: FaceAnimatorService_upvr (readonly)
		[2]: GetFFlagLocalMutedNilFix_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
		[6]: Constants_upvr_2 (readonly)
		[7]: publicApi_upvr (readonly)
		[8]: toggleSelfViewSignal_upvr (readonly)
		[9]: Roact_upvr (readonly)
		[10]: HttpService_upvr (readonly)
		[11]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var20
	if FaceAnimatorService_upvr then
		if FaceAnimatorService_upvr:IsStarted() then
			-- KONSTANTWARNING: GOTO [12] #11
		end
	else
	end
	local tbl_3 = {}
	if GetFFlagLocalMutedNilFix_upvr then
		if default_upvr.localMuted ~= false then
			var20 = false
		else
			var20 = true
		end
	else
		var20 = not default_upvr.localMuted
	end
	tbl_3.microphoneEnabled = var20
	tbl_3.cameraEnabled = false
	arg1:setState(tbl_3)
	function arg1.toggleMic() -- Line 67
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: default_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: Constants_upvr_2 (copied, readonly)
		]]
		if arg1.props.isLocalPlayer then
			if not arg1.props.hasMicPermissions then
			else
				if arg1.props.voiceState == Constants_upvr.VOICE_STATE.ERROR then
					default_upvr:RejoinPreviousChannel()
					return
				end
				if arg1.props.voiceState == Constants_upvr.VOICE_STATE.CONNECTING then
					default_upvr:ShowVoiceChatLoadingMessage()
					return
				end
				any_new_result1_upvr:setLastCtx("bubbleChatToggle")
				default_upvr:ToggleMic("LegacyBubbleChatToggle")
				arg1:setState({
					microphoneEnabled = not default_upvr.localMuted;
				})
			end
		end
		local userId = arg1.props.userId
		if arg1.props.isShowingDueToEasierUnmuting then
			userId = Constants_upvr_2.VOICE_CONTEXT_TYPE.EASIER_UNMUTING
		else
			userId = Constants_upvr_2.VOICE_CONTEXT_TYPE.BUBBLE_CHAT
		end
		default_upvr:ToggleMutePlayer(tonumber(userId), userId)
	end
	function arg1.updateVideo() -- Line 95
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: FaceAnimatorService_upvr (copied, readonly)
		]]
		arg1:setState({
			cameraEnabled = FaceAnimatorService_upvr.VideoAnimationEnabled;
		})
	end
	function arg1.toggleVideo() -- Line 102
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: FaceAnimatorService_upvr (copied, readonly)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: publicApi_upvr (copied, readonly)
			[5]: toggleSelfViewSignal_upvr (copied, readonly)
		]]
		if not arg1.props.hasCameraPermissions then
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
	function arg1.muteChangedEvent(arg1_2) -- Line 125
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			microphoneEnabled = not arg1_2;
		})
	end
	local any_createBinding_result1, any_createBinding_result2_2 = Roact_upvr.createBinding(0)
	arg1.level = any_createBinding_result1
	arg1.updateLevel = any_createBinding_result2_2
	local any_createBinding_result1_2, any_createBinding_result2 = Roact_upvr.createBinding(arg1.props.voiceState)
	arg1.voiceState = any_createBinding_result1_2
	arg1.updateVoiceState = any_createBinding_result2
	arg1.renderStepName = HttpService_upvr:GenerateGUID()
	var20 = Enum.RenderPriority.First.Value + 1
	RunService_upvr:BindToRenderStep(arg1.renderStepName, var20, function() -- Line 136
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateLevel(math.random())
	end)
	local tbl_4 = {}
	var20 = arg1.level
	tbl_4[1] = arg1.voiceState
	tbl_4[2] = var20
	arg1.levelIcon = Roact_upvr.joinBindings(tbl_4):map(function(arg1_3) -- Line 140
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: default_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local _1 = arg1_3[1]
		local var39
		if game:GetEngineFeature("VoiceChatNewSpeakerIcons") then
			var39 = "SpeakerNew"
		else
			var39 = "SpeakerDark"
		end
		if arg1.props.isLocalPlayer then
			local const_string = "New"
		else
		end
		if _1 == Constants_upvr.VOICE_STATE.MUTED or _1 == Constants_upvr.VOICE_STATE.LOCAL_MUTED then
			if arg1.props.isLocalPlayer then
				return ""
			end
			return default_upvr:GetIcon("Muted", var39)
		end
		if _1 == Constants_upvr.VOICE_STATE.CONNECTING then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return default_upvr:GetIcon("Connecting", var39)
		end
		if _1 == Constants_upvr.VOICE_STATE.INACTIVE then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return default_upvr:GetIcon("Unmuted0", var39)
		end
		if _1 == Constants_upvr.VOICE_STATE.TALKING then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return default_upvr:GetIcon("Unmuted"..tostring(math.floor(arg1_3[2] * 5 + 0.5) * 20), var39)
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return default_upvr:GetIcon("Error", var39)
	end)
end
function any_extend_result1.shouldShowCameraIndicator(arg1) -- Line 174
	if arg1.props.isLocalPlayer and arg1.props.hasCameraPermissions then
		return true
	end
	return false
end
local icons_controls_microphoneMute_upvr = Images["icons/controls/microphoneMute"]
function any_extend_result1.getMicIcon(arg1) -- Line 182
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: icons_controls_microphoneMute_upvr (readonly)
	]]
	if not arg1.props.isLocalPlayer then
		return arg1.levelIcon, false
	end
	local var42 = true
	if arg1.props.voiceState ~= Constants_upvr.VOICE_STATE.MUTED then
		if arg1.props.voiceState ~= Constants_upvr.VOICE_STATE.LOCAL_MUTED then
			var42 = false
		else
			var42 = true
		end
	end
	if not arg1.props.hasMicPermissions or var42 then
		return icons_controls_microphoneMute_upvr, true
	end
	return arg1.levelIcon, false
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 199
	if arg1.props.voiceState ~= arg2.voiceState then
		arg1.updateVoiceState(arg1.props.voiceState)
	end
end
function any_extend_result1.didMount(arg1) -- Line 205
	arg1.updateVoiceState(arg1.props.voiceState)
end
local ControlBubble_upvr = require(script.Parent.ControlBubble)
local icons_controls_video_upvr = Images["icons/controls/video"]
local icons_controls_videoOff_upvr = Images["icons/controls/videoOff"]
local ExternalEventConnection_upvr = UIBlox.Utility.ExternalEventConnection
function any_extend_result1.render(arg1) -- Line 209
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: ControlBubble_upvr (readonly)
		[3]: icons_controls_video_upvr (readonly)
		[4]: icons_controls_videoOff_upvr (readonly)
		[5]: ExternalEventConnection_upvr (readonly)
		[6]: default_upvr (readonly)
		[7]: FaceAnimatorService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local hasMicPermissions = arg1.props.hasMicPermissions
	if hasMicPermissions then
		hasMicPermissions = arg1.props.voiceEnabled
	end
	local any_shouldShowCameraIndicator_result1 = arg1:shouldShowCameraIndicator()
	local any_getMicIcon_result1, any_getMicIcon_result2 = arg1:getMicIcon()
	local chatSettings = arg1.props.chatSettings
	local module = {
		AnchorPoint = Vector2.new(0.5, 1);
		AutomaticSize = Enum.AutomaticSize.X;
		Position = UDim2.new(0.5, 0, 1, -8);
	}
	local var53 = 25
	module.Size = UDim2.new(0, 0, 0, var53)
	module.LayoutOrder = arg1.props.LayoutOrder
	module.BackgroundTransparency = 0
	module.BorderSizePixel = 0
	module.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	module.Visible = hasMicPermissions or any_shouldShowCameraIndicator_result1
	local module_2 = {}
	local tbl_7 = {}
	if not arg1.props.isInsideMaximizeDistance then
		var53 = 0.75
	else
		var53 = 1
	end
	tbl_7.Scale = var53
	module_2.Scale = Roact_upvr.createElement("UIScale", tbl_7)
	module_2.UICorner = Roact_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, 8);
	})
	local tbl_2 = {}
	if chatSettings.CornerEnabled then
	end
	tbl_2.UICorner = Roact_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, 8);
	})
	tbl_2.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		Padding = UDim.new(0, 2);
	})
	tbl_2.UIPadding = Roact_upvr.createElement("UIPadding", {
		PaddingTop = UDim.new(0, 2);
		PaddingRight = UDim.new(0, 2);
		PaddingBottom = UDim.new(0, 2);
		PaddingLeft = UDim.new(0, 2);
	})
	if hasMicPermissions then
		local tbl = {
			LayoutOrder = 1;
			icon = any_getMicIcon_result1;
			onActivated = arg1.toggleMic;
		}
		local hasMicPermissions_2 = arg1.props.hasMicPermissions
		tbl.enabled = hasMicPermissions_2
		tbl.isImageSet = any_getMicIcon_result2
		tbl.chatSettings = chatSettings
		if arg1.props.isLocalPlayer then
			hasMicPermissions_2 = UDim2.fromOffset(14, 18)
		else
			hasMicPermissions_2 = UDim2.fromOffset(23, 21)
		end
		tbl.iconSize = hasMicPermissions_2
	end
	tbl_2.MicrophoneBubble = Roact_upvr.createElement(ControlBubble_upvr, tbl)
	if any_shouldShowCameraIndicator_result1 then
		local tbl_6 = {
			LayoutOrder = 2;
		}
		local var65
		if arg1.state.cameraEnabled and arg1.props.hasCameraPermissions then
			var65 = icons_controls_video_upvr
		else
			var65 = icons_controls_videoOff_upvr
		end
		tbl_6.icon = var65
		var65 = arg1.toggleVideo
		tbl_6.onActivated = var65
		var65 = arg1.props.hasCameraPermissions
		tbl_6.enabled = var65
		var65 = true
		tbl_6.isImageSet = var65
		if arg1.state.cameraEnabled and arg1.props.hasCameraPermissions then
			var65 = icons_controls_video_upvr
		else
			var65 = icons_controls_videoOff_upvr
		end
		tbl_6.imageSetIcon = var65
		tbl_6.chatSettings = chatSettings
	end
	tbl_2.CameraBubble = Roact_upvr.createElement(ControlBubble_upvr, tbl_6)
	module_2.Container = Roact_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 0;
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	}, tbl_2)
	local TailVisible = chatSettings.TailVisible
	if TailVisible then
		TailVisible = Roact_upvr.createElement
		TailVisible = TailVisible("ImageLabel", {
			LayoutOrder = 3;
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundTransparency = 1;
			Position = UDim2.new(0.5, 0, 1, -1);
			Size = UDim2.fromOffset(12, 8);
			Image = "rbxasset://textures/ui/InGameChat/Caret.png";
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		})
	end
	module_2.Carat = TailVisible
	module_2.MuteChangedEvent = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = default_upvr.muteChanged.Event;
		callback = arg1.muteChangedEvent;
	})
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_5.callback = arg1.updateVideo
		tbl_5.event = FaceAnimatorService_upvr:GetPropertyChangedSignal("VideoAnimationEnabled")
		local tbl_5 = {}
		return Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_5)
	end
	if not FaceAnimatorService_upvr or not INLINED() then
	end
	module_2.VideoEnabledChanged = nil
	return Roact_upvr.createElement("Frame", module, module_2)
end
function any_extend_result1.willUnmount(arg1) -- Line 295
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local pcall_result1_upvr, _ = pcall(function() -- Line 296
		--[[ Upvalues[2]:
			[1]: RunService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		RunService_upvr:UnbindFromRenderStep(arg1.renderStepName)
	end)
	task.spawn(function() -- Line 301
		--[[ Upvalues[1]:
			[1]: pcall_result1_upvr (readonly)
		]]
		local var74
		if pcall_result1_upvr ~= true then
			var74 = false
		else
			var74 = true
		end
		assert(var74, "Tried to UnbindFromRenderStep with a self.renderStepName that was never bound")
	end)
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1, arg2) -- Line 306, Named "mapStateToProps"
	return {
		voiceState = arg1.voiceState[arg2.userId];
	}
end)(any_extend_result1)