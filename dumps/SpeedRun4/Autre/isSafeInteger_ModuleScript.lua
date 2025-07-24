-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:39
-- Luau version 6, Types version 3
-- Time taken: 0.000461 seconds

local isInteger_upvr = require(script.Parent.isInteger)
local MAX_SAFE_INTEGER_upvr = require(script.Parent.MAX_SAFE_INTEGER)
return function(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: isInteger_upvr (readonly)
		[2]: MAX_SAFE_INTEGER_upvr (readonly)
	]]
	local var2_result1 = isInteger_upvr(arg1)
	if var2_result1 then
		if math.abs(arg1) > MAX_SAFE_INTEGER_upvr then
			var2_result1 = false
		else
			var2_result1 = true
		end
	end
	return var2_result1
end