-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:13
-- Luau version 6, Types version 3
-- Time taken: 0.002740 seconds

return function(arg1, arg2, arg3) -- Line 13
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local var4
	if typeof(arg1) ~= "table" then
		var4 = arg1
		error(string.format("Array.some called on %s", typeof(var4)))
	end
	if typeof(arg2) ~= "function" then
		error("callback is not a function")
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [58] 48. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [58] 48. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 27. Error Block 22 start (CF ANALYSIS FAILED)
	if arg3 ~= nil then
		if var4 ~= nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [58.8]
			if nil then
				-- KONSTANTWARNING: GOTO [58] #48
			end
			-- KONSTANTWARNING: GOTO [58] #48
		end
	elseif var4 ~= nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
		end
	end
	-- KONSTANTERROR: [34] 27. Error Block 22 end (CF ANALYSIS FAILED)
end