-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:52
-- Luau version 6, Types version 3
-- Time taken: 0.000663 seconds

return require(script:FindFirstAncestor("GameVotesRodux").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3, arg4) -- Line 12
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local var2
	if type(arg1) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "SetUserGameVotes: universeId must be a string")
	if type(arg2) ~= "boolean" then
		var2 = false
		-- KONSTANTWARNING: GOTO [24] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 29 start (CF ANALYSIS FAILED)
	var2 = true
	assert(var2, "SetUserGameVotes: canVote must be a boolean")
	if type(arg3) ~= "string" then
		var2 = false
		-- KONSTANTWARNING: GOTO [39] #30
	end
	-- KONSTANTERROR: [23] 18. Error Block 29 end (CF ANALYSIS FAILED)
end)