-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:41
-- Luau version 6, Types version 3
-- Time taken: 0.000740 seconds

local function getRouteKeyIsInNavigationState_upvr(arg1, arg2) -- Line 6, Named "getRouteKeyIsInNavigationState"
	--[[ Upvalues[1]:
		[1]: getRouteKeyIsInNavigationState_upvr (readonly)
	]]
	if arg2.key == arg1 then
		return true
	end
	if arg2.routes then
		for _, v in pairs(arg2.routes) do
			if getRouteKeyIsInNavigationState_upvr(arg1, v) then
				return true
			end
		end
	end
	return false
end
return getRouteKeyIsInNavigationState_upvr