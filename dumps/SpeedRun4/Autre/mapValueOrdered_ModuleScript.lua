-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:49
-- Luau version 6, Types version 3
-- Time taken: 0.000529 seconds

local Map_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Map
return {
	mapValueOrdered = function(arg1, arg2) -- Line 17, Named "mapValueOrdered"
		--[[ Upvalues[1]:
			[1]: Map_upvr (readonly)
		]]
		local any_new_result1 = Map_upvr.new()
		for _, v in arg1 do
			local _1 = v[1]
			any_new_result1:set(_1, arg2(v[2], _1))
		end
		return any_new_result1
	end;
}