-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:21
-- Luau version 6, Types version 3
-- Time taken: 0.001562 seconds

local Parent = script.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("CircularButton")
local ImageSetLabel_upvr = require(Parent.UIBlox).Core.ImageSet.ImageSetLabel
function any_extend_result1.render(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
	]]
	local var5
	local var6
	if var6 == "table" then
		var6 = arg1.props.Transparency
		var6 = var6:map(function(arg1_2) -- Line 13
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var8 = false
			if arg1_2 < 1 then
				var8 = arg1.props.Visible
			end
			return var8
		end)
		var5 = var6
	else
		var6 = arg1.props.Visible
		if var6 then
			if arg1.props.Transparency >= 1 then
				var6 = false
			else
				var6 = true
			end
		end
		var5 = var6
	end
	return Roact_upvr.createElement("TextButton", {
		Size = UDim2.fromScale(arg1.props.HorizontalScale, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		Position = arg1.props.Position;
		AnchorPoint = arg1.props.AnchorPoint;
		BackgroundColor3 = Color3.fromRGB(17, 18, 19);
		Transparency = arg1.props.Transparency;
		Text = "";
		Visible = var5;
		AutoButtonColor = arg1.props.AutoButtonColor;
		[Roact_upvr.Event.Activated] = arg1.props.onActivated;
	}, {
		UIAspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
			AspectRatio = 1;
			AspectType = Enum.AspectType.ScaleWithParentSize;
		});
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		});
		ImageLabel = Roact_upvr.createElement(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			Size = arg1.props.ImageSize;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Image = arg1.props.Image;
			ImageTransparency = arg1.props.Transparency;
		});
	})
end
return any_extend_result1