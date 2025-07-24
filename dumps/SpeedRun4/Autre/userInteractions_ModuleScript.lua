-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:57
-- Luau version 6, Types version 3
-- Time taken: 0.000391 seconds

return function(arg1, arg2) -- Line 4
	local var2
	if type(arg2) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "Expected eventContext to be a string")
	arg1:setRBXEventStream(arg2, "userInteractions", nil)
end