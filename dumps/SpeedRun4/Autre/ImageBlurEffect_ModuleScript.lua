-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:32
-- Luau version 6, Types version 3
-- Time taken: 0.004060 seconds

local Parent = script.Parent.Parent
local BlurDirection_upvr = require(Parent.Enums.BlurDirection)
local function getImageRect_upvr(arg1, arg2) -- Line 24, Named "getImageRect"
	--[[ Upvalues[1]:
		[1]: BlurDirection_upvr (readonly)
	]]
	local X = arg2.X
	local Y = arg2.Y
	if arg1 == BlurDirection_upvr.Up then
		return Vector2.new(0, 0), Vector2.new(X, 1)
	end
	if arg1 == BlurDirection_upvr.Down then
		return Vector2.new(0, Y - 1), Vector2.new(X, 1)
	end
	if arg1 == BlurDirection_upvr.Left then
		return Vector2.new(0, 0), Vector2.new(1, Y)
	end
	if arg1 == BlurDirection_upvr.Right then
		return Vector2.new(X - 1, 0), Vector2.new(1, Y)
	end
	return nil
end
local function _(arg1) -- Line 40, Named "getGradientRotation"
	--[[ Upvalues[1]:
		[1]: BlurDirection_upvr (readonly)
	]]
	if arg1 == BlurDirection_upvr.Up then
		return 270
	end
	if arg1 == BlurDirection_upvr.Down then
		return 90
	end
	if arg1 == BlurDirection_upvr.Left then
		return 180
	end
	if arg1 == BlurDirection_upvr.Right then
		return 0
	end
	return nil
end
local function getRadialGradientPosition_upvr(arg1) -- Line 54, Named "getRadialGradientPosition"
	--[[ Upvalues[1]:
		[1]: BlurDirection_upvr (readonly)
	]]
	if arg1 == BlurDirection_upvr.Up then
		return UDim2.fromScale(0.5, 1)
	end
	if arg1 == BlurDirection_upvr.Down then
		return UDim2.fromScale(0.5, 0)
	end
	if arg1 == BlurDirection_upvr.Left then
		return UDim2.fromScale(1, 0.5)
	end
	if arg1 == BlurDirection_upvr.Right then
		return UDim2.fromScale(0, 0.5)
	end
	return nil
end
local function getTransparency_upvr(arg1, arg2) -- Line 68, Named "getTransparency"
	if not arg2 then
		return arg1
	end
	return arg2:map(function(arg1_2) -- Line 76
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1 + (1 - arg1) * arg1_2
	end)
end
local React_upvr = require(Parent.Parent.React)
return function(arg1) -- Line 81, Named "ImageBlurEffect"
	--[[ Upvalues[5]:
		[1]: getImageRect_upvr (readonly)
		[2]: getRadialGradientPosition_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: getTransparency_upvr (readonly)
		[5]: BlurDirection_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7
	if arg1.gradientColor then
		var7 = arg1.gradientColor
	else
		var7 = Color3.new(0, 0, 0)
	end
	local getImageRect_upvr_result1, getImageRect_upvr_result2 = getImageRect_upvr(arg1.direction, arg1.imageSize)
	local getRadialGradientPosition_result1 = getRadialGradientPosition_upvr(arg1.direction)
	local module = {}
	local tbl = {
		Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, var7)});
	}
	local direction = arg1.direction
	if direction == BlurDirection_upvr.Up then
	elseif direction == BlurDirection_upvr.Down then
	elseif direction == BlurDirection_upvr.Left then
	elseif direction == BlurDirection_upvr.Right then
	else
	end
	tbl.Rotation = nil
	tbl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3), NumberSequenceKeypoint.new(0.5, 0.5), NumberSequenceKeypoint.new(1, 1)})
	module.UIGradient = React_upvr.createElement("UIGradient", tbl)
	module.RadialBlur = React_upvr.createElement("ImageLabel", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/shadowblurmask.png";
		ImageTransparency = React_upvr.useMemo(function() -- Line 90
			--[[ Upvalues[2]:
				[1]: getTransparency_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return getTransparency_upvr(0.9, arg1.transparencyBinding)
		end, {arg1.transparencyBinding});
		Position = getRadialGradientPosition_result1;
		ScaleType = Enum.ScaleType.Crop;
		Size = UDim2.fromScale(2, 2);
		ZIndex = 1;
	})
	module.SoftEdges = React_upvr.createElement("ImageLabel", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/VR/edgeBlur.png";
		ImageTransparency = React_upvr.useMemo(function() -- Line 94
			--[[ Upvalues[2]:
				[1]: getTransparency_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return getTransparency_upvr(0.8, arg1.transparencyBinding)
		end, {arg1.transparencyBinding});
		Position = getRadialGradientPosition_result1;
		ScaleType = Enum.ScaleType.Crop;
		Size = UDim2.fromScale(1.5, 2);
		ZIndex = 2;
	})
	return React_upvr.createElement("ImageLabel", {
		AnchorPoint = arg1.AnchorPoint;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		Image = arg1.image;
		ImageRectOffset = getImageRect_upvr_result1;
		ImageRectSize = getImageRect_upvr_result2;
		ImageTransparency = React_upvr.useMemo(function() -- Line 86
			--[[ Upvalues[2]:
				[1]: getTransparency_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return getTransparency_upvr(0, arg1.transparencyBinding)
		end, {arg1.transparencyBinding});
		Position = arg1.Position;
		ScaleType = Enum.ScaleType.Crop;
		Size = arg1.Size;
		ZIndex = arg1.ZIndex;
	}, module)
end