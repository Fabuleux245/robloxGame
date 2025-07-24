-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:25
-- Luau version 6, Types version 3
-- Time taken: 0.004823 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local VideoCaptureService_upvr = game:GetService("VideoCaptureService")
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local default_upvr = require(CoreGui.RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatCoreScriptSupport()
local getFFlagDoNotPromptCameraPermissionsOnMount_upvr = require(CoreGui.RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FlashingDot")
local function _(arg1, arg2, arg3) -- Line 32, Named "lerpNum"
	return arg1 + (arg2 - arg1) * arg3
end
any_extend_result1.validateProps = require(CorePackages.Packages.t).strictInterface({})
local cameraDevicePermissionGrantedSignal_upvr = require(CoreGui.RobloxGui.Modules.Settings.cameraDevicePermissionGrantedSignal)
function any_extend_result1.init(arg1) -- Line 38
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: FaceAnimatorService_upvr (readonly)
		[4]: VideoCaptureService_upvr (readonly)
		[5]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (readonly)
		[6]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[7]: cameraDevicePermissionGrantedSignal_upvr (readonly)
	]]
	arg1:setState({
		Visible = false;
		isUsingMic = false;
	})
	arg1.prevTime = (math.pi/2)
	arg1.prevSinTime = 1
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.transparencyBinding = any_createBinding_result1
	arg1.updateTransparencyBinding = any_createBinding_result2
	function arg1.checkNewVisibility() -- Line 48
		--[[ Upvalues[6]:
			[1]: default_upvr (copied, readonly)
			[2]: FaceAnimatorService_upvr (copied, readonly)
			[3]: VideoCaptureService_upvr (copied, readonly)
			[4]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var15 = false
		local var16
		if var16 ~= nil then
			var16 = default_upvr.localMuted
			var15 = not var16
		end
		var16 = FaceAnimatorService_upvr.VideoAnimationEnabled
		if var16 then
			var16 = VideoCaptureService_upvr.Active
		end
		if getFFlagDoNotPromptCameraPermissionsOnMount_upvr() then
			local any_IsStarted_result1_2 = FaceAnimatorService_upvr:IsStarted()
			if any_IsStarted_result1_2 then
				any_IsStarted_result1_2 = FaceAnimatorService_upvr.VideoAnimationEnabled
			end
			var16 = any_IsStarted_result1_2
		end
		local var18 = var15 or var16
		if arg1.state.Visible == var18 then
		else
		end
		if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
			if arg1.state.isUsingMic == var15 then
			else
			end
		end
		if true or true then
			arg1:setState({
				Visible = var18;
				isUsingMic = var15;
			})
		end
	end
	function arg1.animationConnection(arg1_2) -- Line 71
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var21 = arg1.prevTime + arg1_2
		arg1.updateTransparencyBinding(math.abs(arg1.prevSinTime) * -0.5 + 0.5)
		arg1.prevTime = var21
		arg1.prevSinTime = math.sin(var21 * 3)
	end
	if getFFlagDoNotPromptCameraPermissionsOnMount_upvr() then
		function arg1.teardownCameraPermissionGrantedListener() -- Line 82
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.cameraPermissionGrantedListener then
				arg1.cameraPermissionGrantedListener:disconnect()
				arg1.cameraPermissionGrantedListener = nil
			end
		end
		arg1.cameraPermissionGrantedListener = cameraDevicePermissionGrantedSignal_upvr:connect(function() -- Line 90
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.checkNewVisibility()
		end)
	end
end
function any_extend_result1.didMount(arg1) -- Line 96
	arg1.checkNewVisibility()
end
function any_extend_result1.willUnmount(arg1) -- Line 100
	if arg1.teardownCameraPermissionGrantedListener then
		arg1.teardownCameraPermissionGrantedListener()
	end
end
local ExternalEventConnection_upvr = require(CorePackages.Packages.UIBlox).Utility.ExternalEventConnection
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.render(arg1) -- Line 106
	--[[ Upvalues[8]:
		[1]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[2]: FaceAnimatorService_upvr (readonly)
		[3]: VideoCaptureService_upvr (readonly)
		[4]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ExternalEventConnection_upvr (readonly)
		[7]: default_upvr (readonly)
		[8]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var26
	local udim2 = UDim2.fromOffset(4, 4)
	local var28
	if var28 then
		var28 = FaceAnimatorService_upvr.VideoAnimationEnabled
		if var28 then
			var28 = VideoCaptureService_upvr.Active
		end
		if getFFlagDoNotPromptCameraPermissionsOnMount_upvr() then
			local any_IsStarted_result1 = FaceAnimatorService_upvr:IsStarted()
			if any_IsStarted_result1 then
				any_IsStarted_result1 = FaceAnimatorService_upvr.VideoAnimationEnabled
			end
			var28 = any_IsStarted_result1
		end
		if arg1.state.isUsingMic then
			var26 = "rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png"
		elseif var28 then
			var26 = "rbxasset://textures/SelfView/SelfView_icon_indicator_off.png"
			udim2 = UDim2.fromOffset(12, 12)
		end
	end
	local module = {}
	local tbl_2 = {}
	local var33 = 1
	tbl_2.BackgroundTransparency = var33
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		var33 = Vector2.new(0.5, 0.5)
	else
		var33 = nil
	end
	tbl_2.AnchorPoint = var33
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		-- KONSTANTWARNING: GOTO [114] #89
	end
	tbl_2.Position = nil
	tbl_2.Size = udim2
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		-- KONSTANTWARNING: GOTO [123] #96
	end
	tbl_2.Image = "rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png"
	tbl_2.ImageTransparency = arg1.transparencyBinding
	tbl_2.LayoutOrder = 2
	module.FlashingDot = Roact_upvr.createElement("ImageLabel", tbl_2)
	module.MuteChangedEvent = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = default_upvr.muteChanged.Event;
		callback = arg1.checkNewVisibility;
	})
	module.CameraChangedEvent = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = FaceAnimatorService_upvr:GetPropertyChangedSignal("VideoAnimationEnabled");
		callback = arg1.checkNewVisibility;
	})
	if arg1.state.Visible then
		local tbl = {
			event = RunService_upvr.RenderStepped;
			callback = arg1.animationConnection;
		}
	else
	end
	module.AnimationConnection = nil
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.new(1, -4, 0, 3);
		Size = UDim2.fromOffset(4, 4);
		ZIndex = 2;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Visible = arg1.state.Visible;
	}, module)
end
return any_extend_result1