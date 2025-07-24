-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:17
-- Luau version 6, Types version 3
-- Time taken: 0.000638 seconds

local copy_upvr = require(script.Parent.copy)
return function(arg1, ...) -- Line 4, Named "removeKey"
	--[[ Upvalues[1]:
		[1]: copy_upvr (readonly)
	]]
	local type_result1 = type(arg1)
	local var5
	if type_result1 ~= "table" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "expected a table for first argument, got "..type_result1)
	var5 = arg1
	var5 = select('#', ...)
	for i = 1, var5 do
		copy_upvr(var5)[select(i, ...)] = nil
		local var7
	end
	return var7
end