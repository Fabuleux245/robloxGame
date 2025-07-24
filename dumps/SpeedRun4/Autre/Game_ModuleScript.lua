-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:58
-- Luau version 6, Types version 3
-- Time taken: 0.000659 seconds

local module_upvr = {
	new = function() -- Line 16, Named "new"
		return {}
	end;
}
function module_upvr.fromGameCache(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.universeId = arg1.UniverseId
	any_new_result1_2.placeId = arg1.PlaceId
	any_new_result1_2.name = arg1.Name
	any_new_result1_2.playerCount = arg1.PlayerCount
	any_new_result1_2.imageToken = arg1.ImageToken
	any_new_result1_2.totalUpVotes = arg1.VoteData.UpVotes
	any_new_result1_2.totalDownVotes = arg1.VoteData.DownVotes
	return any_new_result1_2
end
function module_upvr.fromJsonData(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	any_new_result1.universeId = arg1.universeId
	any_new_result1.placeId = arg1.placeId
	any_new_result1.name = arg1.name
	any_new_result1.playerCount = arg1.playerCount
	any_new_result1.imageToken = arg1.imageToken
	any_new_result1.totalUpVotes = arg1.totalUpVotes
	any_new_result1.totalDownVotes = arg1.totalDownVotes
	return any_new_result1
end
return module_upvr