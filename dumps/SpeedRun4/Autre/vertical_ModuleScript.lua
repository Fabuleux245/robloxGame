-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:59
-- Luau version 6, Types version 3
-- Time taken: 0.000545 seconds

local Roact_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).Roact
local new_upvr = require(script.Parent.new)
return function(arg1) -- Line 7, Named "vertical"
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: new_upvr (readonly)
	]]
	return new_upvr(Roact_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
	}), arg1)
end