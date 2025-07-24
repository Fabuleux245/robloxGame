-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:50
-- Luau version 6, Types version 3
-- Time taken: 0.000598 seconds

return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 7
	local var2
	if type(arg2) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "Expected eventContext to be a string")
	if type(arg4) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "Expected actionType to be a string")
	local tbl = {}
	tbl.aType = arg4
	tbl.origin = arg5
	tbl.section = arg6
	tbl.errorCode = arg7
	tbl.field = arg3
	var2 = arg1:setRBXEventStream
	var2(arg2, "modalAction", tbl)
end