-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:47
-- Luau version 6, Types version 3
-- Time taken: 0.000966 seconds

local GameVotesRodux = script:FindFirstAncestor("GameVotesRodux")
local SetGameVotes_upvr = require(GameVotesRodux.GameVotes.SetGameVotes)
local Immutable_upvr = require(GameVotesRodux.Parent.AppCommonLib).Immutable
return function(arg1, arg2) -- Line 15
	--[[ Upvalues[2]:
		[1]: SetGameVotes_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	arg1 = var5
	local var6 = arg1
	assert(var6, "")
	if arg2.type == SetGameVotes_upvr.name then
		var6 = Immutable_upvr.Set(var6, arg2.universeId, {
			upVotes = arg2.upVotes;
			downVotes = arg2.downVotes;
		})
	end
	return var6
end