-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:18
-- Luau version 6, Types version 3
-- Time taken: 0.011029 seconds

-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local dependencies = require(Parent.dependencies)
local SocialLuaAnalytics = require(Parent_2.SocialLuaAnalytics)
local ContactsToastIXP_upvr = require(Parent_2.ContactsToast).ContactsToastIXP
local GetFFlagContactsToastEnabled_upvr = require(Parent_2.SharedFlags).GetFFlagContactsToastEnabled
local FFlagProfileQRCodeCameraDeeplinkedLogging_upvr = require(Parent_2.SharedFlags).FFlagProfileQRCodeCameraDeeplinkedLogging
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("FixNewFriendRequestCountOnAppResume", false)
local SharedFlags_upvr = require(Parent_2.SharedFlags)
local var10_upvr
if SharedFlags_upvr.FFlagRegisterQRCodeKeyInEngine then
	SharedFlags_upvr = "ProfileQrCodeCameraSettingsModalSeen"
else
	SharedFlags_upvr = "ScreenshotEventTracking"
end
if game_DefineFastFlag_result1_upvr_3 then
	-- KONSTANTWARNING: GOTO [271] #165
end
-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [270] 164. Error Block 20 start (CF ANALYSIS FAILED)
if FFlagProfileQRCodeCameraDeeplinkedLogging_upvr then
	var10_upvr = {}
	var10_upvr.ProfileQRCodeCameraSettingsModalSeen = {
		context = SocialLuaAnalytics.Analytics.Enums.Contexts.ProfileQRCode;
		eventType = SocialLuaAnalytics.Analytics.Enums.EventTypes.SettingsModalSeenSinceLastAppStart;
		formatRulesForAdditionalInfo = {
			cameraPermissionResponseStatus = require(Parent_2.Dash).identity;
		};
	}
else
	var10_upvr = nil
