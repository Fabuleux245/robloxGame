-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:50
-- Luau version 6, Types version 3
-- Time taken: 0.002074 seconds

local GameVotesRodux = script:FindFirstAncestor("GameVotesRodux")
local Parent = GameVotesRodux.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local VoteStatus_upvr = require(GameVotesRodux.Enums.VoteStatus)
local function _(arg1) -- Line 11, Named "getUserVoteStatus"
	--[[ Upvalues[1]:
		[1]: VoteStatus_upvr (readonly)
	]]
	if arg1 == true then
		return VoteStatus_upvr.VotedUp
	end
	if arg1 == false then
		return VoteStatus_upvr.VotedDown
	end
	if arg1 == nil then
		return VoteStatus_upvr.NotVoted
	end
	return nil
end
local module = {}
local function _(arg1) -- Line 24, Named "fetchKeymapper"
	return "luaapp.gamesapi.user-game-votes"..arg1
end
local GetUserGameVotes_upvr = require(GameVotesRodux.UserGameVotes.GetUserGameVotes)
local SetUserGameVotes_upvr = require(GameVotesRodux.UserGameVotes.SetUserGameVotes)
local Logging_upvr = require(Parent.AppCommonLib).Logging
local Promise_upvr = require(Parent.Promise)
local SetNetworkingErrorToast_upvr = require(Parent.RobloxAppToastsRodux).Thunks.SetNetworkingErrorToast
function module.Fetch(arg1, arg2) -- Line 28
	--[[ Upvalues[7]:
		[1]: PerformFetch_upvr (readonly)
		[2]: GetUserGameVotes_upvr (readonly)
		[3]: VoteStatus_upvr (readonly)
		[4]: SetUserGameVotes_upvr (readonly)
		[5]: Logging_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: SetNetworkingErrorToast_upvr (readonly)
	]]
	local var11
	if type(arg2) ~= "string" then
		var11 = false
	else
		var11 = true
	end
	assert(var11, string.format("FetchUserGameVotes thunk expects universeId to be a string, was %s", type(arg2)))
	var11 = PerformFetch_upvr
	var11 = "luaapp.gamesapi.user-game-votes"..arg2
	return var11.Single(var11, function(arg1_2) -- Line 34
		--[[ Upvalues[8]:
			[1]: GetUserGameVotes_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: VoteStatus_upvr (copied, readonly)
			[5]: SetUserGameVotes_upvr (copied, readonly)
			[6]: Logging_upvr (copied, readonly)
			[7]: Promise_upvr (copied, readonly)
			[8]: SetNetworkingErrorToast_upvr (copied, readonly)
		]]
		return GetUserGameVotes_upvr(arg1, arg2):andThen(function(arg1_3) -- Line 35
			--[[ Upvalues[6]:
				[1]: VoteStatus_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: SetUserGameVotes_upvr (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: Logging_upvr (copied, readonly)
				[6]: Promise_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local responseBody = arg1_3.responseBody
			local var15
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
			var15 = responseBody.canVote
			-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 5. Error Block 3 start (CF ANALYSIS FAILED)
			var15 = responseBody.reasonForNotVoteable
			-- KONSTANTERROR: [8] 5. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [26] 16. Error Block 22 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [26.3]
			if nil == nil then
				var15 = VoteStatus_upvr.NotVoted
			else
				var15 = nil
			end
			if var15 then
				arg1_2:dispatch(SetUserGameVotes_upvr(arg2, responseBody.canVote, var15, responseBody.reasonForNotVoteable))
			else
				Logging_upvr.warn("Response from GetUserGameVotes is malformed!")
				return Promise_upvr.reject({
					HttpError = Enum.HttpError.OK;
				})
			end
			do
				return Promise_upvr.resolve(arg1_3)
			end
			-- KONSTANTERROR: [26] 16. Error Block 22 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [68] 48. Error Block 16 start (CF ANALYSIS FAILED)
			var15 = Logging_upvr.warn
			var15("Response from GetUserGameVotes is malformed!")
			var15 = Promise_upvr.reject
			var15 = var15({
				HttpError = Enum.HttpError.OK;
			})
			do
				return var15
			end
			-- KONSTANTERROR: [68] 48. Error Block 16 end (CF ANALYSIS FAILED)
		end, function(arg1_4) -- Line 53
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SetNetworkingErrorToast_upvr (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SetNetworkingErrorToast_upvr(arg1_4))
			return Promise_upvr.reject(arg1_4)
		end)
	end)
end
function module.GetFetchingStatus(arg1, arg2) -- Line 60
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.gamesapi.user-game-votes"..arg2)
end
return module