-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:55
-- Luau version 6, Types version 3
-- Time taken: 0.000707 seconds

local Number_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Number
return function(arg1) -- Line 17, Named "toBeNaN"
	--[[ Upvalues[1]:
		[1]: Number_upvr (readonly)
	]]
	local any_isNaN_result1 = Number_upvr.isNaN(arg1)
	if any_isNaN_result1 then
		return {
			pass = any_isNaN_result1;
		}
	end
	return {
		pass = false;
		message = "expected: NaN (number), got: \"%s\" (%s) instead":format(tostring(arg1), typeof(arg1));
	}
end