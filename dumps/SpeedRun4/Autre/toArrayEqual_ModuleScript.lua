-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:54
-- Luau version 6, Types version 3
-- Time taken: 0.000767 seconds

local deepContains_upvr = require(script.Parent.Parent.luaUtils.deepContains)
local deepEqual_upvr = require(script.Parent.Parent.luaUtils.deepEqual)
return function(arg1, arg2, arg3) -- Line 18, Named "toArrayEqual"
	--[[ Upvalues[2]:
		[1]: deepContains_upvr (readonly)
		[2]: deepEqual_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var3
	if #arg1 ~= #arg2 then
		var3 = false
	else
		var3 = true
	end
	if not var3 then
		return {
			pass = false;
			message = "Expected array length %s / got length %s":format(tostring(#arg1), tostring(#arg2));
		}
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [83] 70. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [83] 70. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 27. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 27. Error Block 7 end (CF ANALYSIS FAILED)
end