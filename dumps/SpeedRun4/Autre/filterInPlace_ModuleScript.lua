-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:07
-- Luau version 6, Types version 3
-- Time taken: 0.000770 seconds

local module = {}
local Array_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Array
function module.filterInPlace(arg1, arg2, arg3) -- Line 23
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local var3_upvw = 1
	Array_upvr.forEach(arg1, function(arg1_2, arg2_2) -- Line 25
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
			[3]: var3_upvw (read and write)
		]]
		if arg2(arg1_2, arg2_2, arg1) then
			arg1[var3_upvw] = arg1_2
			var3_upvw += 1
		end
	end, arg3)
	arg1[var3_upvw] = nil
	return arg1
end
return module