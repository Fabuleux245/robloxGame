-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:56
-- Luau version 6, Types version 3
-- Time taken: 0.000892 seconds

local deepEqual_upvr = require(script.Parent.Parent.luaUtils.deepEqual)
return function(arg1, arg2) -- Line 17, Named "toEqual"
	--[[ Upvalues[1]:
		[1]: deepEqual_upvr (readonly)
	]]
	local deepEqual_upvr_result1, var1_result2 = deepEqual_upvr(arg1, arg2)
	local var4
	if not deepEqual_upvr_result1 then
		var4 = var1_result2:gsub("{1}", "received"):gsub("{2}", "expected")
	else
		var4 = "expected: not %s\nreceived:     %s":format(tostring(arg2), tostring(arg1))
	end
	return {
		pass = deepEqual_upvr_result1;
		message = var4;
	}
end