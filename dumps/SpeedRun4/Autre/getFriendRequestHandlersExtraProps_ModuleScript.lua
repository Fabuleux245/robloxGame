-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:30
-- Luau version 6, Types version 3
-- Time taken: 0.000669 seconds

return function(arg1) -- Line 25
	local module = {
		absolutePosition = arg1.position;
		requestedId = arg1.playerId;
	}
	local var3 = not arg1.isFriendRequest
	module.isRecommendation = var3
	if not arg1.isFriendRequest then
		var3 = arg1.rank
	else
		var3 = nil
	end
	module.recommendationRank = var3
	module.isContact = arg1.isContact
	module.contextualInfoType = arg1.contextualInfoType
	return module
end