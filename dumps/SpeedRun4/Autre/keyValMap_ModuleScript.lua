-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:29
-- Luau version 6, Types version 3
-- Time taken: 0.000513 seconds

local Map_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Map
return {
	keyValMap = function(arg1, arg2, arg3) -- Line 32, Named "keyValMap"
		--[[ Upvalues[1]:
			[1]: Map_upvr (readonly)
		]]
		local any_new_result1 = Map_upvr.new()
		for _, v in ipairs(arg1) do
			any_new_result1:set(arg2(v), arg3(v))
		end
		return any_new_result1
	end;
}