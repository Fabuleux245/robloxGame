-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:51
-- Luau version 6, Types version 3
-- Time taken: 0.000399 seconds

return function() -- Line 2, Named "createNextOrder"
	local var2_upvw = 0
	return function() -- Line 5
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw += 1
		return var2_upvw
	end
end