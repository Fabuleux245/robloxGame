-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:11
-- Luau version 6, Types version 3
-- Time taken: 0.000469 seconds

local var1_upvw
return {
	register = function(arg1) -- Line 5, Named "register"
		--[[ Upvalues[1]:
			[1]: var1_upvw (read and write)
		]]
		var1_upvw = arg1
	end;
	get = function() -- Line 10, Named "get"
		--[[ Upvalues[1]:
			[1]: var1_upvw (read and write)
		]]
		return var1_upvw
	end;
}