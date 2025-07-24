-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:28
-- Luau version 6, Types version 3
-- Time taken: 0.000732 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local tbl_upvr = {
	size = UDim2.fromScale(1, 1);
}
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
return function(arg1) -- Line 22, Named "FooterFrame"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	return React_upvr.createElement("Frame", {
		Size = any_join_result1.size;
		Position = any_join_result1.position;
		AnchorPoint = any_join_result1.anchorPoint;
		LayoutOrder = any_join_result1.layoutOrder;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}, any_join_result1.children)
end