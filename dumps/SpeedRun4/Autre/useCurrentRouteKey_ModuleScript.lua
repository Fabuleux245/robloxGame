-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:44
-- Luau version 6, Types version 3
-- Time taken: 0.000419 seconds

local useNavigation_upvr = require(script.Parent.useNavigation)
local getCurrentRouteKey_upvr = require(script.Parent.getCurrentRouteKey)
return function() -- Line 4, Named "useCurrentRouteKey"
	--[[ Upvalues[2]:
		[1]: useNavigation_upvr (readonly)
		[2]: getCurrentRouteKey_upvr (readonly)
	]]
	return getCurrentRouteKey_upvr(useNavigation_upvr())
end