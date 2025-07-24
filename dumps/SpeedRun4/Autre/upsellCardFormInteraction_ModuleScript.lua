-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:49
-- Luau version 6, Types version 3
-- Time taken: 0.001673 seconds

return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 8
	-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
	local var2
	if type(arg2) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "Expected eventContext to be a string")
	if type(arg3) ~= "string" then
		var2 = false
		-- KONSTANTWARNING: GOTO [24] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 44 start (CF ANALYSIS FAILED)
	assert(true, "Expected field to be a string")
	if type(arg4) ~= "string" then
	else
	end
	assert(true, "Expected actionType to be a string")
	if arg5 ~= nil then
		if type(arg5) ~= "string" then
		else
		end
		assert(true, "Expected origin to be a string")
	end
	if arg6 ~= nil then
		if type(arg6) ~= "string" then
		else
		end
		assert(true, "Expected btn to be a string")
	end
	local tbl = {}
	tbl.field = arg3
	tbl.aType = arg4
	tbl.origin = arg5
	tbl.btn = arg6
	tbl.section = arg7
	arg1:setRBXEventStream(arg2, "formInteraction", tbl)
	-- KONSTANTERROR: [23] 18. Error Block 44 end (CF ANALYSIS FAILED)
end