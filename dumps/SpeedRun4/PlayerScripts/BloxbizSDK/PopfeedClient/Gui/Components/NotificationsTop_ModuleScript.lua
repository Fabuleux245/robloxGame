-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:29
-- Luau version 6, Types version 3
-- Time taken: 0.000644 seconds

local Parent = script.Parent.Parent
local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
Font_fromEnum_result1_upvr.Bold = true
local New_upvr = require(Parent.Parent.Parent.Utils.Fusion).New
local Line_upvr = require(Parent.Components.Line)
return function() -- Line 12
	--[[ Upvalues[3]:
		[1]: New_upvr (readonly)
		[2]: Font_fromEnum_result1_upvr (readonly)
		[3]: Line_upvr (readonly)
	]]
	return {New_upvr("TextLabel")({
		Name = "Title";
		Text = "Notifications";
		Size = UDim2.fromScale(0.7, 0.35);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		TextScaled = true;
		FontFace = Font_fromEnum_result1_upvr;
		TextColor3 = Color3.fromRGB(255, 255, 255);
	}), Line_upvr({
		Size = UDim2.fromScale(1, 0.02);
	})}
end