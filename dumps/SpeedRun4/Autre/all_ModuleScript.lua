-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:09
-- Luau version 6, Types version 3
-- Time taken: 0.000783 seconds

local function var1_upvr(arg1) -- Line 6
	return arg1
end
return function(arg1, arg2) -- Line 10, Named "all"
	--[[ Upvalues[1]:
		[1]: var1_upvr (readonly)
	]]
	local var6
	if not var6 then
		var6 = var1_upvr
	end
	for i, v in arg1 do
		if not var6(v, i) then
			return false
		end
	end
	return true
end