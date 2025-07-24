-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:41
-- Luau version 6, Types version 3
-- Time taken: 0.000707 seconds

return require(script.Parent.Parent.Parent.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 5
	local var2
	if type(arg1) ~= "number" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "Request count must be a number")
	local module = {}
	var2 = {}
	var2.count = arg1
	module.payload = var2
	return module
end)