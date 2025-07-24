-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:37
-- Luau version 6, Types version 3
-- Time taken: 0.000480 seconds

local getCurrentRouteState_upvr = require(script.Parent.getCurrentRouteState)
return function(arg1) -- Line 7, Named "getCurrentRouteKey"
	--[[ Upvalues[1]:
		[1]: getCurrentRouteState_upvr (readonly)
	]]
	local getCurrentRouteState_upvr_result1 = getCurrentRouteState_upvr(arg1)
	if getCurrentRouteState_upvr_result1 then
		return getCurrentRouteState_upvr_result1.key
	end
	return nil
end