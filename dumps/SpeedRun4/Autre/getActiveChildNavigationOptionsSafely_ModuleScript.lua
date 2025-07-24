-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:42
-- Luau version 6, Types version 3
-- Time taken: 0.000789 seconds

local function _(arg1) -- Line 16, Named "getUpdatedNavigation"
	local var2
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var2 = arg1._dangerouslyGetParent().getChildNavigation(arg1.state.key)
		return var2
	end
	if not arg1._dangerouslyGetParent() or not arg1.state or not arg1.state.key or not INLINED() then
		var2 = arg1
	end
	return var2
end
local RoactNavigation_upvr = require(script:FindFirstAncestor("FriendsLanding").Parent.RoactNavigation)
return function(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: RoactNavigation_upvr (readonly)
	]]
	local any__dangerouslyGetParent_result1 = arg1._dangerouslyGetParent()
	local var6
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var6 = any__dangerouslyGetParent_result1.getChildNavigation(arg1.state.key)
		return var6
	end
	if not any__dangerouslyGetParent_result1 or not arg1.state or not arg1.state.key or not INLINED_2() then
		var6 = arg1
	end
	return RoactNavigation_upvr.getActiveChildNavigationOptions(var6)
end