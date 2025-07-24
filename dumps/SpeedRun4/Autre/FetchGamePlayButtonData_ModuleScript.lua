-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:11
-- Luau version 6, Types version 3
-- Time taken: 0.004790 seconds

local Parent = script:FindFirstAncestor("GamePlayButton").Parent
local RetrievalStatus_upvr = require(Parent.Http).Enum.RetrievalStatus
local GameDetailRodux = require(Parent.GameDetailRodux)
local ApiFetchGameDetails_upvr = GameDetailRodux.GameDetails.ApiFetchGameDetails
local FetchGamePlayabilityAndProductInfo_upvr = GameDetailRodux.FetchGamePlayabilityAndProductInfo
local NextDataExpirationTimeRodux = require(Parent.NextDataExpirationTimeRodux)
local ApiFetchShowAgeVerificationOverlay_upvr = require(Parent.VoiceChat).AgeVerificationOverlay.ApiFetchShowAgeVerificationOverlay
local FFlagLuaAppVpcUpsell_upvr = require(Parent.SharedFlags).FFlagLuaAppVpcUpsell
local module_2 = {}
local FetchUserGameVotes_upvr = require(Parent.GameVotesRodux).UserGameVotes.FetchUserGameVotes
local function playButtonDataFetchPromises_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 26, Named "playButtonDataFetchPromises"
	--[[ Upvalues[6]:
		[1]: ApiFetchGameDetails_upvr (readonly)
		[2]: RetrievalStatus_upvr (readonly)
		[3]: FetchGamePlayabilityAndProductInfo_upvr (readonly)
		[4]: FFlagLuaAppVpcUpsell_upvr (readonly)
		[5]: ApiFetchShowAgeVerificationOverlay_upvr (readonly)
		[6]: FetchUserGameVotes_upvr (readonly)
	]]
	local module = {}
	if ApiFetchGameDetails_upvr.GetFetchingStatus(arg2:getState(), arg3) ~= RetrievalStatus_upvr.Fetching and (arg4 or arg2:getState().GameDetails[arg3] == nil) then
		local tbl = {}
		tbl[1] = arg3
		table.insert(module, arg2:dispatch(ApiFetchGameDetails_upvr.Fetch(arg1, tbl)))
	end
	local any_GetFetchingStatus_result1_4 = FetchGamePlayabilityAndProductInfo_upvr.GetFetchingStatus(arg2:getState(), arg3)
	if arg4 or FFlagLuaAppVpcUpsell_upvr and arg5 or any_GetFetchingStatus_result1_4 == RetrievalStatus_upvr.NotStarted or any_GetFetchingStatus_result1_4 == RetrievalStatus_upvr.Failed then
		table.insert(module, arg2:dispatch(FetchGamePlayabilityAndProductInfo_upvr.Fetch(arg1, arg3)))
	end
	if game:GetEngineFeature("VoiceChatSupported") and ApiFetchShowAgeVerificationOverlay_upvr.GetFetchingStatus(arg2:getState(), arg3) ~= RetrievalStatus_upvr.Fetching and (arg4 or arg2:getState().ShowAgeVerificationOverlay[arg3] == nil) then
		table.insert(module, arg2:dispatch(ApiFetchShowAgeVerificationOverlay_upvr.Fetch(arg1, arg3)))
	end
	if FetchUserGameVotes_upvr.GetFetchingStatus(arg2:getState(), arg3) ~= RetrievalStatus_upvr.Fetching and (arg4 or arg2:getState().UserGameVotes[arg3] == nil) then
		arg2:dispatch(FetchUserGameVotes_upvr.Fetch(arg1, arg3))
	end
	return module
end
function module_2.IsLoading(arg1, arg2) -- Line 81
	--[[ Upvalues[4]:
		[1]: ApiFetchGameDetails_upvr (readonly)
		[2]: RetrievalStatus_upvr (readonly)
		[3]: FetchGamePlayabilityAndProductInfo_upvr (readonly)
		[4]: ApiFetchShowAgeVerificationOverlay_upvr (readonly)
	]]
	local any_GetFetchingStatus_result1_2 = ApiFetchGameDetails_upvr.GetFetchingStatus(arg1, arg2)
	if any_GetFetchingStatus_result1_2 == RetrievalStatus_upvr.NotStarted or any_GetFetchingStatus_result1_2 == RetrievalStatus_upvr.Fetching then
		return true
	end
	local any_GetFetchingStatus_result1_3 = FetchGamePlayabilityAndProductInfo_upvr.GetFetchingStatus(arg1, arg2)
	if any_GetFetchingStatus_result1_3 == RetrievalStatus_upvr.NotStarted or any_GetFetchingStatus_result1_3 == RetrievalStatus_upvr.Fetching then
		return true
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local any_GetFetchingStatus_result1 = ApiFetchShowAgeVerificationOverlay_upvr.GetFetchingStatus(arg1, arg2)
		return any_GetFetchingStatus_result1 == RetrievalStatus_upvr.NotStarted
	end
	if game:GetEngineFeature("VoiceChatSupported") and (INLINED() or any_GetFetchingStatus_result1 == RetrievalStatus_upvr.Fetching) then
		return true
	end
	return false
