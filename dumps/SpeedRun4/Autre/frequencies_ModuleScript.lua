-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:22
-- Luau version 6, Types version 3
-- Time taken: 0.000925 seconds

local reduce_upvr = require(script.Parent.reduce)
return function(arg1, arg2) -- Line 34, Named "frequencies"
	--[[ Upvalues[1]:
		[1]: reduce_upvr (readonly)
	]]
	return reduce_upvr(arg1, function(arg1_2, arg2_2, arg3) -- Line 38
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var3
		if arg2 then
			var3 = arg2(arg2_2, arg3)
		else
			var3 = arg2_2
		end
		if arg1_2[var3] == nil then
			arg1_2[var3] = 1
			return arg1_2
		end
		arg1_2[var3] += 1
		return arg1_2
	end, {})
end