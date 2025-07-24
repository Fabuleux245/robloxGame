-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:52
-- Luau version 6, Types version 3
-- Time taken: 0.011880 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("HumanoidViewport")
any_extend_result1.validateProps = t.strictInterface({
	humanoidDescription = t.optional(t.instanceOf("HumanoidDescription"));
	loadingFailed = t.boolean;
	retryLoadDescription = t.callback;
	rigType = t.optional(t.enum(Enum.HumanoidRigType));
})
function any_extend_result1.init(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1:setState({
		loading = true;
		loadingFailed = false;
	})
	arg1.cameraRef = Roact_upvr.createRef()
	arg1.worldModelRef = Roact_upvr.createRef()
	local any_createBinding_result1_2, any_createBinding_result2_2 = Roact_upvr.createBinding(CFrame.new())
	arg1.cameraCFrameBinding = any_createBinding_result1_2
	arg1.updateCameraCFrameBinding = any_createBinding_result2_2
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(CFrame.new())
	arg1.cameraFocusBinding = any_createBinding_result1
	arg1.updateCameraFocusBinding = any_createBinding_result2
	arg1.humanoidModel = nil
	arg1.mounted = false
	function arg1.onRetryLoading() -- Line 49
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			loading = true;
			loadingFailed = false;
		})
		if arg1.props.humanoidDescription then
			arg1:loadHumanoidModel()
		else
			arg1.props.retryLoadDescription()
		end
	end
end
local cframe_2_upvr = CFrame.fromEulerAnglesXYZ(0.3490658503988659, 0.2617993877991494, 0.6981317007977318)
local function rotateLookVector_upvr(arg1) -- Line 63, Named "rotateLookVector"
	--[[ Upvalues[1]:
		[1]: cframe_2_upvr (readonly)
	]]
	local var15 = arg1
	if 0.95 < math.abs(var15.Y) then
		var15 = Vector3.new(0, 0, -1)
	else
		var15 = Vector3.new(var15.X, 0, var15.Z)
		var15 = var15.unit
	end
	return (CFrame.new(Vector3.new(0, 0, 0), var15) * cframe_2_upvr).lookVector
end
local function _(arg1, arg2) -- Line 76, Named "getCameraOffset"
	return (math.max(arg2.X, arg2.Y) / 2) * (1 / math.tan(math.rad(arg1) / 2)) + arg2.Z / 2
end
local function _(arg1, arg2, arg3) -- Line 86, Named "zoomExtents"
	local any_GetExtentsSize_result1_2 = arg1:GetExtentsSize()
	return arg3 - arg3.p + arg1:GetModelCFrame().p + (arg2) * ((math.max(any_GetExtentsSize_result1_2.X, any_GetExtentsSize_result1_2.Y) / 2 * 1.4281480067421146 + any_GetExtentsSize_result1_2.Z / 2) * 1)
end
function any_extend_result1.positionCamera(arg1) -- Line 97
	--[[ Upvalues[1]:
		[1]: rotateLookVector_upvr (readonly)
	]]
	local humanoidModel = arg1.humanoidModel
	local any_GetModelCFrame_result1 = humanoidModel:GetModelCFrame()
	local lookVector = any_GetModelCFrame_result1.lookVector
	local HumanoidRootPart = humanoidModel:FindFirstChild("HumanoidRootPart")
	if HumanoidRootPart then
		lookVector = HumanoidRootPart.CFrame.lookVector
	end
	local rotateLookVector_result1 = rotateLookVector_upvr(lookVector)
	local cframe = CFrame.new(any_GetModelCFrame_result1.p + rotateLookVector_result1 * 5, any_GetModelCFrame_result1.p)
	local any_GetExtentsSize_result1 = humanoidModel:GetExtentsSize()
	arg1.updateCameraCFrameBinding(cframe - cframe.p + humanoidModel:GetModelCFrame().p + (rotateLookVector_result1) * ((math.max(any_GetExtentsSize_result1.X, any_GetExtentsSize_result1.Y) / 2 * 1.4281480067421146 + any_GetExtentsSize_result1.Z / 2) * 1))
	arg1.updateCameraFocusBinding(any_GetModelCFrame_result1)
end
function any_extend_result1.loadIdleAnimation(arg1, arg2) -- Line 114
	local class_Humanoid = arg2:FindFirstChildOfClass("Humanoid")
	if class_Humanoid.HumanoidDescription.IdleAnimation == 0 then
	else
		local Animate = arg2:FindFirstChild("Animate")
		if not Animate then return end
		local idle = Animate:FindFirstChild("idle")
		if not idle then return end
		local class_Animation = idle:FindFirstChildOfClass("Animation")
		if not class_Animation then return end
		local any_LoadAnimation_result1 = class_Humanoid:LoadAnimation(class_Animation)
		any_LoadAnimation_result1.Looped = true
		any_LoadAnimation_result1:Play()
	end
