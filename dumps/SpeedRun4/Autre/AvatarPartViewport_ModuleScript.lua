-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:18
-- Luau version 6, Types version 3
-- Time taken: 0.005607 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local CameraUtility_upvr = require(CorePackages.Packages.Thumbnailing).CameraUtility
local MannequinUtility_upvr = require(CorePackages.Packages.Thumbnailing).MannequinUtility
local any_extend_result1 = Roact_upvr.PureComponent:extend("AvatarPartViewport")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.number);
	asset = t.union(t.table, t.instanceOf("MeshPart"), t.instanceOf("Accessory"));
	viewportSize = t.optional(t.Vector2);
})
function any_extend_result1.init(arg1) -- Line 36
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.camera = nil
	arg1.modelRef = Roact_upvr.createRef()
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(nil)
	arg1.camera = any_createBinding_result1
	arg1.updateCamera = any_createBinding_result2
end
local FFlagFixPublishAvatarVRViewports_upvr = require(script.Parent.Parent.Parent.Parent.FFlagFixPublishAvatarVRViewports)
function any_extend_result1.createViewportCamera(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: FFlagFixPublishAvatarVRViewports_upvr (readonly)
	]]
	local Camera = Instance.new("Camera")
	Camera.Parent = arg1.modelRef:getValue()
	Camera.CameraType = Enum.CameraType.Scriptable
	if FFlagFixPublishAvatarVRViewports_upvr then
		Camera.HeadLocked = true
		Camera.VRTiltAndRollEnabled = true
	end
	return Camera
end
function any_extend_result1.addBodyPartMannequinToViewport(arg1) -- Line 54
	--[[ Upvalues[2]:
		[1]: MannequinUtility_upvr (readonly)
		[2]: CameraUtility_upvr (readonly)
	]]
	local any_CreateBodyPartMannequin_result1, any_CreateBodyPartMannequin_result2, any_CreateBodyPartMannequin_result3 = MannequinUtility_upvr.CreateBodyPartMannequin(arg1.props.asset, false)
	local any_SetupBodyPartMannequin_result1, any_SetupBodyPartMannequin_result2 = MannequinUtility_upvr.SetupBodyPartMannequin(any_CreateBodyPartMannequin_result1, any_CreateBodyPartMannequin_result2, any_CreateBodyPartMannequin_result3, arg1.props.asset)
	any_CreateBodyPartMannequin_result3.Parent = arg1.modelRef:getValue()
	local any_createViewportCamera_result1 = arg1:createViewportCamera()
	CameraUtility_upvr.SetupBodyPartCamera(any_CreateBodyPartMannequin_result3, any_SetupBodyPartMannequin_result1, any_SetupBodyPartMannequin_result2, any_createViewportCamera_result1)
	arg1.updateCamera(any_createViewportCamera_result1)
end
function any_extend_result1.addHeadModelToViewport(arg1) -- Line 66
	--[[ Upvalues[2]:
		[1]: MannequinUtility_upvr (readonly)
		[2]: CameraUtility_upvr (readonly)
	]]
	local any_CreateHeadModel_result1 = MannequinUtility_upvr.CreateHeadModel(arg1.props.asset)
	any_CreateHeadModel_result1.Parent = arg1.modelRef:getValue()
	local any_createViewportCamera_result1_2 = arg1:createViewportCamera()
	CameraUtility_upvr.SetupHeadCamera(any_CreateHeadModel_result1, any_createViewportCamera_result1_2)
	arg1.updateCamera(any_createViewportCamera_result1_2)
end
function any_extend_result1.addAccessoryToViewport(arg1) -- Line 75
	--[[ Upvalues[1]:
		[1]: CameraUtility_upvr (readonly)
	]]
	local Model = Instance.new("Model")
	arg1.props.asset.Parent = Model
	Model.Parent = arg1.modelRef:getValue()
	local any_createViewportCamera_result1_3 = arg1:createViewportCamera()
	CameraUtility_upvr.SetupAccessoryCamera(Model, any_createViewportCamera_result1_3)
	arg1.updateCamera(any_createViewportCamera_result1_3)
end
function any_extend_result1.didMount(arg1) -- Line 85
	local asset = arg1.props.asset
	if typeof(asset) == "Instance" then
		if asset:IsA("MeshPart") then
			arg1:addHeadModelToViewport()
		else
			arg1:addAccessoryToViewport()
		end
	end
	arg1:addBodyPartMannequinToViewport()
end
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Style.withStyle
local Constants_upvr = require(script.Parent.Parent.Parent.Parent.Constants)
function any_extend_result1.render(arg1) -- Line 98
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 99
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		local var27
		if arg1.props.viewportSize then
			var27 = arg1.props.viewportSize
		else
			var27 = Constants_upvr.ItemCardWidthLandscape
		end
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = arg1.props.LayoutOrder;
			BackgroundColor3 = Theme.PlaceHolder.Color;
			BackgroundTransparency = Theme.PlaceHolder.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.fromOffset(var27, var27);
			ZIndex = 0;
		}, {
			UICorner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 10);
			});
			AspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1;
				AspectType = Enum.AspectType.FitWithinMaxSize;
				DominantAxis = Enum.DominantAxis.Width;
			});
			ViewportFrame = Roact_upvr.createElement("ViewportFrame", {
				Size = UDim2.fromScale(1, 1);
				Position = UDim2.fromScale(0.5, 0.5);
				AnchorPoint = Vector2.new(0.5, 0.5);
				ImageTransparency = 0;
				BackgroundTransparency = 1;
				LightColor = Constants_upvr.ViewportLightColor;
				Ambient = Constants_upvr.ViewportLightAmbient;
				LightDirection = Constants_upvr.ViewportLightDirection;
				CurrentCamera = arg1.camera;
			}, {
				UICorner = Roact_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(0, 10);
				});
				WorldModel = Roact_upvr.createElement("WorldModel", {
					[Roact_upvr.Ref] = arg1.modelRef;
				});
			});
		})
	end)
end
return any_extend_result1