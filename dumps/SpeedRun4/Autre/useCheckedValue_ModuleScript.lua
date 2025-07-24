-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:15
-- Luau version 6, Types version 3
-- Time taken: 0.000358 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
local CheckedValueContext_upvr = require(script.Parent.CheckedValueContext)
return function() -- Line 13
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: CheckedValueContext_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(CheckedValueContext_upvr)
	return any_useContext_result1.value, any_useContext_result1.onValueChanged
end