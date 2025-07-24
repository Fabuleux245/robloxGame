-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:43
-- Luau version 6, Types version 3
-- Time taken: 0.000577 seconds

local React_upvr = require(script.Parent.Parent.React)
local FocusController_upvr = require(script.Parent.FocusController)
return function() -- Line 19, Named "useRootFocusController"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: FocusController_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(nil)
	if any_useRef_result1.current == nil then
		any_useRef_result1.current = FocusController_upvr.createPublicApiWrapper()
	end
	return any_useRef_result1.current
end