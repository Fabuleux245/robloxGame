-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:33
-- Luau version 6, Types version 3
-- Time taken: 0.000481 seconds

local NavigationRodux = script:FindFirstAncestor("NavigationRodux")
local ArgCheck_upvr = require(NavigationRodux.Parent.ArgCheck)
local ApplySetNavigationLocked_upvr = require(NavigationRodux.Actions.ApplySetNavigationLocked)
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: ApplySetNavigationLocked_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "boolean", "locked")
	return function(arg1_2) -- Line 10
		--[[ Upvalues[2]:
			[1]: ApplySetNavigationLocked_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		arg1_2:dispatch(ApplySetNavigationLocked_upvr(arg1))
	end
end