-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:48
-- Luau version 6, Types version 3
-- Time taken: 0.000604 seconds

return function(arg1, arg2) -- Line 2
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local var2
	if type(arg1) ~= "number" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "throttle must be a number")
	if type(arg2) ~= "number" then
		var2 = false
		-- KONSTANTWARNING: GOTO [24] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 20 start (CF ANALYSIS FAILED)
	var2 = true
	assert(var2, "userId must be a number")
	var2 = arg2 % 100
	if var2 + 1 > arg1 then
		var2 = false
	else
		var2 = true
	end
	do
		return var2
	end
	-- KONSTANTERROR: [23] 18. Error Block 20 end (CF ANALYSIS FAILED)
end