-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:48
-- Luau version 6, Types version 3
-- Time taken: 0.001189 seconds

return require(script:FindFirstAncestor("GameVotesRodux").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3) -- Line 11
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var2
	if type(arg1) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "SetGameVotes: universeId must be a string")
	if type(arg2) ~= "number" then
		var2 = false
		-- KONSTANTWARNING: GOTO [24] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 22 start (CF ANALYSIS FAILED)
	var2 = true
	assert(var2, "SetGameVotes: upVotes must be a number")
	if type(arg3) ~= "number" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "SetGameVotes: downVotes must be a number")
	local module = {}
	module.universeId = arg1
	module.upVotes = arg2
	module.downVotes = arg3
	do
		return module
	end
	-- KONSTANTERROR: [23] 18. Error Block 22 end (CF ANALYSIS FAILED)
end)