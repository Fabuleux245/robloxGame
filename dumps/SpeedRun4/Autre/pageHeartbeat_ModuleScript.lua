-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:56
-- Luau version 6, Types version 3
-- Time taken: 0.000739 seconds

return function(arg1, arg2, arg3) -- Line 5
	local var2
	if type(arg2) ~= "number" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "Expected beatInterval to be a number")
	var2 = "%s%d"
	local tbl = {}
	tbl.url = arg3
	var2 = arg1:setRBXEventStream
	var2(string.format(var2, "heartbeat", arg2), "pageHeartbeat", tbl)
end