end
local useDispatch_upvr = require(Parent_2.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalUserId_upvr = require(Parent_2.RobloxAppHooks).useLocalUserId
local getAppFeaturePolicies_upvr = require(Parent_2.UniversalAppPolicy).getAppFeaturePolicies
local useFetchContactImporterInfoOnce_upvr = require(Parent.Utils).useFetchContactImporterInfoOnce
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EarlierFetchTimeForFriendsCarousel_v1", false)
local PaginatedFriendsCarouselIXP_upvr = require(Parent.Experiments.PaginatedFriendsCarouselIXP)
local ApolloFriends_upvr = require(Parent_2.ApolloFriends)
local useQuery_upvr = require(Parent_2.ApolloClient).useQuery
local queries_upvr = require(Parent_2.ApolloLocalState).queries
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("CheckUserIdExistsFetchFriendsV1", false)
local userIdExists_upvr = require(Parent_2.SocialCommon).Utils.userIdExists
local Cryo_upvr = require(Parent_2.Cryo)
local FIntFriendsCarouselInitialFetchSize_upvr = require(Parent_2.SharedFlags).FIntFriendsCarouselInitialFetchSize
local useAutoSyncContacts_upvr = require(Parent.Utils).useAutoSyncContacts
local any_rolloutByApplicationId_result1_upvr = require(Parent_2.AppCommonLib).rolloutByApplicationId(function() -- Line 61
	return game:DefineFastInt("CallFriendCountAtStartupRollout", 0)
end)
local React_upvr = require(Parent_2.React)
local NetworkingFriends_upvr = dependencies.NetworkingFriends
local FFlagEnableNewFriendRequestsBadge_upvr = require(Parent_2.SharedFlags).FFlagEnableNewFriendRequestsBadge
local MessageBusService_upvr = game:GetService("MessageBusService")
local var33_upvr
local AnalyticsFactory_upvr = SocialLuaAnalytics.Analytics.AnalyticsFactory
local DefaultAnalyticsService_upvr = SocialLuaAnalytics.Analytics.DefaultAnalyticsService
local AppStorageService_upvr = game:GetService("AppStorageService")
local PermissionsProtocol_upvr = require(Parent_2.PermissionsProtocol).PermissionsProtocol
local dependencyArray_upvr = require(Parent_2.RoactUtils).Hooks.dependencyArray
local Roact_upvr = require(Parent_2.Roact)
local CoreGui_upvr = game:GetService("CoreGui")
local ContactsToast_upvr = require(Parent_2.ContactsToast).ContactsToast
local Dash_upvr = require(Parent_2.Dash)
local getContactImporterParams_upvr = require(Parent.Utils).getContactImporterParams
do
	return dependencies.UniversalAppPolicy.connect(function(arg1) -- Line 221
		--[[ Upvalues[2]:
			[1]: GetFFlagContactsToastEnabled_upvr (readonly)
			[2]: ContactsToastIXP_upvr (readonly)
		]]
		local module = {}
		local any_getContactImporterEnabled_result1 = arg1.getContactImporterEnabled()
		module.isContactImporterPolicyEnabled = any_getContactImporterEnabled_result1
		if GetFFlagContactsToastEnabled_upvr() or ContactsToastIXP_upvr.FFlagContactsToastExperimentEnabled then
			any_getContactImporterEnabled_result1 = arg1.getContactsToastEnabled()
		else
			any_getContactImporterEnabled_result1 = false
		end
		module.isContactsToastPolicyEnabled = any_getContactImporterEnabled_result1
		return module
	end)(function(arg1) -- Line 101, Named "Container"
		--[[ Upvalues[36]:
			[1]: useDispatch_upvr (readonly)
			[2]: useLocalUserId_upvr (readonly)
			[3]: getAppFeaturePolicies_upvr (readonly)
			[4]: useFetchContactImporterInfoOnce_upvr (readonly)
			[5]: game_DefineFastFlag_result1_upvr (readonly)
			[6]: PaginatedFriendsCarouselIXP_upvr (readonly)
			[7]: ApolloFriends_upvr (readonly)
			[8]: useQuery_upvr (readonly)
			[9]: queries_upvr (readonly)
			[10]: game_DefineFastFlag_result1_upvr_2 (readonly)
			[11]: userIdExists_upvr (readonly)
			[12]: Cryo_upvr (readonly)
			[13]: FIntFriendsCarouselInitialFetchSize_upvr (readonly)
			[14]: useAutoSyncContacts_upvr (readonly)
			[15]: any_rolloutByApplicationId_result1_upvr (readonly)
			[16]: React_upvr (readonly)
			[17]: NetworkingFriends_upvr (readonly)
			[18]: FFlagEnableNewFriendRequestsBadge_upvr (readonly)
			[19]: game_DefineFastFlag_result1_upvr_3 (readonly)
			[20]: MessageBusService_upvr (readonly)
			[21]: var33_upvr (readonly)
			[22]: FFlagProfileQRCodeCameraDeeplinkedLogging_upvr (readonly)
			[23]: AnalyticsFactory_upvr (readonly)
			[24]: var10_upvr (readonly)
			[25]: DefaultAnalyticsService_upvr (readonly)
			[26]: AppStorageService_upvr (readonly)
			[27]: SharedFlags_upvr (readonly)
			[28]: PermissionsProtocol_upvr (readonly)
			[29]: dependencyArray_upvr (readonly)
			[30]: GetFFlagContactsToastEnabled_upvr (readonly)
			[31]: ContactsToastIXP_upvr (readonly)
			[32]: Roact_upvr (readonly)
			[33]: CoreGui_upvr (readonly)
			[34]: ContactsToast_upvr (readonly)
			[35]: Dash_upvr (readonly)
			[36]: getContactImporterParams_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var14_result1_upvr = useDispatch_upvr()
		local var15_result1_upvr = useLocalUserId_upvr()
		local isContactImporterPolicyEnabled_2 = arg1.isContactImporterPolicyEnabled
		if not isContactImporterPolicyEnabled_2 then
			isContactImporterPolicyEnabled_2 = getAppFeaturePolicies_upvr().getContactImporterEnabled()
		end
		useFetchContactImporterInfoOnce_upvr({
			policyIsEnabled = isContactImporterPolicyEnabled_2;
		})
		if game_DefineFastFlag_result1_upvr then
			local any_usePaginatedFriendsCarouselExperiment_result1, any_usePaginatedFriendsCarouselExperiment_result2_2 = PaginatedFriendsCarouselIXP_upvr.usePaginatedFriendsCarouselExperiment()
			local tbl_6 = {
				userId = var15_result1_upvr;
			}
			local var92
			if any_usePaginatedFriendsCarouselExperiment_result1 and any_usePaginatedFriendsCarouselExperiment_result2_2 then
				var92 = any_usePaginatedFriendsCarouselExperiment_result2_2
			else
				var92 = ApolloFriends_upvr.Enums.Sort.FriendshipScore
			end
			tbl_6.sort = var92
			var92 = useQuery_upvr
			local tbl_10 = {
				errorPolicy = "all";
			}
			local var94 = not any_usePaginatedFriendsCarouselExperiment_result1
			if not var94 then
				var94 = game_DefineFastFlag_result1_upvr_2
				if var94 then
					var94 = not userIdExists_upvr(var15_result1_upvr)
				end
			end
			tbl_10.skip = var94
			tbl_10.notifyOnNetworkStatusChange = true
			tbl_10.variables = Cryo_upvr.Dictionary.join(tbl_6, {
				pageLimit = FIntFriendsCarouselInitialFetchSize_upvr;
				pageCursor = "";
			})
			var92(queries_upvr.allFriendsByUserId, tbl_10)
			var92 = useQuery_upvr
			local tbl_14 = {}
			local var97 = not any_usePaginatedFriendsCarouselExperiment_result1
			if not var97 then
				var97 = game_DefineFastFlag_result1_upvr_2
				if var97 then
					var97 = not userIdExists_upvr(var15_result1_upvr)
				end
			end
			tbl_14.skip = var97
			tbl_14.notifyOnNetworkStatusChange = true
			tbl_14.variables = tbl_6
			var92(queries_upvr.onlineFriendsByUserId, tbl_14)
		end
		useAutoSyncContacts_upvr()
		if any_rolloutByApplicationId_result1_upvr() then
			React_upvr.useEffect(function() -- Line 144
				--[[ Upvalues[4]:
					[1]: userIdExists_upvr (copied, readonly)
					[2]: var15_result1_upvr (readonly)
					[3]: var14_result1_upvr (readonly)
					[4]: NetworkingFriends_upvr (copied, readonly)
				]]
				if userIdExists_upvr(var15_result1_upvr) then
					var14_result1_upvr(NetworkingFriends_upvr.GetFriendsCountFromUserId.API(var15_result1_upvr))
				end
			end, {var15_result1_upvr})
		end
		if FFlagEnableNewFriendRequestsBadge_upvr then
			React_upvr.useEffect(function() -- Line 152
				--[[ Upvalues[7]:
					[1]: userIdExists_upvr (copied, readonly)
					[2]: var15_result1_upvr (readonly)
					[3]: var14_result1_upvr (readonly)
					[4]: NetworkingFriends_upvr (copied, readonly)
					[5]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
					[6]: MessageBusService_upvr (copied, readonly)
					[7]: var33_upvr (copied, readonly)
				]]
				if userIdExists_upvr(var15_result1_upvr) then
					var14_result1_upvr(NetworkingFriends_upvr.GetNewFriendRequestsCount.API({
						currentUserId = var15_result1_upvr;
					}))
					if game_DefineFastFlag_result1_upvr_3 then
						local any_Subscribe_result1_upvr_2 = MessageBusService_upvr:Subscribe(var33_upvr, function() -- Line 158
							--[[ Upvalues[3]:
								[1]: var14_result1_upvr (copied, readonly)
								[2]: NetworkingFriends_upvr (copied, readonly)
								[3]: var15_result1_upvr (copied, readonly)
							]]
							var14_result1_upvr(NetworkingFriends_upvr.GetNewFriendRequestsCount.API({
								currentUserId = var15_result1_upvr;
							}))
						end, false, true)
						return function() -- Line 163
							--[[ Upvalues[1]:
								[1]: any_Subscribe_result1_upvr_2 (readonly)
							]]
							any_Subscribe_result1_upvr_2:Disconnect()
						end
					end
				end
				function any_Subscribe_result1_upvr_2() -- Line 168
				end
				return any_Subscribe_result1_upvr_2
			end, {var15_result1_upvr})
		end
		if FFlagProfileQRCodeCameraDeeplinkedLogging_upvr then
			local _ = React_upvr.useMemo(function() -- Line 173
				--[[ Upvalues[3]:
					[1]: AnalyticsFactory_upvr (copied, readonly)
					[2]: var10_upvr (copied, readonly)
					[3]: DefaultAnalyticsService_upvr (copied, readonly)
				]]
				return AnalyticsFactory_upvr.setUpAnalyticsFactory({
					eventLists = {
						EventStream = var10_upvr;
					};
					analyticsImpl = {
						EventStream = DefaultAnalyticsService_upvr.EventStream;
					};
				})()
			end, {})
		else
		end
		if FFlagProfileQRCodeCameraDeeplinkedLogging_upvr then
			local var114_upvr
			React_upvr.useEffect(function() -- Line 186
				--[[ Upvalues[4]:
					[1]: AppStorageService_upvr (copied, readonly)
					[2]: SharedFlags_upvr (copied, readonly)
					[3]: PermissionsProtocol_upvr (copied, readonly)
					[4]: var114_upvr (readonly)
				]]
				if AppStorageService_upvr:GetItem(SharedFlags_upvr) == "true" then
					PermissionsProtocol_upvr.default:checkOrRequestPermissions({PermissionsProtocol_upvr.Permissions.CAMERA_ACCESS}):andThen(function(arg1_3) -- Line 194
						--[[ Upvalues[1]:
							[1]: var114_upvr (copied, readonly)
						]]
						local tbl_4 = {}
						tbl_4.cameraPermissionResponseStatus = arg1_3
						var114_upvr.fireAnalyticsEvent("ProfileQRCodeCameraSettingsModalSeen", tbl_4)
					end)
					AppStorageService_upvr:SetItem(SharedFlags_upvr, "false")
					AppStorageService_upvr:Flush()
				end
			end, dependencyArray_upvr(var15_result1_upvr, var114_upvr))
		end
		if GetFFlagContactsToastEnabled_upvr() or ContactsToastIXP_upvr.FFlagContactsToastExperimentEnabled and ContactsToastIXP_upvr.useContactsToastVariant() then
			return React_upvr.createElement(Roact_upvr.Portal, {
				target = CoreGui_upvr;
			}, {React_upvr.createElement(ContactsToast_upvr, Dash_upvr.join(arg1, {
				getContactImporterParams = getContactImporterParams_upvr;
				isContactsToastPolicyEnabled = arg1.isContactsToastPolicyEnabled;
			}))})
		end
		return nil
	end)
end
-- KONSTANTERROR: [270] 164. Error Block 20 end (CF ANALYSIS FAILED)