end
local NextDataExpirationTimeReducer_upvr = NextDataExpirationTimeRodux.NextDataExpirationTimeReducer
local ExpirationTimeNamespace_upvr = NextDataExpirationTimeRodux.ExpirationTimeNamespace
local RunService_upvr = game:GetService("RunService")
local PromiseUtilities_upvr = require(Parent.AppCommonLib).Utils.PromiseUtilities
local GetFIntLuaAppThrottleRefreshPlayabilityIntervalSeconds_upvr = require(Parent.SharedFlags).GetFIntLuaAppThrottleRefreshPlayabilityIntervalSeconds
local SetNextDataExpirationTime_upvr = NextDataExpirationTimeRodux.SetNextDataExpirationTime
function module_2.Fetch(arg1, arg2, arg3) -- Line 116
	--[[ Upvalues[8]:
		[1]: NextDataExpirationTimeReducer_upvr (readonly)
		[2]: ExpirationTimeNamespace_upvr (readonly)
		[3]: playButtonDataFetchPromises_upvr (readonly)
		[4]: FFlagLuaAppVpcUpsell_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: PromiseUtilities_upvr (readonly)
		[7]: GetFIntLuaAppThrottleRefreshPlayabilityIntervalSeconds_upvr (readonly)
		[8]: SetNextDataExpirationTime_upvr (readonly)
	]]
	return function(arg1_2) -- Line 117
		--[[ Upvalues[11]:
			[1]: NextDataExpirationTimeReducer_upvr (copied, readonly)
			[2]: ExpirationTimeNamespace_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: playButtonDataFetchPromises_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: FFlagLuaAppVpcUpsell_upvr (copied, readonly)
			[7]: arg3 (readonly)
			[8]: RunService_upvr (copied, readonly)
			[9]: PromiseUtilities_upvr (copied, readonly)
			[10]: GetFIntLuaAppThrottleRefreshPlayabilityIntervalSeconds_upvr (copied, readonly)
			[11]: SetNextDataExpirationTime_upvr (copied, readonly)
		]]
		local tick_result1_upvw = tick()
		local var25_upvw
		local var26 = arg1_2:getState().Personalization[NextDataExpirationTimeReducer_upvr.key][ExpirationTimeNamespace_upvr.GameDetailPlayability]
		local var27
		if var26 then
			var25_upvw = var26[arg2]
		end
		local var28 = false
		if var25_upvw == nil or var25_upvw < tick_result1_upvw then
			var28 = true
		end
		if FFlagLuaAppVpcUpsell_upvr then
			var27 = arg3
		else
			var27 = nil
		end
		local playButtonDataFetchPromises_result1 = playButtonDataFetchPromises_upvr(arg1, arg1_2, arg2, var28, var27)
		if 0 < #playButtonDataFetchPromises_result1 then
			local var30
			if _G.__TESTEZ_RUNNING_TEST__ or RunService_upvr:IsStudio() then
				var30 = warn
			end
			return PromiseUtilities_upvr.Batch(playButtonDataFetchPromises_result1, var30):andThen(function(arg1_3) -- Line 145
				--[[ Upvalues[8]:
					[1]: PromiseUtilities_upvr (copied, readonly)
					[2]: tick_result1_upvw (read and write)
					[3]: var25_upvw (read and write)
					[4]: GetFIntLuaAppThrottleRefreshPlayabilityIntervalSeconds_upvr (copied, readonly)
					[5]: arg1_2 (readonly)
					[6]: SetNextDataExpirationTime_upvr (copied, readonly)
					[7]: arg2 (copied, readonly)
					[8]: ExpirationTimeNamespace_upvr (copied, readonly)
				]]
				if PromiseUtilities_upvr.CountResults(arg1_3).failureCount == 0 then
					tick_result1_upvw = tick()
					var25_upvw = math.floor(tick_result1_upvw + GetFIntLuaAppThrottleRefreshPlayabilityIntervalSeconds_upvr())
					arg1_2:dispatch(SetNextDataExpirationTime_upvr(arg2, var25_upvw, ExpirationTimeNamespace_upvr.GameDetailPlayability))
				end
			end)
		end
	end
end
return module_2