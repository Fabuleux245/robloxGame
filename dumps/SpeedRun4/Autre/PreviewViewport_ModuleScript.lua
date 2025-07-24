-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:12
-- Luau version 6, Types version 3
-- Time taken: 0.017890 seconds

local CorePackages = game:GetService("CorePackages")
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local getInputGroup_upvr = require(CorePackages.Workspace.Packages.InputType).getInputGroup
local InputTypeConstants_upvr = require(CorePackages.Workspace.Packages.InputType).InputTypeConstants
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local Images_upvr = UIBlox.App.ImageSet.Images
local tbl_10_upvr = {
	LOADING = "loading";
	SUCCESSFULLY_LOADED = "successfullyLoaded";
	FAILED_TO_LOAD = "failedToLoad";
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("PreviewViewport")
any_extend_result1.validateProps = t.strictInterface({
	asset = t.union(t.instanceOf("Model"), t.instanceIsA("AnimationClip"));
	closePreviewView = t.callback;
})
local function _(arg1) -- Line 71, Named "isGamepadInput"
	--[[ Upvalues[2]:
		[1]: getInputGroup_upvr (readonly)
		[2]: InputTypeConstants_upvr (readonly)
	]]
	local var15 = arg1
	if getInputGroup_upvr(var15) ~= InputTypeConstants_upvr.Gamepad then
		var15 = false
	else
		var15 = true
	end
	return var15
end
function any_extend_result1.init(arg1) -- Line 76
	--[[ Upvalues[5]:
		[1]: tbl_10_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: getInputGroup_upvr (readonly)
		[4]: InputTypeConstants_upvr (readonly)
		[5]: Roact_upvr (readonly)
	]]
	local tbl_3 = {}
	local LOADING = tbl_10_upvr.LOADING
	tbl_3.loadingState = LOADING
	if getInputGroup_upvr(UserInputService_upvr:GetLastInputType()) ~= InputTypeConstants_upvr.Gamepad then
		LOADING = false
	else
		LOADING = true
	end
	tbl_3.isGamepad = LOADING
	tbl_3.cameraMoved = false
	arg1:setState(tbl_3)
	arg1.ref = Roact_upvr.createRef()
	arg1.zoomFactor = 0.8
	arg1.cameraDegreesAngle = Vector2.new(0, 0)
	arg1.cameraPanInPixels = Vector2.new(0, 0)
	arg1.cameraRef = Roact_upvr.createRef()
	arg1.worldModelRef = Roact_upvr.createRef()
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(CFrame.new())
	arg1.cameraCFrameBinding = any_createBinding_result1
	arg1.updateCameraCFrameBinding = any_createBinding_result2
	local any_createBinding_result1_2, any_createBinding_result2_2 = Roact_upvr.createBinding(CFrame.new())
	arg1.cameraFocusBinding = any_createBinding_result1_2
	arg1.updateCameraFocusBinding = any_createBinding_result2_2
	function arg1.panByPixels(arg1_2) -- Line 94
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.cameraPanInPixels += arg1_2
		arg1:clampOffsets()
		arg1:updateCameraPosition()
		if not arg1.state.cameraMoved then
			arg1:setState({
				cameraMoved = true;
			})
		end
	end
	function arg1.rotateByPixels(arg1_3) -- Line 103
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.cameraDegreesAngle = Vector2.new(arg1.cameraDegreesAngle.X - arg1_3.Y, arg1.cameraDegreesAngle.Y - arg1_3.X)
		arg1:clampOffsets()
		arg1:updateCameraPosition()
		if not arg1.state.cameraMoved then
			arg1:setState({
				cameraMoved = true;
			})
		end
	end
	function arg1.storeInput(arg1_4, arg2, arg3) -- Line 116
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.inputState = arg2
		arg1.inputObject = arg3
		return Enum.ContextActionResult.Sink
	end
	function arg1.rotateByRadians(arg1_5) -- Line 124
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.model:FindFirstChild("HumanoidRootPart") then
		else
			arg1.cameraDegreesAngle = Vector2.new(arg1.cameraDegreesAngle.X % 360, (arg1.cameraDegreesAngle.Y + -arg1_5 * 180 / math.pi) % 360)
			arg1:updateCameraPosition()
			if not arg1.state.cameraMoved then
				arg1:setState({
					cameraMoved = true;
				})
			end
		end
	end
	function arg1.setAngularVelocityByPixels(arg1_6) -- Line 143
	end
	function arg1.zoomToPoint(arg1_7, arg2) -- Line 146
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var31 = 0.9 ^ arg1_7
		local var32 = arg1.zoomFactor * var31
		if var32 ~= math.clamp(var32, 0.3, 10) then
		else
			arg1.zoomFactor = var32
			if arg2 then
				local var33 = ((arg2) - (arg1.absolutePosition + arg1.absoluteSize / 2)) * Vector2.new(1, -1) * -1
				arg1.cameraPanInPixels = var33 - (var33 - arg1.cameraPanInPixels) * var31
			end
			arg1:clampOffsets()
			arg1:updateCameraPosition()
			if not arg1.state.cameraMoved then
				arg1:setState({
					cameraMoved = true;
				})
			end
		end
	end
	function arg1.onRetryLoading() -- Line 171
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:processAsset()
	end
	function arg1.onResetButtonPressed() -- Line 175
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:resetCameraPosition()
	end
end
function any_extend_result1.setLoadingState(arg1, arg2) -- Line 180
	local tbl_4 = {}
	tbl_4.loadingState = arg2
	arg1:setState(tbl_4)
end
function any_extend_result1.clampOffsets(arg1) -- Line 186
	arg1.zoomFactor = math.clamp(arg1.zoomFactor, 0.3, 10)
	local var38
	if arg1.props.asset and arg1.props.asset:IsA("AnimationClip") then
		var38 = arg1:angleToMakeBasePlateParallel()
	end
	arg1.cameraDegreesAngle = Vector2.new(math.clamp(arg1.cameraDegreesAngle.X, var38, 80), arg1.cameraDegreesAngle.Y)
	local maximum_2 = math.max(arg1.zoomFactor * arg1.modelExtentsSize.X / 2 / arg1:pointsToPixelsFactor(), arg1.absoluteSize.X / 2)
	local maximum = math.max(arg1.zoomFactor * arg1.modelExtentsSize.Y / 2 / arg1:pointsToPixelsFactor(), arg1.absoluteSize.Y / 2)
	arg1.cameraPanInPixels = Vector2.new(math.clamp(arg1.cameraPanInPixels.X, -maximum_2, maximum_2), math.clamp(arg1.cameraPanInPixels.Y, -maximum, maximum))
end
function any_extend_result1.angleToMakeBasePlateParallel(arg1) -- Line 212
	return -math.deg(math.asin(math.clamp((arg1.modelExtentsSize.Y / 2 + arg1:pointsToPixelsFactor() / arg1.zoomFactor * arg1.cameraPanInPixels.Y) / (arg1.cameraDistance / arg1.zoomFactor), -0.99, 0.99)))
end
local Players_upvr = game:GetService("Players")
local AnimationClipProvider_upvr = game:GetService("AnimationClipProvider")
function any_extend_result1.processAsset(arg1) -- Line 231
	--[[ Upvalues[3]:
		[1]: tbl_10_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: AnimationClipProvider_upvr (readonly)
	]]
	local asset_upvr = arg1.props.asset
	if not asset_upvr then
	else
		if asset_upvr:IsA("AnimationClip") then
			arg1:setLoadingState(tbl_10_upvr.LOADING)
			task.spawn(function() -- Line 240
				--[[ Upvalues[5]:
					[1]: Players_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: asset_upvr (readonly)
					[4]: tbl_10_upvr (copied, readonly)
					[5]: AnimationClipProvider_upvr (copied, readonly)
				]]
				local pcall_result1, pcall_result2 = pcall(function() -- Line 241
					--[[ Upvalues[1]:
						[1]: Players_upvr (copied, readonly)
					]]
					return Players_upvr:GetHumanoidDescriptionFromOutfitId(1342485078)
				end)
				local var48
				if pcall_result1 then
					var48 = Players_upvr:CreateHumanoidModelFromDescription(pcall_result2, Enum.HumanoidRigType.R15)
				end
				if not arg1.isMounted or asset_upvr ~= arg1.props.asset then
				else
					if not var48 then
						arg1:setLoadingState(tbl_10_upvr.FAILED_TO_LOAD)
						return
					end
					arg1.model = var48
					arg1:addModelToViewportIfNeeded()
					arg1.animation = Instance.new("Animation")
					arg1.animation.AnimationId = AnimationClipProvider_upvr:RegisterActiveAnimationClip(asset_upvr)
					local class_Humanoid = arg1.model:FindFirstChildWhichIsA("Humanoid")
					if class_Humanoid then
						class_Humanoid:LoadAnimation(arg1.animation):Play()
					end
					arg1:setLoadingState(tbl_10_upvr.SUCCESSFULLY_LOADED)
				end
			end)
			return
		end
		if asset_upvr:IsA("Model") then
			arg1.model = asset_upvr:Clone()
			arg1.model.Parent = nil
			arg1:addModelToViewportIfNeeded()
			arg1:setLoadingState(tbl_10_upvr.SUCCESSFULLY_LOADED)
		end
	end
end
function any_extend_result1.addModelToViewportIfNeeded(arg1) -- Line 286
	if arg1.model ~= nil and arg1.model.Parent ~= nil then
	elseif arg1.worldModelRef:getValue() and arg1.model ~= nil then
		arg1.model.Parent = arg1.worldModelRef:getValue()
		arg1:resetCameraPosition()
		if arg1.props.asset and arg1.props.asset:IsA("AnimationClip") then
			arg1.baseplate = Instance.new("Part")
			arg1.baseplate.Size = Vector3.new(8, 0.5, 8)
			arg1.baseplate.Transparency = 0.6
			arg1.baseplate.Parent = arg1.worldModelRef:getValue()
			arg1.baseplate.Position = arg1.modelCFrame.Position + Vector3.new(0, -arg1.modelExtentsSize.Y / 2, 0) + Vector3.new(0, -0.25, 0)
		end
	end
end
local function _(arg1, arg2) -- Line 308, Named "getCameraDistance"
	return (math.max(arg2.X, arg2.Y) / 2) * (1 / math.tan(math.rad(arg1) / 2)) + arg2.Z / 2
end
local function _(arg1, arg2, arg3) -- Line 318, Named "rotateVectorAround"
	return CFrame.fromAxisAngle(arg3, arg2):VectorToWorldSpace(arg1)
end
function any_extend_result1.resetCameraPosition(arg1) -- Line 322
	if not arg1.model then
	else
		arg1.modelCFrame = arg1.model:GetModelCFrame()
		arg1.initialLookVector = arg1.modelCFrame.lookVector
		local HumanoidRootPart = arg1.model:FindFirstChild("HumanoidRootPart")
		if HumanoidRootPart then
			arg1.initialLookVector = HumanoidRootPart.CFrame.lookVector
		end
		arg1.modelExtentsSize = arg1.model:GetExtentsSize()
		local modelExtentsSize = arg1.modelExtentsSize
		arg1.cameraDistance = math.max(modelExtentsSize.X, modelExtentsSize.Y) / 2 * 3.7320508075688776 + modelExtentsSize.Z / 2
		if arg1.props.asset and arg1.props.asset:IsA("AnimationClip") then
			arg1.cameraDegreesAngle = Vector2.new(0, 0)
			arg1.zoomFactor = 0.75
		else
			arg1.cameraDegreesAngle = Vector2.new(5, 20)
			arg1.zoomFactor = 0.8
		end
		arg1.cameraPanInPixels = Vector2.new(0, 0)
		arg1:updateCameraPosition()
		if arg1.state.cameraMoved then
			arg1:setState({
				cameraMoved = false;
			})
		end
	end
end
function any_extend_result1.pointsToPixelsFactor(arg1) -- Line 356
	if arg1.absoluteSize == nil or arg1.modelExtentsSize == nil or arg1.absoluteSize.Y == 0 or arg1.modelExtentsSize.Y == 0 or arg1.modelExtentsSize.X == 0 then
		return 1
	end
	return math.max(arg1.modelExtentsSize.X, arg1.modelExtentsSize.Y) / arg1.absoluteSize.Y
end
function any_extend_result1.updateCameraPosition(arg1) -- Line 371
	if arg1.absoluteSize == nil or arg1.cameraDistance == nil then
	else
		local cframe = CFrame.new(arg1.modelCFrame.p + (CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.rad(arg1.cameraDegreesAngle.Y)):VectorToWorldSpace(CFrame.fromAxisAngle(Vector3.new(1, 0, 0), math.rad(arg1.cameraDegreesAngle.X)):VectorToWorldSpace(arg1.initialLookVector))) * (arg1.cameraDistance / arg1.zoomFactor), arg1.modelCFrame.p)
		local var54 = arg1:pointsToPixelsFactor() / arg1.zoomFactor
		arg1.updateCameraCFrameBinding(cframe + cframe.UpVector * var54 * arg1.cameraPanInPixels.Y + cframe.RightVector * var54 * arg1.cameraPanInPixels.X)
		arg1.updateCameraFocusBinding(arg1.modelCFrame)
	end
