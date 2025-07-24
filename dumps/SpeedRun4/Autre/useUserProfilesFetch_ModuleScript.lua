-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:07
-- Luau version 6, Types version 3
-- Time taken: 0.009525 seconds

local UserProfiles = script:FindFirstAncestor("UserProfiles")
local Parent = UserProfiles.Parent
local RoactUtils = require(Parent.RoactUtils)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("UserProfilesFilterInvalidUserIds", false)
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("UserProfilesEnableSkip", false)
local useQuery_upvr = require(Parent.ApolloClient).useQuery
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UserProfilesEnableRetries", false)
local useApolloAutoRetry_upvr = require(Parent.SocialCommon).Hooks.useApolloAutoRetry
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UserProfileDefaultRetryCount", 2)
local FFlagUserProfilesLogCancelledRequests_upvr = require(UserProfiles.Flags.FFlagUserProfilesLogCancelledRequests)
local setupFireDiag_upvr = require(UserProfiles.Analytics.setupFireDiag)
local UserProfilesAnalytics_upvr = require(UserProfiles.Analytics.UserProfilesAnalytics)
local useEffectOnMount_upvr = RoactUtils.Hooks.useEffectOnMount
local EventNames_upvr = require(UserProfiles.Analytics.EventNames)
local useEffectOnce_upvr = RoactUtils.Hooks.useEffectOnce
local FFlagUserProfilesLogErrorCodes_upvr = require(UserProfiles.Flags.FFlagUserProfilesLogErrorCodes)
local getDeepValue_upvr = require(Parent.LuaSocialLibrariesDeps).SocialLibraries.config({}).Dictionary.getDeepValue
return function(arg1) -- Line 30
	--[[ Upvalues[16]:
		[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[2]: React_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[5]: useQuery_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: useApolloAutoRetry_upvr (readonly)
		[8]: game_DefineFastInt_result1_upvr (readonly)
		[9]: FFlagUserProfilesLogCancelledRequests_upvr (readonly)
		[10]: setupFireDiag_upvr (readonly)
		[11]: UserProfilesAnalytics_upvr (readonly)
		[12]: useEffectOnMount_upvr (readonly)
		[13]: EventNames_upvr (readonly)
		[14]: useEffectOnce_upvr (readonly)
		[15]: FFlagUserProfilesLogErrorCodes_upvr (readonly)
		[16]: getDeepValue_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var21
	if game_DefineFastFlag_result1_upvr_2 then
		var21 = React_upvr.useMemo(function() -- Line 38
			--[[ Upvalues[2]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return Cryo_upvr.List.filter(arg1.userIds, function(arg1_2) -- Line 39
				local var24
				if tonumber(arg1_2) == nil then
					var24 = false
				else
					var24 = true
				end
				return var24
			end)
		end, {arg1.userIds})
	end
	local var26
	if game_DefineFastFlag_result1_upvr_3 then
		if game_DefineFastFlag_result1_upvr_2 then
			if #var21 ~= 0 then
				var26 = false
			else
				var26 = true
			end
		elseif #arg1.userIds ~= 0 then
			var26 = false
		else
			var26 = true
		end
	end
	local tbl = {
		errorPolicy = "all";
	}
	if not var26 then
	end
	tbl.skip = arg1.skip
	local tbl_5 = {}
	local var29 = game_DefineFastFlag_result1_upvr_2
	if var29 then
	else
	end
	tbl_5.userIds = arg1.userIds
	tbl.variables = tbl_5
	if game_DefineFastFlag_result1_upvr then
		local tbl_4 = {}
		if arg1.overrideRetryCount then
			var29 = arg1.overrideRetryCount
		else
			var29 = game_DefineFastInt_result1_upvr
		end
		tbl_4.retryCount = var29
		local useApolloAutoRetry_upvr_result1_upvw = useApolloAutoRetry_upvr(useQuery_upvr(arg1.query, tbl), tbl_4)
	end
	if not useApolloAutoRetry_upvr_result1_upvw.loading then
	end
	local any_useRef_result1_upvr = React_upvr.useRef(useApolloAutoRetry_upvr_result1_upvw.isRetrying)
	if FFlagUserProfilesLogCancelledRequests_upvr then
		if not useApolloAutoRetry_upvr_result1_upvw.loading then
		end
		any_useRef_result1_upvr.current = useApolloAutoRetry_upvr_result1_upvw.isRetrying
	end
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 72
		--[[ Upvalues[2]:
			[1]: setupFireDiag_upvr (copied, readonly)
			[2]: UserProfilesAnalytics_upvr (copied, readonly)
		]]
		return setupFireDiag_upvr({
			analytics = {
				Diag = UserProfilesAnalytics_upvr.Diag;
			};
		})
	end, {})
	local any_useRef_result1_upvr_2 = React_upvr.useRef(DateTime.now())
	useEffectOnMount_upvr(function() -- Line 82
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useMemo_result1_upvr (readonly)
			[3]: EventNames_upvr (copied, readonly)
		]]
		any_useRef_result1_upvr_2.current = DateTime.now()
		any_useMemo_result1_upvr(EventNames_upvr.UserProfilesRequestBegin)
	end)
	if game_DefineFastFlag_result1_upvr then
		local error = useApolloAutoRetry_upvr_result1_upvw.error
		useEffectOnce_upvr(function() -- Line 88
			--[[ Upvalues[7]:
				[1]: any_useRef_result1_upvr_2 (readonly)
				[2]: any_useMemo_result1_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: UserProfilesAnalytics_upvr (copied, readonly)
				[5]: FFlagUserProfilesLogErrorCodes_upvr (copied, readonly)
				[6]: getDeepValue_upvr (copied, readonly)
				[7]: useApolloAutoRetry_upvr_result1_upvw (read and write)
			]]
			if any_useRef_result1_upvr_2.current then
				any_useMemo_result1_upvr(EventNames_upvr.UserProfilesRequestFail)
				UserProfilesAnalytics_upvr.Diag:reportStats(EventNames_upvr.UserProfilesRequestFailDuration, DateTime.now().UnixTimestampMillis - any_useRef_result1_upvr_2.current.UnixTimestampMillis)
				if FFlagUserProfilesLogErrorCodes_upvr then
					local var20_result1_2 = getDeepValue_upvr(useApolloAutoRetry_upvr_result1_upvw, "error.graphQLErrors")
					if var20_result1_2 then
						local _1_4 = var20_result1_2[1]
						if not _1_4 then
							_1_4 = {}
						end
						any_useMemo_result1_upvr(EventNames_upvr.UserProfilesErrorCode, {
							status = getDeepValue_upvr(_1_4, "extensions.status");
						})
					end
				end
			end
		end, error)
		if FFlagUserProfilesLogCancelledRequests_upvr then
			error = not any_useRef_result1_upvr.current
		else
			error = false
			if useApolloAutoRetry_upvr_result1_upvw.loading == false then
				if useApolloAutoRetry_upvr_result1_upvw.isRetrying ~= false then
					error = false
				else
					error = true
				end
			end
		end
		useEffectOnce_upvr(function() -- Line 109
			--[[ Upvalues[7]:
				[1]: any_useRef_result1_upvr_2 (readonly)
				[2]: useApolloAutoRetry_upvr_result1_upvw (read and write)
				[3]: any_useMemo_result1_upvr (readonly)
				[4]: EventNames_upvr (copied, readonly)
				[5]: UserProfilesAnalytics_upvr (copied, readonly)
				[6]: FFlagUserProfilesLogErrorCodes_upvr (copied, readonly)
				[7]: getDeepValue_upvr (copied, readonly)
			]]
			if any_useRef_result1_upvr_2.current then
				local var53 = DateTime.now().UnixTimestampMillis - any_useRef_result1_upvr_2.current.UnixTimestampMillis
				if useApolloAutoRetry_upvr_result1_upvw.data and useApolloAutoRetry_upvr_result1_upvw.retryCount == 0 then
					any_useMemo_result1_upvr(EventNames_upvr.UserProfilesRequestSuccess)
					UserProfilesAnalytics_upvr.Diag:reportStats(EventNames_upvr.UserProfilesRequestSuccessDuration, var53)
					return
				end
				if useApolloAutoRetry_upvr_result1_upvw.data then
					any_useMemo_result1_upvr(EventNames_upvr.UserProfilesRequestSuccessAfterRetry)
					UserProfilesAnalytics_upvr.Diag:reportStats(EventNames_upvr.UserProfilesRequestSuccessAfterRetry, var53)
					return
				end
				any_useMemo_result1_upvr(EventNames_upvr.UserProfilesRequestFailAfterRetry)
				UserProfilesAnalytics_upvr.Diag:reportStats(EventNames_upvr.UserProfilesRequestFailAfterRetryDuration, var53)
				if FFlagUserProfilesLogErrorCodes_upvr then
					local var20_result1_3 = getDeepValue_upvr(useApolloAutoRetry_upvr_result1_upvw, "error.graphQLErrors")
					if var20_result1_3 then
						local _1_3 = var20_result1_3[1]
						if not _1_3 then
							_1_3 = {}
						end
						any_useMemo_result1_upvr(EventNames_upvr.UserProfilesErrorCode, {
							status = getDeepValue_upvr(_1_3, "extensions.status");
						})
					end
				end
			end
		end, error)
	end
	if FFlagUserProfilesLogCancelledRequests_upvr then
		React_upvr.useEffect(function() -- Line 152
			--[[ Upvalues[3]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: any_useMemo_result1_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
			]]
			return function() -- Line 153
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: any_useMemo_result1_upvr (copied, readonly)
					[3]: EventNames_upvr (copied, readonly)
				]]
				if any_useRef_result1_upvr.current then
					any_useMemo_result1_upvr(EventNames_upvr.UserProfilesUnmountEarly)
				end
			end
		end, {})
	end
	return useApolloAutoRetry_upvr_result1_upvw
end