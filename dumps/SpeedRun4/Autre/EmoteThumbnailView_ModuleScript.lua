-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:14
-- Luau version 6, Types version 3
-- Time taken: 0.004318 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("EmoteThumbnailView")
any_extend_result1.validateProps = t.strictInterface({
	animationClip = t.instanceIsA("AnimationClip");
	thumbnailParameters = require(script.Parent.EmoteThumbnailParameters).validate;
	position = t.optional(t.UDim2);
	anchorPoint = t.optional(t.Vector2);
	size = t.optional(t.UDim2);
})
local EmoteUtility_upvr = require(CorePackages.Packages.Thumbnailing).EmoteUtility
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.updateCameraAndCharacterPose(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: EmoteUtility_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	if arg1.character == nil then
	else
		local props = arg1.props
		local character_upvr = arg1.character
		local animationClip = props.animationClip
		local thumbnailParameters_upvr = props.thumbnailParameters
		local var12
		if animationClip:IsA("CurveAnimation") then
			var12 = EmoteUtility_upvr.GetThumbnailKeyframeFromCurve(thumbnailParameters_upvr.thumbnailTime, animationClip, thumbnailParameters_upvr.thumbnailCharacterRotation)
		elseif animationClip:IsA("KeyframeSequence") then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var12 = EmoteUtility_upvr.GetThumbnailKeyframe(thumbnailParameters_upvr.thumbnailKeyframe, animationClip, thumbnailParameters_upvr.thumbnailCharacterRotation)
		else
			error("Unsupported Animation data:", animationClip.ClassName)
		end
		EmoteUtility_upvr.SetPlayerCharacterNeutralPose(character_upvr)
		EmoteUtility_upvr.ApplyKeyframe(character_upvr, var12)
		task.spawn(function() -- Line 64
			--[[ Upvalues[5]:
				[1]: RunService_upvr (copied, readonly)
				[2]: character_upvr (readonly)
				[3]: EmoteUtility_upvr (copied, readonly)
				[4]: thumbnailParameters_upvr (readonly)
				[5]: arg1 (readonly)
			]]
			RunService_upvr.PreAnimation:Wait()
			RunService_upvr.PostSimulation:Wait()
			local Folder = Instance.new("Folder")
			Folder.Parent = character_upvr
			Folder:Destroy()
			arg1.updateCameraCFrameBinding(EmoteUtility_upvr.ThumbnailZoomExtents(character_upvr, 20, thumbnailParameters_upvr.thumbnailHorizontalOffset, thumbnailParameters_upvr.thumbnailVerticalOffset, thumbnailParameters_upvr.thumbnailZoom))
			arg1.updateCameraFocusBinding(character_upvr:GetModelCFrame())
		end)
	end
end
function any_extend_result1.addCharacterToViewportIfNeeded(arg1) -- Line 90
	if arg1.character ~= nil and arg1.character.Parent ~= nil then
	elseif arg1.worldModelRef:getValue() and arg1.character ~= nil then
		arg1.character.Parent = arg1.worldModelRef:getValue()
		arg1:updateCameraAndCharacterPose()
	end
end
local Players_upvr = game:GetService("Players")
function any_extend_result1.init(arg1) -- Line 101
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	arg1.cameraRef = Roact_upvr.createRef()
	arg1.worldModelRef = Roact_upvr.createRef()
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(CFrame.new())
	arg1.cameraCFrameBinding = any_createBinding_result1
	arg1.updateCameraCFrameBinding = any_createBinding_result2
	local any_createBinding_result1_2, any_createBinding_result2_2 = Roact_upvr.createBinding(CFrame.new())
	arg1.cameraFocusBinding = any_createBinding_result1_2
	arg1.updateCameraFocusBinding = any_createBinding_result2_2
	task.spawn(function() -- Line 108
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 110
			--[[ Upvalues[1]:
				[1]: Players_upvr (copied, readonly)
			]]
			return Players_upvr:GetHumanoidDescriptionFromOutfitId(1342485078)
		end)
		if not pcall_result1 then
			pcall_result2 = Instance.new("HumanoidDescription")
		end
		arg1.character = Players_upvr:CreateHumanoidModelFromDescription(pcall_result2, Enum.HumanoidRigType.R15)
		arg1:addCharacterToViewportIfNeeded()
	end)
end
function any_extend_result1.render(arg1) -- Line 123
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local module = {
		BackgroundTransparency = 0;
	}
	local position = arg1.props.position
	if not position then
		position = UDim2.fromScale(0, 0)
	end
	module.Position = position
	position = arg1.props.anchorPoint
	local var26 = position
	if not var26 then
		var26 = Vector2.new(0, 0)
	end
	module.AnchorPoint = var26
	var26 = arg1.props.size
	local var27 = var26
	if not var27 then
		var27 = UDim2.fromScale(1, 1)
	end
	module.Size = var27
	module.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
	return Roact_upvr.createElement("Frame", module, {
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
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
			ImageColor3 = Color3.new(0, 0, 0);
			ImageTransparency = 0;
			BackgroundTransparency = 1;
			CurrentCamera = arg1.cameraRef;
		}, {
			Camera = Roact_upvr.createElement("Camera", {
				CameraType = Enum.CameraType.Scriptable;
				FieldOfView = 20;
				CFrame = arg1.cameraCFrameBinding;
				Focus = arg1.cameraFocusBinding;
				[Roact_upvr.Ref] = arg1.cameraRef;
			});
			WorldModel = Roact_upvr.createElement("WorldModel", {
				[Roact_upvr.Ref] = arg1.worldModelRef;
			});
		});
	})
end
function any_extend_result1.didMount(arg1) -- Line 172
	arg1:addCharacterToViewportIfNeeded()
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 176
	arg1:updateCameraAndCharacterPose()
end
return any_extend_result1