end
local tbl_6_upvr = {
	resetViewButtonText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AssetPreviewView.Action.ResetView");
	loadingFailedText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AssetPreviewView.Label.LoadingFailed");
}
local InputType_upvr = UIBlox.Core.Enums.InputType
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local icons_actions_reset_upvr = Images_upvr["icons/actions/reset"]
local icons_actions_previewShrink_upvr = Images_upvr["icons/actions/previewShrink"]
local ShortcutBar_upvr = UIBlox.App.Navigation.ShortcutBar
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
local EmptyState_upvr = UIBlox.App.Indicator.EmptyState
local InteractionFrame_upvr = require(script.Parent.InteractionFrame)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local FFlagFixPublishAvatarVRViewports_upvr = require(script.Parent.Parent.Parent.FFlagFixPublishAvatarVRViewports)
function any_extend_result1.render(arg1) -- Line 405
	--[[ Upvalues[21]:
		[1]: InputType_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: ExternalEventConnection_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: getInputGroup_upvr (readonly)
		[9]: InputTypeConstants_upvr (readonly)
		[10]: Button_upvr (readonly)
		[11]: ButtonType_upvr (readonly)
		[12]: icons_actions_reset_upvr (readonly)
		[13]: icons_actions_previewShrink_upvr (readonly)
		[14]: ShortcutBar_upvr (readonly)
		[15]: tbl_10_upvr (readonly)
		[16]: ShimmerPanel_upvr (readonly)
		[17]: EmptyState_upvr (readonly)
		[18]: tbl_6_upvr (readonly)
		[19]: InteractionFrame_upvr (readonly)
		[20]: Constants_upvr (readonly)
		[21]: FFlagFixPublishAvatarVRViewports_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local loadingState = arg1.state.loadingState
	local tbl_5 = {}
	local tbl_2 = {
		icon = {
			[InputType_upvr.MouseAndKeyboard] = Images_upvr["icons/controls/mouse/scroll"];
			[InputType_upvr.Gamepad] = Images_upvr["icons/controls/keys/xboxRSVertical"];
		};
		text = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAvatarPrompt.Zoom");
	}
	tbl_5[1] = tbl_2
	tbl_5[2] = {
		icon = {
			[InputType_upvr.MouseAndKeyboard] = Images_upvr["icons/controls/mouse/clickLeft"];
			[InputType_upvr.Gamepad] = Images_upvr["icons/controls/keys/xboxRSHorizontal"];
		};
		text = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAvatarPrompt.Rotate");
	}
	tbl_5[3] = {
		icon = {
			[InputType_upvr.MouseAndKeyboard] = Images_upvr["icons/controls/mouse/clickRight"];
		};
		text = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAvatarPrompt.Pan");
	}
	tbl_5[4] = {
		icon = {
			[InputType_upvr.Gamepad] = Images_upvr["icons/controls/keys/xboxY"];
		};
		text = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAvatarPrompt.ResetView");
	}
	tbl_5[5] = {
		icon = {
			[InputType_upvr.Gamepad] = Images_upvr["icons/controls/keys/xboxB"];
		};
		text = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAvatarPrompt.Close");
	}
	tbl_2 = arg1.state.cameraMoved
	local var80 = tbl_2
	if var80 then
		var80 = not arg1.state.isGamepad
	end
	local module = {
		LastInputTypeConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = UserInputService_upvr.LastInputTypeChanged;
			callback = function(arg1_10) -- Line 461, Named "callback"
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: getInputGroup_upvr (copied, readonly)
					[3]: InputTypeConstants_upvr (copied, readonly)
				]]
				local tbl_7 = {}
				local var87
				if getInputGroup_upvr(arg1_10) ~= InputTypeConstants_upvr.Gamepad then
					var87 = false
				else
					var87 = true
				end
				tbl_7.isGamepad = var87
				arg1:setState(tbl_7)
			end;
		}) or nil;
	}
	local tbl_9 = {}
	local any_createElement_result1 = Roact_upvr.createElement("UIPadding", {
		PaddingBottom = UDim.new(0, 24);
		PaddingLeft = UDim.new(0, 24);
		PaddingRight = UDim.new(0, 24);
	})
	tbl_9.UIPadding = any_createElement_result1
	if var80 then
		any_createElement_result1 = Roact_upvr.createElement
		any_createElement_result1 = any_createElement_result1(Button_upvr, {
			buttonType = ButtonType_upvr.Secondary;
			size = UDim2.fromOffset(36, 36);
			position = UDim2.fromScale(0, 1);
			anchorPoint = Vector2.new(0, 1);
			icon = icons_actions_reset_upvr;
			onActivated = arg1.onResetButtonPressed;
		})
	else
		any_createElement_result1 = nil
	end
	tbl_9.ResetViewButton = any_createElement_result1
	tbl_9.ShrinkPreviewButton = Roact_upvr.createElement(Button_upvr, {
		buttonType = ButtonType_upvr.PrimarySystem;
		size = UDim2.fromOffset(36, 36);
		icon = icons_actions_previewShrink_upvr;
		position = UDim2.fromScale(1, 1);
		anchorPoint = Vector2.new(1, 1);
		onActivated = arg1.props.closePreviewView;
	})
	module.ButtonFrame = Roact_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		BackgroundTransparency = 1;
	}, tbl_9)
	if arg1.props.asset:IsA("Model") then
		local _ = {
			position = UDim2.fromScale(0.5, 0.9);
			anchorPoint = Vector2.new(0.5, 1);
			transitionDelaySeconds = 2;
			items = tbl_5;
		}
	else
	end
	module.TooltipHint = nil
	if loadingState == tbl_10_upvr.LOADING then
	end
	module.ShimmerFrame = Roact_upvr.createElement(ShimmerPanel_upvr, {
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	})
	if loadingState == tbl_10_upvr.FAILED_TO_LOAD then
	end
	module.LoadingFailed = Roact_upvr.createElement(EmptyState_upvr, {
		text = tbl_6_upvr.loadingFailedText;
		size = UDim2.fromScale(1, 1);
		onActivated = arg1.onRetryLoading;
	})
	local tbl_12 = {
		ZIndex = -1;
	}
	local udim2 = UDim2.fromScale(1, 1)
	tbl_12.Size = udim2
	if loadingState ~= tbl_10_upvr.SUCCESSFULLY_LOADED then
		udim2 = false
	else
		udim2 = true
	end
	tbl_12.Visible = udim2
	tbl_12.panByPixels = arg1.panByPixels
	tbl_12.rotateByPixels = arg1.rotateByPixels
	tbl_12.setAngularVelocityByPixels = arg1.setAngularVelocityByPixels
	tbl_12.zoomToPoint = arg1.zoomToPoint
	local tbl_8 = {}
	local tbl = {}
	local tbl_11 = {
		CameraType = Enum.CameraType.Scriptable;
		FieldOfView = 30;
	}
	if FFlagFixPublishAvatarVRViewports_upvr then
		-- KONSTANTWARNING: GOTO [554] #384
	end
	tbl_11.HeadLocked = nil
	if FFlagFixPublishAvatarVRViewports_upvr then
	else
	end
	tbl_11.VRTiltAndRollEnabled = nil
	tbl_11.CFrame = arg1.cameraCFrameBinding
	tbl_11.Focus = arg1.cameraFocusBinding
	tbl_11[Roact_upvr.Ref] = arg1.cameraRef
	tbl.Camera = Roact_upvr.createElement("Camera", tbl_11)
	tbl.WorldModel = Roact_upvr.createElement("WorldModel", {
		[Roact_upvr.Ref] = arg1.worldModelRef;
	})
	tbl_8.ViewportFrame = Roact_upvr.createElement("ViewportFrame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		LightColor = Constants_upvr.ViewportLightColor;
		Ambient = Constants_upvr.ViewportLightAmbient;
		LightDirection = Constants_upvr.ViewportLightDirection;
		CurrentCamera = arg1.cameraRef;
	}, tbl)
	module.InteractionFrame = Roact_upvr.createElement(InteractionFrame_upvr, tbl_12, tbl_8)
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		[Roact_upvr.Ref] = arg1.ref;
		[Roact_upvr.Change.AbsoluteSize] = function(arg1_8) -- Line 450
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.absoluteSize = arg1_8.AbsoluteSize
			arg1:updateCameraPosition()
		end;
		[Roact_upvr.Change.AbsolutePosition] = function(arg1_9) -- Line 454
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			arg1.absolutePosition = arg1_9.absolutePosition + GuiService_upvr:GetGuiInset()
		end;
	}, module)
