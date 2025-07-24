-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:07
-- Luau version 6, Types version 3
-- Time taken: 0.000935 seconds

local Parent = script:FindFirstAncestor("Achievements").Parent
local tbl = {}
local Cryo_upvr = require(Parent.Cryo)
function tbl.SetUserGameVotes(arg1, arg2) -- Line 30
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local universeId = arg2.universeId
	local userVote = arg2.userVote
	local gameVoteStatus = arg1.gameVoteStatus
	local voteCountSinceAppStart = arg1.voteCountSinceAppStart
	local lastUniverseId = arg1.lastUniverseId
	if arg2.canVote and gameVoteStatus[universeId] and gameVoteStatus[universeId] ~= userVote and userVote ~= "NotVoted" then
		voteCountSinceAppStart += 1
		lastUniverseId = universeId
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		gameVoteStatus = Cryo_upvr.Dictionary.join(gameVoteStatus, {
			[universeId] = userVote;
		});
		voteCountSinceAppStart = voteCountSinceAppStart;
		lastUniverseId = lastUniverseId;
	})
end
local any_createReducer_result1_upvr = require(Parent.Rodux).createReducer({
	gameVoteStatus = {};
	voteCountSinceAppStart = 0;
	lastUniverseId = -1;
}, tbl)
return function(arg1, arg2) -- Line 64
	--[[ Upvalues[1]:
		[1]: any_createReducer_result1_upvr (readonly)
	]]
	return any_createReducer_result1_upvr(arg1, arg2)
end