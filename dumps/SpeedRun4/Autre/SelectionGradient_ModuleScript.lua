-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:28
-- Luau version 6, Types version 3
-- Time taken: 0.001512 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SelectionGradient")
local Constants_upvr = require(script.Parent.Parent.Constants)
function any_extend_result1.render(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local var5 = Constants_upvr.Layouts[arg1.props.layout]
	local focusedSegmentIndex = arg1.props.emotesWheel.focusedSegmentIndex
	local module = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, 0, 1, 0);
	}
	local var8 = 1
	module.BackgroundTransparency = var8
	module.Rotation = 360 / Constants_upvr.EmotesPerPage * (focusedSegmentIndex - 1) + Constants_upvr.SegmentsStartRotation
	if focusedSegmentIndex == 0 then
		var8 = false
	else
		var8 = true
	end
	module.Visible = var8
	return Roact_upvr.createElement("Frame", module, {
		SelectedGradient = Roact_upvr.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Size = UDim2.new(0.5, 0, 1, 0);
			BackgroundTransparency = 1;
			ImageTransparency = Constants_upvr.GradientTransparency;
			Image = var5.SelectedGradient;
			ZIndex = 2;
		}, {
			AsspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
				AspectRatio = var5.SelectedGradientImageSize.X / var5.SelectedGradientImageSize.Y;
			});
			SizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
				MaxSize = var5.SelectedGradientImageSize;
			});
		});
	})
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 47, Named "mapStateToProps"
	return {
		emotesWheel = arg1.emotesWheel;
		layout = arg1.layout;
	}
end, nil)(any_extend_result1)