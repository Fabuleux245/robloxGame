-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:34
-- Luau version 6, Types version 3
-- Time taken: 0.000480 seconds

return require(script:FindFirstAncestor("PlayabilityRodux").Parent.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 18
	local var2
	if type(arg1) ~= "table" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "SetPlayabilityStatus action expects playabilityStatus to be a table")
	local module = {}
	module.playabilityStatus = arg1
	return module
end)