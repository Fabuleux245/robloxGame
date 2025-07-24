-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:14
-- Luau version 6, Types version 3
-- Time taken: 0.001405 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("BackgroundFill")
function any_extend_result1.render(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local maximum = math.max(arg1.props.screenSize.X, arg1.props.screenSize.Y)
	return Roact_upvr.createElement("ImageLabel", {
		Image = arg1.props.Image;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BorderSizePixel = 0;
	}, {
		UIAspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
			AspectRatio = arg1.props.AspectRatio;
		});
		UISizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
			MinSize = Vector2.new(maximum, maximum);
		});
	})
end
return require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 29
	return {
		screenSize = arg1.ScreenSize;
	}
end)(any_extend_result1)