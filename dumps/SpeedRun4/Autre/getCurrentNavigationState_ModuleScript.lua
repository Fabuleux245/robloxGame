-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:37
-- Luau version 6, Types version 3
-- Time taken: 0.000465 seconds

local function getCurrentNavigationState_upvr(arg1) -- Line 7, Named "getCurrentNavigationState"
	--[[ Upvalues[1]:
		[1]: getCurrentNavigationState_upvr (readonly)
	]]
	if arg1.routes and arg1.index then
		return getCurrentNavigationState_upvr(arg1.routes[arg1.index])
	end
	return arg1
end
return getCurrentNavigationState_upvr