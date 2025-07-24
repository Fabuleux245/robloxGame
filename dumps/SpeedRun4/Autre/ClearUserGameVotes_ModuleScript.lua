-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:49
-- Luau version 6, Types version 3
-- Time taken: 0.000484 seconds

return require(script:FindFirstAncestor("GameVotesRodux").Parent.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 5
	local var2
	if type(arg1) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "ClearUserGameVotes: universeId must be a string")
	local module = {}
	module.universeId = arg1
	return module
end)