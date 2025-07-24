-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:51
-- Luau version 6, Types version 3
-- Time taken: 0.001050 seconds

local React_upvr = require(script:FindFirstAncestor("ExpChat").Parent.React)
return function(arg1) -- Line 10, Named "Carat"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local chatSettings = arg1.chatSettings
	local module = {}
	local UIGradient = chatSettings.UIGradient
	if UIGradient then
		UIGradient = React_upvr.createElement("UIGradient", chatSettings.UIGradient)
	end
	module.CaratGradient = UIGradient
	return React_upvr.createElement("ImageLabel", {
		LayoutOrder = arg1.layoutOrder;
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundTransparency = 1;
		Position = UDim2.new(0.5, 0, 1, -1);
		Size = UDim2.fromOffset(12, 8);
		Image = "rbxasset://textures/ui/InGameChat/Caret.png";
		ImageColor3 = chatSettings.BackgroundColor3;
		ImageTransparency = chatSettings.BackgroundTransparency;
	}, module)
end