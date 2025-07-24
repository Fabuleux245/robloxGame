-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:52
-- Luau version 6, Types version 3
-- Time taken: 0.004771 seconds

local GameVotesRodux = script:FindFirstAncestor("GameVotesRodux")
local Parent = GameVotesRodux.Parent
local StatusCodes_upvr = require(Parent.Http).StatusCodes
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local VoteStatus_upvr = require(GameVotesRodux.Enums.VoteStatus)
local function getNewGameVotes_upvr(arg1, arg2, arg3) -- Line 19, Named "getNewGameVotes"
	--[[ Upvalues[1]:
		[1]: VoteStatus_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	if arg2 == arg3 then
		return arg1
	end
	if arg1 then
	end
	if arg1 then
	end
	local var6
	if arg3 == VoteStatus_upvr.VotedUp then
		var6 += 1
		if arg2 == VoteStatus_upvr.VotedDown then
			-- KONSTANTWARNING: GOTO [55] #39
		end
	else
		local var7
		if arg3 == VoteStatus_upvr.VotedDown then
			var7 += 1
			if arg2 == VoteStatus_upvr.VotedUp then
				var6 -= 1
				-- KONSTANTWARNING: GOTO [55] #39
			end
		elseif arg3 == VoteStatus_upvr.NotVoted then
			if arg2 == VoteStatus_upvr.VotedUp then
				var6 -= 1
			elseif arg2 == VoteStatus_upvr.VotedDown then
				var7 -= 1
			end
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 39. Error Block 21 start (CF ANALYSIS FAILED)
	do
		return {
			upVotes = var6;
			downVotes = var7;
		}
	end
	-- KONSTANTERROR: [55] 39. Error Block 21 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 50, Named "isTooManyRequestsError"
	--[[ Upvalues[1]:
		[1]: StatusCodes_upvr (readonly)
	]]
	local var10 = arg1
	if var10 then
		var10 = false
		if arg1.HttpError == Enum.HttpError.OK then
			if arg1.StatusCode ~= StatusCodes_upvr.TOO_MANY_REQUESTS then
				var10 = false
			else
				var10 = true
			end
		end
	end
	return var10
end
local HttpService_upvr = game:GetService("HttpService")
local function isPlayGameError_upvr(arg1) -- Line 54, Named "isPlayGameError"
	--[[ Upvalues[2]:
		[1]: StatusCodes_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	if arg1 and arg1.HttpError == Enum.HttpError.OK and arg1.StatusCode == StatusCodes_upvr.FORBIDDEN then
		local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 56
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return HttpService_upvr:JSONDecode(arg1.Body)
		end)
		if pcall_result1_2 and pcall_result2_2 and pcall_result2_2.errors then
			for _, v in ipairs(pcall_result2_2.errors) do
				if v.code == 6 then
					return true
				end
			end
		end
	end
	return false
end
local function _(arg1) -- Line 70, Named "fetchKeymapper"
	return "luaapp.gamesapi.patch-user-votes"..arg1
end
local module = {
	getNewGameVotes = getNewGameVotes_upvr;
}
local Promise_upvr = require(Parent.Promise)
local GamesPatchUserVotes_upvr = require(GameVotesRodux.UserGameVotes.GamesPatchUserVotes)
local SetGameVotes_upvr = require(GameVotesRodux.GameVotes.SetGameVotes)
local SetUserGameVotes_upvr = require(GameVotesRodux.UserGameVotes.SetUserGameVotes)
local ReasonForNotVoteable_upvr = require(GameVotesRodux.Enums.ReasonForNotVoteable)
local SetCurrentToastMessage_upvr = require(Parent.ToastRodux).Actions.SetCurrentToastMessage
local ToastType_upvr = require(Parent.ToastRodux).Enums.ToastType
local SetNetworkingErrorToast_upvr = require(Parent.RobloxAppToastsRodux).Thunks.SetNetworkingErrorToast
function module.Patch(arg1, arg2, arg3, arg4) -- Line 78
	--[[ Upvalues[12]:
		[1]: Promise_upvr (readonly)
		[2]: PerformFetch_upvr (readonly)
		[3]: GamesPatchUserVotes_upvr (readonly)
		[4]: getNewGameVotes_upvr (readonly)
		[5]: SetGameVotes_upvr (readonly)
		[6]: SetUserGameVotes_upvr (readonly)
		[7]: StatusCodes_upvr (readonly)
		[8]: ReasonForNotVoteable_upvr (readonly)
		[9]: SetCurrentToastMessage_upvr (readonly)
		[10]: ToastType_upvr (readonly)
		[11]: isPlayGameError_upvr (readonly)
		[12]: SetNetworkingErrorToast_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local var37
	if type(arg2) ~= "string" then
		var37 = false
	else
		var37 = true
	end
	assert(var37, string.format("PatchUserVotes thunk expects universeId to be a string, was %s", type(arg2)))
	if type(arg3) ~= "string" then
		var37 = false
		-- KONSTANTWARNING: GOTO [31] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 24. Error Block 26 start (CF ANALYSIS FAILED)
	var37 = true
	assert(var37, string.format("PatchUserVotes thunk expects vote to be a string, was %s", type(arg3)))
	if type(arg4) ~= "string" then
		var37 = false
	else
		var37 = true
	end
	assert(var37, string.format("PatchUserVotes thunk expects curVote to be a string, was %s", type(arg4)))
	if arg3 == arg4 then
		var37 = Promise_upvr
		return var37.resolve()
	end
	var37 = PerformFetch_upvr
	var37 = "luaapp.gamesapi.patch-user-votes"..arg2
	do
		return var37.Single(var37, function(arg1_2) -- Line 97
			--[[ Upvalues[15]:
				[1]: GamesPatchUserVotes_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
				[4]: arg3 (readonly)
				[5]: getNewGameVotes_upvr (copied, readonly)
				[6]: arg4 (readonly)
				[7]: SetGameVotes_upvr (copied, readonly)
				[8]: SetUserGameVotes_upvr (copied, readonly)
				[9]: Promise_upvr (copied, readonly)
				[10]: StatusCodes_upvr (copied, readonly)
				[11]: ReasonForNotVoteable_upvr (copied, readonly)
				[12]: SetCurrentToastMessage_upvr (copied, readonly)
				[13]: ToastType_upvr (copied, readonly)
				[14]: isPlayGameError_upvr (copied, readonly)
				[15]: SetNetworkingErrorToast_upvr (copied, readonly)
			]]
			return GamesPatchUserVotes_upvr(arg1, arg2, arg3):andThen(function(arg1_3) -- Line 98
				--[[ Upvalues[8]:
					[1]: arg1_2 (readonly)
					[2]: arg2 (copied, readonly)
					[3]: getNewGameVotes_upvr (copied, readonly)
					[4]: arg4 (copied, readonly)
					[5]: arg3 (copied, readonly)
					[6]: SetGameVotes_upvr (copied, readonly)
					[7]: SetUserGameVotes_upvr (copied, readonly)
					[8]: Promise_upvr (copied, readonly)
				]]
				local getNewGameVotes_upvr_result1 = getNewGameVotes_upvr(arg1_2:getState().GameVotes[arg2], arg4, arg3)
				arg1_2:dispatch(SetGameVotes_upvr(arg2, getNewGameVotes_upvr_result1.upVotes, getNewGameVotes_upvr_result1.downVotes))
				arg1_2:dispatch(SetUserGameVotes_upvr(arg2, true, arg3, ""))
				return Promise_upvr.resolve(arg1_3)
			end, function(arg1_4) -- Line 105
				--[[ Upvalues[11]:
					[1]: StatusCodes_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
					[3]: SetUserGameVotes_upvr (copied, readonly)
					[4]: arg2 (copied, readonly)
					[5]: arg4 (copied, readonly)
					[6]: ReasonForNotVoteable_upvr (copied, readonly)
					[7]: SetCurrentToastMessage_upvr (copied, readonly)
					[8]: ToastType_upvr (copied, readonly)
					[9]: Promise_upvr (copied, readonly)
					[10]: isPlayGameError_upvr (copied, readonly)
					[11]: SetNetworkingErrorToast_upvr (copied, readonly)
				]]
				local var42 = arg1_4
				if var42 then
					var42 = false
					if arg1_4.HttpError == Enum.HttpError.OK then
						if arg1_4.StatusCode ~= StatusCodes_upvr.TOO_MANY_REQUESTS then
							var42 = false
						else
							var42 = true
						end
					end
				end
				if var42 then
					arg1_2:dispatch(SetUserGameVotes_upvr(arg2, false, arg4, ReasonForNotVoteable_upvr.FloodCheckThresholdMet))
					arg1_2:dispatch(SetCurrentToastMessage_upvr({
						toastType = ToastType_upvr.NetworkingError;
						toastMessage = "Feature.Toast.VoteError.FloodCheckThresholdMet";
					}))
					return Promise_upvr.reject(arg1_4)
				end
				if isPlayGameError_upvr(arg1_4) then
					arg1_2:dispatch(SetUserGameVotes_upvr(arg2, false, arg4, ReasonForNotVoteable_upvr.PlayGame))
					arg1_2:dispatch(SetCurrentToastMessage_upvr({
						toastType = ToastType_upvr.NetworkingError;
						toastMessage = "Feature.Toast.VoteError.PlayGame";
					}))
					return Promise_upvr.reject(arg1_4)
				end
				arg1_2:dispatch(SetNetworkingErrorToast_upvr(arg1_4))
				return Promise_upvr.reject(arg1_4)
			end)
		end)
	end
	-- KONSTANTERROR: [30] 24. Error Block 26 end (CF ANALYSIS FAILED)
end
function module.GetPatchingStatus(arg1, arg2) -- Line 129
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.gamesapi.patch-user-votes"..arg2)
end
return module