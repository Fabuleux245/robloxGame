-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:35
-- Luau version 6, Types version 3
-- Time taken: 0.000986 seconds

local toSet_upvr = require(script.Parent.toSet)
return function(arg1, ...) -- Line 4, Named "removeIndex"
	--[[ Upvalues[1]:
		[1]: toSet_upvr (readonly)
	]]
	local type_result1 = type(arg1)
	local var5
	if type_result1 ~= "table" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "expected a table for first argument, got "..type_result1)
	var5 = toSet_upvr
	var5 = var5({...})
	for i = 1, #arg1 do
		if not var5[i] then
			({})[1] = arg1[i]
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end