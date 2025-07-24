-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:32
-- Luau version 6, Types version 3
-- Time taken: 0.001177 seconds

local TextService_upvr = game:GetService("TextService")
local React_upvr = require(script:FindFirstAncestor("TenFootUiSharedComponents").Parent.React)
return function(arg1) -- Line 21
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local X = TextService_upvr:GetTextSize(arg1.text, arg1.fontSize, arg1.font, Vector2.new(math.huge, arg1.fontSize)).X
	local module = {}
	local layoutOrder = arg1.layoutOrder
	module.LayoutOrder = layoutOrder
	if arg1.size then
		layoutOrder = arg1.size
	else
		layoutOrder = UDim2.new(0, arg1.width, 0, arg1.height)
	end
	module.Size = layoutOrder
	module.BackgroundTransparency = 1
	return React_upvr.createElement("Frame", module, React_upvr.createElement("Frame", {
		Position = UDim2.new(0, 0, 0.5, 0);
		Size = UDim2.new(0.5, -X / 2 - arg1.padding, 0, 1);
		BackgroundTransparency = arg1.transparency;
		BackgroundColor3 = arg1.color3;
	}), React_upvr.createElement("Frame", {
		Position = UDim2.new(0.5, X / 2 + arg1.padding, 0.5, 0);
		Size = UDim2.new(0.5, -X / 2 - arg1.padding, 0, 1);
		BackgroundTransparency = arg1.transparency;
		BackgroundColor3 = arg1.color3;
	}), React_upvr.createElement("TextLabel", {
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Text = arg1.text;
		TextSize = arg1.fontSize;
		Font = arg1.font;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
		TextTransparency = arg1.transparency;
		TextColor3 = arg1.color3;
		BackgroundTransparency = 1;
	}))
end