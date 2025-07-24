-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:53
-- Luau version 6, Types version 3
-- Time taken: 0.001029 seconds

local GameVotesRodux = script:FindFirstAncestor("GameVotesRodux")
local SetUserGameVotes_upvr = require(GameVotesRodux.UserGameVotes.SetUserGameVotes)
local Immutable_upvr = require(GameVotesRodux.Parent.AppCommonLib).Immutable
local ClearUserGameVotes_upvr = require(GameVotesRodux.UserGameVotes.ClearUserGameVotes)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[3]:
		[1]: SetUserGameVotes_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: ClearUserGameVotes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6 = arg1
	if not var6 then
		var6 = {}
	end
	if arg2.type == SetUserGameVotes_upvr.name then
		local any_Set_result1 = Immutable_upvr.Set(var6, arg2.universeId, {
			canVote = arg2.canVote;
			userVote = arg2.userVote;
			reasonForNotVoteable = arg2.reasonForNotVoteable;
		})
		return any_Set_result1
	end
	if arg2.type == ClearUserGameVotes_upvr.name then
	end
	return Immutable_upvr.Set(any_Set_result1, arg2.universeId, nil)
end