end
local RunService_upvr = game:GetService("RunService")
local GamepadUtils_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Utils.GamepadUtils
function any_extend_result1.setUpGamepad(arg1) -- Line 561
	--[[ Upvalues[3]:
		[1]: ContextActionService_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: GamepadUtils_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("PreviewViewportClose")
	ContextActionService_upvr:UnbindCoreAction("PreviewViewportReset")
	ContextActionService_upvr:UnbindCoreAction("PreviewViewportRotateAndZoom")
	ContextActionService_upvr:BindCoreAction("PreviewViewportClose", arg1.props.closePreviewView, false, Enum.KeyCode.ButtonB)
	ContextActionService_upvr:BindCoreAction("PreviewViewportReset", function() -- Line 572
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:resetCameraPosition()
	end, false, Enum.KeyCode.ButtonY)
	ContextActionService_upvr:BindCoreAction("PreviewViewportRotateAndZoom", arg1.storeInput, false, Enum.KeyCode.Thumbstick2)
	arg1.gamePadConnection = RunService_upvr.RenderStepped:Connect(function(arg1_11) -- Line 582
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GamepadUtils_upvr (copied, readonly)
		]]
		if arg1.inputState == Enum.UserInputState.Change and arg1.inputObject then
			GamepadUtils_upvr.rotateAndZoom(arg1.inputObject, arg1_11, arg1.setAngularVelocityByPixels, arg1.rotateByRadians, arg1.zoomToPoint)
		end
	end)
end
function any_extend_result1.didMount(arg1) -- Line 595
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	arg1.isMounted = true
	arg1.absolutePosition = arg1.ref.current.AbsolutePosition + GuiService_upvr:GetGuiInset()
	arg1:processAsset()
	arg1:setUpGamepad()
end
function any_extend_result1.cleanupGamepad(arg1) -- Line 603
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("PreviewViewportClose")
	ContextActionService_upvr:UnbindCoreAction("PreviewViewportReset")
	ContextActionService_upvr:UnbindCoreAction("PreviewViewportRotateAndZoom")
	if arg1.gamePadConnection then
		arg1.gamePadConnection:Disconnect()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 612
	arg1.isMounted = false
	arg1:cleanupGamepad()
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 617
	local var108
	if arg1.props.asset == arg2.asset then
		var108 = false
	else
		var108 = true
	end
	if var108 then
		if arg1.model ~= nil then
			arg1.model.Parent = nil
			arg1.model = nil
		end
		if arg1.baseplate ~= nil then
			arg1.baseplate.Parent = nil
			arg1.baseplate:Destroy()
		end
		arg1:processAsset()
	end
end
return any_extend_result1