end
local Players_upvr = game:GetService("Players")
local Promise_upvr = require(CorePackages.Packages.Promise)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AXClusterCompositionTimeoutMs", 3000)
function any_extend_result1.loadHumanoidModel(arg1) -- Line 142
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local humanoidDescription_upvr = arg1.props.humanoidDescription
	local rigType_upvr = arg1.props.rigType
	coroutine.wrap(function() -- Line 146
		--[[ Upvalues[6]:
			[1]: Players_upvr (copied, readonly)
			[2]: humanoidDescription_upvr (readonly)
			[3]: rigType_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: game_DefineFastInt_result1_upvr (copied, readonly)
		]]
		local var35_upvw
		pcall(function() -- Line 148
			--[[ Upvalues[4]:
				[1]: var35_upvw (read and write)
				[2]: Players_upvr (copied, readonly)
				[3]: humanoidDescription_upvr (copied, readonly)
				[4]: rigType_upvr (copied, readonly)
			]]
			var35_upvw = Players_upvr:CreateHumanoidModelFromDescription(humanoidDescription_upvr, rigType_upvr)
		end)
		if not arg1.mounted then
		else
			if arg1.props.humanoidDescription ~= humanoidDescription_upvr then return end
			if arg1.props.rigType ~= rigType_upvr then return end
			if var35_upvw == nil then
				arg1:setState({
					loadingFailed = true;
				})
				return
			end
			arg1.humanoidModel = var35_upvw
			if arg1.worldModelRef:getValue() then
				arg1.humanoidModel.Parent = arg1.worldModelRef:getValue()
			end
			if 0 < #humanoidDescription_upvr:GetAccessories(false) then
				Promise_upvr.race({Promise_upvr.fromEvent(var35_upvw.Humanoid.ClusterCompositionFinished), Promise_upvr.delay(game_DefineFastInt_result1_upvr * 0.001)}):await()
			end
			if not arg1.mounted then return end
			arg1:positionCamera()
			arg1:loadIdleAnimation(var35_upvw)
			arg1:setState({
				loading = false;
				loadingFailed = false;
			})
		end
	end)()
end
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
local EmptyState_upvr = UIBlox.App.Indicator.EmptyState
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
function any_extend_result1.render(arg1) -- Line 200
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: ShimmerPanel_upvr (readonly)
		[3]: EmptyState_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
	]]
	local loadingFailed = arg1.props.loadingFailed
	if not loadingFailed then
		loadingFailed = arg1.state.loadingFailed
	end
	local var44 = not loadingFailed
	if var44 then
		var44 = arg1.state.loading
	end
	local var45 = loadingFailed
	if not var45 then
		var45 = arg1.state.loading
	end
	local module = {
		AspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
			AspectRatio = 1;
			AspectType = Enum.AspectType.FitWithinMaxSize;
			DominantAxis = Enum.DominantAxis.Width;
		});
	}
	local var49 = var44
	if var49 then
		var49 = Roact_upvr.createElement
		var49 = var49(ShimmerPanel_upvr, {
			Size = UDim2.fromScale(1, 1);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
		})
	end
	module.ShimmerFrame = var49
	var49 = loadingFailed
	local var51 = var49
	if var51 then
		var51 = Roact_upvr.createElement
		var51 = var51(EmptyState_upvr, {
			text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.ItemsListLoadingFailed");
			size = UDim2.fromScale(1, 1);
			onActivated = arg1.onRetryLoading;
		})
	end
	module.LoadingFailed = var51
	module.ViewportFrame = Roact_upvr.createElement("ViewportFrame", {
		Visible = not var45;
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		LightColor = Color3.fromRGB(240, 240, 240);
		Ambient = Color3.fromRGB(240, 240, 240);
		CurrentCamera = arg1.cameraRef;
	}, {
		Camera = Roact_upvr.createElement("Camera", {
			CameraType = Enum.CameraType.Scriptable;
			FieldOfView = 70;
			CFrame = arg1.cameraCFrameBinding;
			Focus = arg1.cameraFocusBinding;
			[Roact_upvr.Ref] = arg1.cameraRef;
		});
		WorldModel = Roact_upvr.createElement("WorldModel", {
			[Roact_upvr.Ref] = arg1.worldModelRef;
		});
	})
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	}, module)
end
function any_extend_result1.didMount(arg1) -- Line 256
	arg1.mounted = true
	if arg1.props.humanoidDescription then
		arg1:loadHumanoidModel()
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 264
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var60
	if var60 then
		var60 = arg1.humanoidModel
		if var60 then
			var60 = arg1.humanoidModel
			var60.Parent = arg1.worldModelRef:getValue()
		end
	end
	if arg1.props.humanoidDescription == arg2.humanoidDescription then
		var60 = false
	else
		var60 = true
	end
	if arg1.props.rigType == arg2.rigType then
	else
	end
	if arg1.props.rigType ~= nil then
		if arg1.props.humanoidDescription ~= nil then
		end
	end
	if var60 or true then
		arg1:setState({
			loading = true;
		})
		if arg1.props.humanoidDescription ~= nil then
			arg1:loadHumanoidModel()
		end
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 286
	arg1.mounted = false
end
return any_extend_result1