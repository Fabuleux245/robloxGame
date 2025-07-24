-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:41
-- Luau version 6, Types version 3
-- Time taken: 0.000517 seconds

local __DEV___upvr = _G.__DEV__
return function(arg1) -- Line 5, Named "inspectRouteEntry"
	--[[ Upvalues[1]:
		[1]: __DEV___upvr (readonly)
	]]
	local next_result1, next_result2 = next(arg1)
	if __DEV___upvr then
		assert(next_result1 and next_result2, "route entry should contain exactly one route config")
	end
	return next_result1, next_result2
end