-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:09
-- Luau version 6, Types version 3
-- Time taken: 0.000480 seconds

local var1_upvw = "id-"..tostring(math.random(100000, 1000000))
local var2_upvw = 0
return {
	_TESTING_ONLY_normalize_keys = function() -- Line 9, Named "_TESTING_ONLY_normalize_keys"
		--[[ Upvalues[2]:
			[1]: var1_upvw (read and write)
			[2]: var2_upvw (read and write)
		]]
		var1_upvw = "id-"
		var2_upvw = 0
	end;
	generateKey = function() -- Line 15, Named "generateKey"
		--[[ Upvalues[2]:
			[1]: var1_upvw (read and write)
			[2]: var2_upvw (read and write)
		]]
		var2_upvw += 1
		return var1_upvw..tostring(var2_upvw)
	end;
}