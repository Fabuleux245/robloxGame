-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:51
-- Luau version 6, Types version 3
-- Time taken: 0.000359 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
return function(arg1) -- Line 10, Named "UIListLayout"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	return React_upvr.createElement("UIListLayout", {
		HorizontalAlignment = arg1.HorizontalAlignment;
		FillDirection = arg1.FillDirection;
		VerticalAlignment = arg1.VerticalAlignment;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
end