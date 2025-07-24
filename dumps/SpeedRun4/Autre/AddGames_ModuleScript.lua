-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:53
-- Luau version 6, Types version 3
-- Time taken: 0.000524 seconds

return require(script:FindFirstAncestor("GameInfosRodux").Parent.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 9
	local var3
	if type(arg1) ~= "table" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, string.format("AddGames action expects games to be a table, was %s", type(arg1)))
	local module = {}
	module.games = arg1
	return module
end)