-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:48
-- Luau version 6, Types version 3
-- Time taken: 0.000735 seconds

local Map_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Map
return {
	keyMapOrdered = function(arg1, arg2) -- Line 37, Named "keyMapOrdered"
		--[[ Upvalues[1]:
			[1]: Map_upvr (readonly)
		]]
		local any_new_result1 = Map_upvr.new()
		for i = 1, #arg1 do
			local var5 = arg1[i]
			any_new_result1:set(arg2(var5), var5)
		end
		return any_new_result1
	end;
}