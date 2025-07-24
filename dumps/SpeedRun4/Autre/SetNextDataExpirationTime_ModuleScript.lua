-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:01
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

return require(script:FindFirstAncestor("NextDataExpirationTimeRodux").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3) -- Line 5
	local var2
	if type(arg1) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "SetNextDataExpirationTime: key must be a string!")
	var2 = false
	if type(arg2) == "number" then
		if 0 >= arg2 then
			var2 = false
		else
			var2 = true
		end
	end
	assert(var2, "SetNextDataExpirationTime: nextDataExpirationTime must be a positive number!")
	local module = {}
	module.key = arg1
	module.nextDataExpirationTime = arg2
	module.namespace = arg3
	return module
end)