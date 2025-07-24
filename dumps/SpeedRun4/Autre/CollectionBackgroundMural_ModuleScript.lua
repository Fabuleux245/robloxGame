-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:36
-- Luau version 6, Types version 3
-- Time taken: 0.001903 seconds

local Parent = script:FindFirstAncestor("CollectionViews").Parent
local React_upvr = require(Parent.React)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
return React_upvr.memo(function(arg1) -- Line 22, Named "CollectionBackgroundMural"
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: useDesignTokens_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	return React_upvr.createElement("ImageLabel", {
		ImageTransparency = 0;
		Image = arg1.backgroundMuralUrl;
		BackgroundTransparency = 1;
		Size = arg1.containerSizeBinding:map(function(arg1_2) -- Line 33
			return UDim2.new(1, 0, 0, arg1_2.Y)
		end);
		ZIndex = arg1.ZIndex or -1;
		LayoutOrder = arg1.LayoutOrder;
		ScaleType = Enum.ScaleType.Crop;
	}, {
		GradientFrame = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundColor3 = Color3.new(1, 1, 1);
			BackgroundTransparency = 0;
			BorderSizePixel = 0;
		}, {
			Gradient = React_upvr.createElement("UIGradient", {
				Rotation = 90;
				Color = ColorSequence.new({ColorSequenceKeypoint.new(0, useDesignTokens_upvr().Global.Color.Black.Color3), ColorSequenceKeypoint.new(1, useStyle_upvr().Theme.BackgroundDefault.Color)});
				Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)});
			});
		});
	})
end)