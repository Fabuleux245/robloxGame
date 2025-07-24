-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:05
-- Luau version 6, Types version 3
-- Time taken: 0.000705 seconds

return require(script.Parent.Parent.dependencies).Rodux.makeActionCreator(script.Name, function(arg1) -- Line 9
	local var2
	if type(arg1) ~= "table" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, string.format("SetIsPhoneVerified action expects params to be a table, was %s", type(arg1)))
	return arg1
end)