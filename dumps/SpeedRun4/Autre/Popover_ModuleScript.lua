-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:09
-- Luau version 6, Types version 3
-- Time taken: 0.000470 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
local PopoverContext_upvr = require(script.Parent.PopoverContext)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 14, Named "Popover"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: PopoverContext_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2 = React_upvr.useState(nil)
	return React_upvr.createElement(PopoverContext_upvr.Provider, {
		value = {
			anchor = any_useState_result1;
			setAnchor = any_useState_result2;
			isOpen = arg1.isOpen;
		};
	}, arg1.children)
end)