-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:02
-- Luau version 6, Types version 3
-- Time taken: 0.001064 seconds

return function(arg1, arg2, arg3) -- Line 11
	if _G.__DEV__ then
		if typeof(arg1) ~= "table" then
			error(string.format("Array.filter called on %s", typeof(arg1)))
		end
		if typeof(arg2) ~= "function" then
			error("callback is not a function")
		end
	end
	local len = #arg1
	local var7 = 1
	if arg3 == nil then
		for i = 1, len do
			local var8 = arg1[i]
			if var8 ~= nil and arg2(var8, i, arg1) then
				({})[var7] = var8
				var7 += 1
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end
	for i_2 = 1, len do
		local var9 = arg1[i_2]
		if var9 ~= nil and arg2(arg3, var9, i_2, arg1) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[var7] = var9
			var7 += 1
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end