-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:22
-- Luau version 6, Types version 3
-- Time taken: 0.006413 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local function renderHalfCircle_upvr(arg1, arg2) -- Line 38, Named "renderHalfCircle"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ImageSetComponent_upvr (readonly)
	]]
	local IconDefault = arg2.Theme.IconDefault
	local Divider = arg2.Theme.Divider
	local module = {}
	local tbl = {}
	local udim2 = UDim2.fromScale(2, 1)
	tbl.Size = udim2
	if arg1.isLeft then
		udim2 = nil
	else
		udim2 = Vector2.new(0.5, 0)
	end
	tbl.AnchorPoint = udim2
	tbl.Image = arg1.progressImage
	tbl.BackgroundTransparency = 1
	module.CircleImage = React_upvr.createElement(ImageSetComponent_upvr.Label, tbl, {
		UIGradient = React_upvr.createElement("UIGradient", {
			Rotation = arg1.rotation;
			Color = ColorSequence.new({ColorSequenceKeypoint.new(0, IconDefault.Color), ColorSequenceKeypoint.new(0.499, IconDefault.Color), ColorSequenceKeypoint.new(0.5, Divider.Color), ColorSequenceKeypoint.new(1, Divider.Color)});
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, IconDefault.Transparency), NumberSequenceKeypoint.new(0.499, IconDefault.Transparency), NumberSequenceKeypoint.new(0.5, Divider.Transparency), NumberSequenceKeypoint.new(1, Divider.Transparency)});
		});
	})
	return React_upvr.createElement("Frame", {
		LayoutOrder = arg1.layoutOrder;
		Size = UDim2.fromScale(0.5, 1);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}, module)
end
local Images_upvr = require(Parent.UIBlox.App.ImageSet.Images)
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
return function(arg1) -- Line 79, Named "ProgressIcon"
	--[[ Upvalues[5]:
		[1]: Images_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: renderHalfCircle_upvr (readonly)
		[5]: ImageSetComponent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local progress_upvr = arg1.progress
	local isHolding = arg1.isHolding
	local var20
	if isHolding then
	else
	end
	if isHolding then
		var20 = Images_upvr["icons/controls/keys/hold_button_assets/hold_Pressed_RadialFill"]
	else
		var20 = Images_upvr["icons/controls/keys/hold_button_assets/hold_Unpressed_RadialFill"]
	end
	if isHolding then
	else
	end
	local useStyle_upvr_result1 = useStyle_upvr()
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}, {
		Progress = React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			ZIndex = 1;
		}, {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			Left = renderHalfCircle_upvr({
				layoutOrder = 1;
				isLeft = true;
				progressImage = var20;
				rotation = React_upvr.useMemo(function() -- Line 87
					--[[ Upvalues[1]:
						[1]: progress_upvr (readonly)
					]]
					return progress_upvr:map(function(arg1_2) -- Line 88
						return math.clamp((arg1_2 or 0) * 314 + 23, 180, 337)
					end)
				end, {progress_upvr});
			}, useStyle_upvr_result1);
			Right = renderHalfCircle_upvr({
				layoutOrder = 2;
				progressImage = var20;
				rotation = React_upvr.useMemo(function() -- Line 94
					--[[ Upvalues[1]:
						[1]: progress_upvr (readonly)
					]]
					return progress_upvr:map(function(arg1_3) -- Line 95
						return math.clamp((arg1_3 or 0) * 314 + 23, 23, 180)
					end)
				end, {progress_upvr});
			}, useStyle_upvr_result1);
		});
		Icon = React_upvr.createElement(ImageSetComponent_upvr.Label, {
			Size = UDim2.fromScale(1, 1);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Image = arg1.icon;
			ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color;
			ImageTransparency = React_upvr.useMemo(function() -- Line 101
				--[[ Upvalues[1]:
					[1]: progress_upvr (readonly)
				]]
				return progress_upvr:map(function(arg1_4) -- Line 102
					if arg1_4 then
						return math.clamp(0.8 - arg1_4 * 0.8, 0, 0.8)
					end
					return 0
				end)
			end, {progress_upvr});
			BackgroundTransparency = 1;
			ZIndex = 2;
		});
		Arrow = React_upvr.createElement(ImageSetComponent_upvr.Label, {
			Size = UDim2.fromScale(1, 1);
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0);
			Image = Images_upvr["icons/controls/keys/hold_button_assets/hold_Unpressed_Arrow"];
			ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color;
			ImageTransparency = 0;
			BackgroundTransparency = 1;
			ZIndex = 3;
		});
	})
end