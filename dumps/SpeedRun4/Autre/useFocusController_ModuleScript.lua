-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:42
-- Luau version 6, Types version 3
-- Time taken: 0.000363 seconds

local React_upvr = require(script.Parent.Parent.React)
local FocusContext_upvr = require(script.Parent.FocusContext)
return function() -- Line 10, Named "useFocusController"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: FocusContext_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(FocusContext_upvr)
	if any_useContext_result1 then
		return any_useContext_result1.focusNode.focusController
	end
	return nil
end