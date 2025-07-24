-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:38
-- Luau version 6, Types version 3
-- Time taken: 0.000523 seconds

local getCurrentNavigationState_upvr = require(script.Parent.getCurrentNavigationState)
return function(arg1) -- Line 8, Named "getCurrentRouteState"
	--[[ Upvalues[1]:
		[1]: getCurrentNavigationState_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	if not arg1.state then
		return nil
	end
	return getCurrentNavigationState_upvr(arg1.state)
end