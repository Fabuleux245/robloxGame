-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:43
-- Luau version 6, Types version 3
-- Time taken: 0.000288 seconds

local React_upvr = require(script.Parent.Parent.Parent.React)
local LayoutValuesContext_upvr = require(script.Parent.LayoutValuesContext)
return function() -- Line 10, Named "useLayoutValues"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: LayoutValuesContext_upvr (readonly)
	]]
	return React_upvr.useContext(LayoutValuesContext_upvr)
end