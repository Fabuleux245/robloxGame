-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:20
-- Luau version 6, Types version 3
-- Time taken: 0.001072 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		BackgroundColor3 = arg1.backgroundColor;
		BackgroundTransparency = arg1.backgroundTransparency;
		Size = UDim2.new(1, 0, 1, 0);
	}, Cryo_upvr.Dictionary.join({
		Padding = React_upvr.createElement("UIPadding", {
			PaddingRight = UDim.new(0, arg1.cornerRadius);
			PaddingLeft = UDim.new(0, arg1.cornerRadius);
			PaddingTop = UDim.new(0, arg1.cornerRadius);
			PaddingBottom = UDim.new(0, arg1.cornerRadius);
		});
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, arg1.cornerRadius);
		});
	}, arg1.children))
end