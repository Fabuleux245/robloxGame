-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:16
-- Luau version 6, Types version 3
-- Time taken: 0.001894 seconds

local Parent = script.Parent.Parent.Parent.Parent
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local React_upvr = require(Parent.Parent.React)
return function(arg1) -- Line 29, Named "GradientFrame"
	--[[ Upvalues[2]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local gradientStyle = arg1.gradientStyle
	local height = arg1.height
	local Theme = useStyle_upvr().Theme
	local var8
	if not gradientStyle or not gradientStyle.Color then
		var8 = Theme.BackgroundDefault
		local Color = var8.Color
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var8 = gradientStyle.Transparency
		return var8
	end
	if not gradientStyle or not INLINED() then
		var8 = Theme.BackgroundDefault.Transparency
	end
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		ZIndex = arg1.ZIndex;
		ref = arg1.frameRef;
	}, {
		Left = React_upvr.createElement("Frame", {
			BackgroundTransparency = var8;
			BackgroundColor3 = Color;
			Size = UDim2.new(0, 50, 0, height);
		}, {
			Gradient = React_upvr.createElement("UIGradient", {
				Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)});
			});
		});
		Right = React_upvr.createElement("Frame", {
			BackgroundTransparency = var8;
			BackgroundColor3 = Color;
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.fromScale(1, 0);
			Size = UDim2.new(0, 50, 0, height);
		}, {
			Gradient = React_upvr.createElement("UIGradient", {
				Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)});
			});
		});
	})
end