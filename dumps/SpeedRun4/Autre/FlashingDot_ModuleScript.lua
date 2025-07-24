-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:25
-- Luau version 6, Types version 3
-- Time taken: 0.006867 seconds

local CorePackages = game:GetService("CorePackages")
local VideoCaptureService_upvr = game:GetService("VideoCaptureService")
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local default_upvr = require(Modules.VoiceChat.VoiceChatServiceManager).default
local any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatCoreScriptSupport()
local any_extend_result1 = Roact_upvr.PureComponent:extend("FlashingDot")
local function _(arg1, arg2, arg3) -- Line 29, Named "lerpNum"
	return arg1 + (arg2 - arg1) * arg3
end
any_extend_result1.validateProps = require(CorePackages.Packages.t).strictInterface({})
function any_extend_result1.init(arg1) -- Line 35
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: FaceAnimatorService_upvr (readonly)
		[4]: VideoCaptureService_upvr (readonly)
		[5]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
	]]
	arg1:setState({
		Visible = false;
		isUsingMic = false;
		hasMicPermissions = false;
		hasCameraPermissions = false;
	})
	arg1.prevTime = (math.pi/2)
	arg1.prevSinTime = 1
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.transparencyBinding = any_createBinding_result1
	arg1.updateTransparencyBinding = any_createBinding_result2
	function arg1.checkNewVisibility() -- Line 47
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: default_upvr (copied, readonly)
			[3]: FaceAnimatorService_upvr (copied, readonly)
			[4]: VideoCaptureService_upvr (copied, readonly)
			[5]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local hasMicPermissions = arg1.state.hasMicPermissions
		if hasMicPermissions then
			hasMicPermissions = false
			if default_upvr.localMuted ~= nil then
				hasMicPermissions = not default_upvr.localMuted
			end
		end
		local hasCameraPermissions = arg1.state.hasCameraPermissions
		if hasCameraPermissions then
			hasCameraPermissions = FaceAnimatorService_upvr.VideoAnimationEnabled
			if hasCameraPermissions then
				hasCameraPermissions = VideoCaptureService_upvr.Active
			end
		end
		local var19 = hasMicPermissions or hasCameraPermissions
		if arg1.state.Visible == var19 then
		else
		end
		if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
			if arg1.state.isUsingMic == hasMicPermissions then
			else
			end
		end
		if true or true then
			arg1:setState({
				Visible = var19;
				isUsingMic = hasMicPermissions;
			})
		end
	end
	function arg1.animationConnection(arg1_2) -- Line 70
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var22 = arg1.prevTime + arg1_2
		arg1.updateTransparencyBinding(math.abs(arg1.prevSinTime) * -0.5 + 0.5)
		arg1.prevTime = var22
		arg1.prevSinTime = math.sin(var22 * 3)
	end
end
local getCamMicPermissions_upvr = require(Modules.Settings.getCamMicPermissions)
function any_extend_result1.didMount(arg1) -- Line 81
	--[[ Upvalues[1]:
		[1]: getCamMicPermissions_upvr (readonly)
	]]
	arg1.isMounted = true
	getCamMicPermissions_upvr(function(arg1_3) -- Line 83
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.isMounted then
		else
			arg1:setState({
				hasCameraPermissions = arg1_3.hasCameraPermissions;
				hasMicPermissions = arg1_3.hasMicPermissions;
			})
		end
	end, nil, nil, "FlashingDot.didMount")
	arg1.checkNewVisibility()
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 97
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 5. Error Block 8 start (CF ANALYSIS FAILED)
	if arg1.state.hasCameraPermissions ~= arg2.hasCameraPermissions then
		-- KONSTANTERROR: [16] 9. Error Block 6 start (CF ANALYSIS FAILED)
		arg1.checkNewVisibility()
		-- KONSTANTERROR: [16] 9. Error Block 6 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [8] 5. Error Block 8 end (CF ANALYSIS FAILED)
end
local ExternalEventConnection_upvr = require(CorePackages.Packages.UIBlox).Utility.ExternalEventConnection
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.render(arg1) -- Line 106
	--[[ Upvalues[7]:
		[1]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[2]: FaceAnimatorService_upvr (readonly)
		[3]: VideoCaptureService_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ExternalEventConnection_upvr (readonly)
		[6]: default_upvr (readonly)
		[7]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var39
	local udim2_2 = UDim2.fromOffset(4, 4)
	local var41
	if var41 then
		var41 = arg1.state.hasCameraPermissions
		if var41 then
			var41 = FaceAnimatorService_upvr.VideoAnimationEnabled
			if var41 then
				var41 = VideoCaptureService_upvr.Active
			end
		end
		if arg1.state.isUsingMic then
			var39 = "rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png"
		elseif var41 then
			var39 = "rbxasset://textures/SelfView/SelfView_icon_indicator_off.png"
			udim2_2 = UDim2.fromOffset(12, 12)
		end
	end
	local module_2 = {}
	local tbl_4 = {}
	local var45 = 1
	tbl_4.BackgroundTransparency = var45
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		var45 = Vector2.new(0.5, 0.5)
	else
		var45 = nil
	end
	tbl_4.AnchorPoint = var45
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		-- KONSTANTWARNING: GOTO [107] #82
	end
	tbl_4.Position = nil
	tbl_4.Size = udim2_2
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		-- KONSTANTWARNING: GOTO [116] #89
	end
	tbl_4.Image = "rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png"
	tbl_4.ImageTransparency = arg1.transparencyBinding
	tbl_4.LayoutOrder = 2
	module_2.FlashingDot = Roact_upvr.createElement("ImageLabel", tbl_4)
	module_2.MuteChangedEvent = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = default_upvr.muteChanged.Event;
		callback = arg1.checkNewVisibility;
	})
	module_2.CameraChangedEvent = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = FaceAnimatorService_upvr:GetPropertyChangedSignal("VideoAnimationEnabled");
		callback = arg1.checkNewVisibility;
	})
	if arg1.state.Visible then
		local tbl_7 = {
			event = RunService_upvr.RenderStepped;
			callback = arg1.animationConnection;
		}
	else
	end
	module_2.AnimationConnection = nil
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.new(1, -4, 0, 3);
		Size = UDim2.fromOffset(4, 4);
		ZIndex = 2;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Visible = arg1.state.Visible;
	}, module_2)
end
function any_extend_result1.willUnmount(arg1) -- Line 156
	arg1.isMounted = false
end
return any_extend_result1