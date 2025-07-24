-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:45
-- Luau version 6, Types version 3
-- Time taken: 0.000650 seconds

return function(arg1) -- Line 1, Named "validateMotor"
	-- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
	local var1
	if typeof(arg1) ~= "table" then
		var1 = false
	else
		var1 = true
	end
	assert(var1)
	if typeof(arg1.start) ~= "function" then
		var1 = false
		-- KONSTANTWARNING: GOTO [23] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 17. Error Block 57 start (CF ANALYSIS FAILED)
	var1 = true
	assert(var1)
	if typeof(arg1.stop) ~= "function" then
		var1 = false
		-- KONSTANTWARNING: GOTO [37] #28
	end
	-- KONSTANTERROR: [22] 17. Error Block 57 end (CF ANALYSIS FAILED)
end