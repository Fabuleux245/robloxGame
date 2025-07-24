-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:41
-- Luau version 6, Types version 3
-- Time taken: 0.000652 seconds

local SetLocalUserUnder13_upvr = require(script:FindFirstAncestor("UserLib").Actions.SetLocalUserUnder13)
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[1]:
		[1]: SetLocalUserUnder13_upvr (readonly)
	]]
	local var3 = true
	if arg1 ~= true then
		var3 = false
	end
	if arg2.type == SetLocalUserUnder13_upvr.name then
		return arg2.isUnder13
	end
	return var3
end