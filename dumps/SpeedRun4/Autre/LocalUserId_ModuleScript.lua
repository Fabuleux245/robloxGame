-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:41
-- Luau version 6, Types version 3
-- Time taken: 0.000332 seconds

local SetLocalUserId_upvr = require(script:FindFirstAncestor("UserLib").Actions.SetLocalUserId)
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: SetLocalUserId_upvr (readonly)
	]]
	if arg2.type == SetLocalUserId_upvr.name then
		return arg2.userId
	end
	return arg1 or ""
end