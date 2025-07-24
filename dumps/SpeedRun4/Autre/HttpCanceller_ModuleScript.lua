-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:53
-- Luau version 6, Types version 3
-- Time taken: 0.000459 seconds

local module = {}
local var2_upvw = 0
function module.currentSession() -- Line 5
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	return var2_upvw
end
function module.cancel() -- Line 9
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	var2_upvw += 1
end
return module