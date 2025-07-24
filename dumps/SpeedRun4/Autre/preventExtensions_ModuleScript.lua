-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:34
-- Luau version 6, Types version 3
-- Time taken: 0.000704 seconds

return function(arg1) -- Line 10, Named "preventExtensions"
	local module = {}
	local tostring_result1_upvr = tostring(arg1)
	function module.__newindex(arg1_2, arg2, arg3) -- Line 15
		--[[ Upvalues[1]:
			[1]: tostring_result1_upvr (readonly)
		]]
		error("%q (%s) is not a valid member of %s":format(tostring(arg2), typeof(arg2), tostring_result1_upvr), 2)
	end
	module.__metatable = false
	return setmetatable(arg1, module)
end