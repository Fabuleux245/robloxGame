-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:15
-- Luau version 6, Types version 3
-- Time taken: 0.003768 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ObjectViewport")
any_extend_result1.validateProps = t.strictInterface({
	model = t.instanceOf("Model");
})
local function _(arg1, arg2) -- Line 23, Named "getCameraDistance"
	local Z = arg2.Z
	return (math.max(arg2.X, arg2.Y, Z) / 2) * (1 / math.tan(math.rad(arg1) / 2)) + Z / 2
end
local function _(arg1, arg2, arg3) -- Line 33, Named "rotateVectorAround"
	return CFrame.fromAxisAngle(arg3, arg2):VectorToWorldSpace(arg1)
end
function any_extend_result1.init(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.cameraRef = Roact_upvr.createRef()
	arg1.worldModelRef = Roact_upvr.createRef()
	local any_createBinding_result1_3, any_createBinding_result2_3 = Roact_upvr.createBinding(CFrame.new())
	arg1.cameraCFrameBinding = any_createBinding_result1_3
	arg1.updateCameraCFrameBinding = any_createBinding_result2_3
	local any_createBinding_result1_2, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.cameraRotationBinding = any_createBinding_result1_2
	arg1.updateCameraRotationBinding = any_createBinding_result2
	local any_createBinding_result1, any_createBinding_result2_2 = Roact_upvr.createBinding(CFrame.new())
	arg1.cameraFocusBinding = any_createBinding_result1
	arg1.updateCameraFocusBinding = any_createBinding_result2_2
	arg1:OnModelChanged()
end
function any_extend_result1.OnModelChanged(arg1) -- Line 49
	if arg1.props.model ~= nil then
		arg1.modelCFrame = arg1.props.model:GetModelCFrame()
		arg1.initialLookVector = arg1.modelCFrame.lookVector
		arg1.modelExtentsSize = arg1.props.model:GetExtentsSize()
		local modelExtentsSize = arg1.modelExtentsSize
		local Z_2 = modelExtentsSize.Z
		arg1.cameraDistance = math.max(modelExtentsSize.X, modelExtentsSize.Y, Z_2) / 2 * 1.4281480067421146 + Z_2 / 2
	end
end
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.render(arg1) -- Line 58
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0, 0);
		AnchorPoint = Vector2.new(0, 0);
		Size = UDim2.fromScale(1, 1);
	}, {
		AspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
			AspectRatio = 1;
			AspectType = Enum.AspectType.FitWithinMaxSize;
			DominantAxis = Enum.DominantAxis.Width;
		});
		ViewportFrame = Roact_upvr.createElement("ViewportFrame", {
			BackgroundTransparency = 0;
			BackgroundColor3 = Color3.new(0, 0, 0);
			Size = UDim2.fromScale(1, 1);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			LightColor = Color3.fromRGB(240, 240, 240);
			LightDirection = Vector3.new(1, 1, 1);
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
			RenderSteppedConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, {
				event = RunService_upvr.RenderStepped;
				callback = function() -- Line 99, Named "callback"
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					arg1.updateCameraRotationBinding(arg1.cameraRotationBinding:getValue() + 0.01)
					arg1.updateCameraCFrameBinding(CFrame.new(arg1.modelCFrame.p + CFrame.fromAxisAngle(Vector3.new(0, 1, 0), arg1.cameraRotationBinding:getValue()):VectorToWorldSpace(arg1.initialLookVector) * arg1.cameraDistance, arg1.modelCFrame.p))
				end;
			});
		});
	})
end
function any_extend_result1.didMount(arg1) -- Line 112
	if arg1.worldModelRef:getValue() and arg1.props.model ~= nil then
		arg1.props.model.Parent = arg1.worldModelRef:getValue()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 118
	if arg1.props.model then
		arg1.props.model.Parent = nil
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 124
	local var25
	if arg1.props.model == arg2.model then
		var25 = false
	else
		var25 = true
	end
	if var25 then
		if arg2.model ~= nil then
			arg2.model.Parent = nil
		end
		if arg1.props.model ~= nil then
			arg1.props.model.Parent = arg1.worldModelRef:getValue()
		end
		arg1:OnModelChanged()
	end
end
return any_extend_result1