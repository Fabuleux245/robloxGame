-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:33
-- Luau version 6, Types version 3
-- Time taken: 0.000806 seconds

return function(arg1, arg2, arg3) -- Line 5, Named "replaceIndex"
	local len = #arg1
	local var4
	if arg2 > len then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "index must be less or equal than the list length")
	var4 = 1
	for i = 1, len, var4 do
		if i == arg2 then
			({})[i] = arg3
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i] = arg1[i]
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end