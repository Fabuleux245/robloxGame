-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:40
-- Luau version 6, Types version 3
-- Time taken: 0.000658 seconds

local setmetatable_result1_upvr = setmetatable({}, {
	__mode = 'k';
})
local var3_upvw = 1
return function(arg1) -- Line 15, Named "idFor"
	--[[ Upvalues[2]:
		[1]: setmetatable_result1_upvr (readonly)
		[2]: var3_upvw (read and write)
	]]
	if arg1 == nil then
		return 0
	end
	local var4 = setmetatable_result1_upvr[arg1]
	if not var4 then
		var4 = var3_upvw
		var3_upvw += 1
		setmetatable_result1_upvr[arg1] = var4
	end
	return var4
end