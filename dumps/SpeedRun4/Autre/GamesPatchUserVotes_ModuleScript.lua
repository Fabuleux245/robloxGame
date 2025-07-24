-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:50
-- Luau version 6, Types version 3
-- Time taken: 0.001659 seconds

local GameVotesRodux = script:FindFirstAncestor("GameVotesRodux")
local VoteStatus = require(GameVotesRodux.Enums.VoteStatus)
local tbl_upvr = {
	[VoteStatus.VotedUp] = true;
	[VoteStatus.VotedDown] = false;
	[VoteStatus.NotVoted] = "null";
}
local Url_upvr = require(GameVotesRodux.Parent.Http).Url
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3) -- Line 22
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7
	if type(arg2) ~= "string" then
		var7 = false
	else
		var7 = true
	end
	assert(var7, "GamesPatchUserVotes request expects universeId to be a string")
	var7 = tbl_upvr
	local var8 = var7[arg3]
	if var8 == nil then
	else
	end
	var7 = assert
	var7(true, "GamesPatchUserVotes request expects a valid vote")
	var7 = string.format("%sv1/games/%s/user-votes", Url_upvr.GAME_URL, arg2)
	return arg1(var7, "PATCH", {
		postBody = HttpService_upvr:JSONEncode({
			vote = var8;
		});
	})
end