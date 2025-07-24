-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:50
-- Luau version 6, Types version 3
-- Time taken: 0.014492 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local HttpService_upvr = game:GetService("HttpService")
local MessageBusService_upvr = game:GetService("MessageBusService")
local RoduxSquads_upvr = require(SquadsCore.RoduxSquads)
local ExperienceService = require(Parent.ExperienceService)
local SharedFlags = require(Parent.SharedFlags)
local SoundManager = require(Parent.SoundManager)
local ToastNotification = require(Parent.ToastNotification)
local LuauPolyfill = require(Parent.LuauPolyfill)
local FFlagDebugSquadLogsEnabled_upvr = SharedFlags.FFlagDebugSquadLogsEnabled
local function _(arg1) -- Line 76
	--[[ Upvalues[2]:
		[1]: FFlagDebugSquadLogsEnabled_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	if FFlagDebugSquadLogsEnabled_upvr then
		return HttpService_upvr:JSONEncode(arg1)
	end
	if arg1.StatusCode then
		return arg1.StatusCode
	end
	return -1
end
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local AppStorageService_upvr = game:GetService("AppStorageService")
local LocalStorageKey_upvr = require(Parent.LocalStorage).Enums.LocalStorageKey
local ToastNotificationsProtocol_upvr = require(Parent.ToastNotificationsProtocol)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useCurrentSquadParentChannelId_upvr = require(SquadsCore.Hooks.useCurrentSquadParentChannelId)
local ExperienceInviteVoteType_upvr = RoduxSquads_upvr.Enums.ExperienceInviteVoteType
local NetworkingSquads_upvr = require(SquadsCore.Http.NetworkingSquads)
local Logger_upvr = require(SquadsCore.Logger)
local EventNames_upvr = require(SquadsCore.Analytics.EventNames)
local Cryo_upvr = require(Parent.Cryo)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local SquadCoordinationExperienceJoinExperimentation_upvr = require(Parent.SocialExperiments).SquadCoordinationExperienceJoinExperimentation
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("SquadExperienceInviteTimeoutSeconds", 30)
local ExperienceInviteState_upvr = RoduxSquads_upvr.Enums.ExperienceInviteState
local SquadLocationEnum_upvr = require(SquadsCore.Enums.SquadLocationEnum)
local FFlagSquadLaunchExperienceMobileFix_upvr = SharedFlags.FFlagSquadLaunchExperienceMobileFix
local FFlagSplitSquadJoinOriginSources_upvr = SharedFlags.FFlagSplitSquadJoinOriginSources
local GameParams_upvr = ExperienceService.GameParams
local ExperienceService_upvr = ExperienceService.ExperienceService
local game_DefineFastInt_result1_upvr = game:DefineFastInt("SquadExperienceInvitePollingIntervalSeconds", 4)
local setInterval_upvr = LuauPolyfill.setInterval
local clearInterval_upvr = LuauPolyfill.clearInterval
local FFlagEnableRecordSquadExperienceInviteChanges_upvr = require(SquadsCore.Flags).FFlagEnableRecordSquadExperienceInviteChanges
local serializeTable_upvr = require(SquadsCore.Utils.serializeTable)
local SquadToastActionsAndStates_upvr = require(SquadsCore.Enums.SquadToastActionsAndStates)
local SquadToastType_upvr = require(SquadsCore.Enums.SquadToastType)
local RealtimeDelivery_upvr = require(Parent.RealtimeDelivery)
local NotificationTypeEnum_upvr = ToastNotification.ToastNotificationTypeModule.NotificationTypeEnum
local any_GetMessageId_result1_upvr = MessageBusService_upvr:GetMessageId("ToastNotifications", "userActionOnToastNotification")
local LifecycleEvents_upvr = ToastNotification.LifecycleEvents
local SoundManager_upvr = SoundManager.SoundManager
local Sounds_upvr = SoundManager.Sounds
return function(arg1) -- Line 84
	--[[ Upvalues[40]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLocalUserId_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadExternalContractContext_upvr (readonly)
		[5]: AppStorageService_upvr (readonly)
		[6]: LocalStorageKey_upvr (readonly)
		[7]: ToastNotificationsProtocol_upvr (readonly)
		[8]: useSelector_upvr (readonly)
		[9]: useCurrentSquadParentChannelId_upvr (readonly)
		[10]: ExperienceInviteVoteType_upvr (readonly)
		[11]: RoduxSquads_upvr (readonly)
		[12]: NetworkingSquads_upvr (readonly)
		[13]: Logger_upvr (readonly)
		[14]: FFlagDebugSquadLogsEnabled_upvr (readonly)
		[15]: HttpService_upvr (readonly)
		[16]: EventNames_upvr (readonly)
		[17]: Cryo_upvr (readonly)
		[18]: dependencyArray_upvr (readonly)
		[19]: SquadCoordinationExperienceJoinExperimentation_upvr (readonly)
		[20]: game_DefineFastInt_result1_upvr_2 (readonly)
		[21]: ExperienceInviteState_upvr (readonly)
		[22]: SquadLocationEnum_upvr (readonly)
		[23]: FFlagSquadLaunchExperienceMobileFix_upvr (readonly)
		[24]: FFlagSplitSquadJoinOriginSources_upvr (readonly)
		[25]: GameParams_upvr (readonly)
		[26]: ExperienceService_upvr (readonly)
		[27]: game_DefineFastInt_result1_upvr (readonly)
		[28]: setInterval_upvr (readonly)
		[29]: clearInterval_upvr (readonly)
		[30]: FFlagEnableRecordSquadExperienceInviteChanges_upvr (readonly)
		[31]: serializeTable_upvr (readonly)
		[32]: SquadToastActionsAndStates_upvr (readonly)
		[33]: SquadToastType_upvr (readonly)
		[34]: RealtimeDelivery_upvr (readonly)
		[35]: NotificationTypeEnum_upvr (readonly)
		[36]: MessageBusService_upvr (readonly)
		[37]: any_GetMessageId_result1_upvr (readonly)
		[38]: LifecycleEvents_upvr (readonly)
		[39]: SoundManager_upvr (readonly)
		[40]: Sounds_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var14_result1_upvr = useDispatch_upvr()
	local var51_upvr = tonumber(useLocalUserId_upvr()) or 0
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState("")
	React_upvr.useEffect(function() -- Line 92
		--[[ Upvalues[3]:
			[1]: AppStorageService_upvr (copied, readonly)
			[2]: LocalStorageKey_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 94
			--[[ Upvalues[2]:
				[1]: AppStorageService_upvr (copied, readonly)
				[2]: LocalStorageKey_upvr (copied, readonly)
			]]
			return AppStorageService_upvr:GetItem(LocalStorageKey_upvr.BrowserTrackerId)
		end)
		if pcall_result1_2 then
			any_useState_result2_upvr(pcall_result2)
		end
		local any_Connect_result1_upvr = AppStorageService_upvr.ItemWasSet:Connect(function(arg1_2, arg2) -- Line 101
			--[[ Upvalues[2]:
				[1]: LocalStorageKey_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			if arg1_2 == LocalStorageKey_upvr.BrowserTrackerId then
				any_useState_result2_upvr(arg2)
			end
		end)
		return function() -- Line 106
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {any_useState_result2_upvr})
	local default_upvr = ToastNotificationsProtocol_upvr.ToastNotificationProtocol.default
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	local useSelector_upvr_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_3) -- Line 114
		if arg1_3.Squad and arg1_3.Squad.Squad then
			return arg1_3.Squad.Squad.currentExperienceInvite
		end
		return nil
	end, {}))
	local useCurrentSquadParentChannelId_upvr_result1_upvr = useCurrentSquadParentChannelId_upvr()
	local var68 = useSelector_upvr_result1_upvr
	if var68 then
		var68 = useSelector_upvr_result1_upvr.model
	end
	if not var68 or not var68.experienceInviteId then
		local var69_upvr = ""
	end
	if not var68 or not var68.state then
		local var70_upvr = ""
	end
	if not var68 or not var68.experienceDetail.gameInstanceId then
		local var71_upvr = ""
	end
	if not var68 or not var68.experienceDetail.placeId then
		local var72_upvr = 0
	end
	if not var68 or not var68.inviterId then
		local var73_upvr = 0
	end
	local any_useMemo_result1_upvr, any_useMemo_result2_upvr = React_upvr.useMemo(function() -- Line 134
		--[[ Upvalues[4]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: ExperienceInviteVoteType_upvr (copied, readonly)
			[3]: var51_upvr (readonly)
			[4]: any_useState_result1_upvr (readonly)
		]]
		if not useSelector_upvr_result1_upvr or not useSelector_upvr_result1_upvr.model then
			if useSelector_upvr_result1_upvr and useSelector_upvr_result1_upvr.notification.isInviter then
				return ExperienceInviteVoteType_upvr.Accept, false
			end
			return ExperienceInviteVoteType_upvr.Invalid, false
		end
		for _, v in ipairs(useSelector_upvr_result1_upvr.model.votes) do
			if v.userId == var51_upvr then
				local var82
				if v.voteIdentifier and v.voteIdentifier ~= "" then
					if v.voteIdentifier == any_useState_result1_upvr then
						var82 = false
					else
						var82 = true
					end
				end
				return v.voteType, var82
			end
		end
		return ExperienceInviteVoteType_upvr.NoVote, false
	end, {useSelector_upvr_result1_upvr, var51_upvr, any_useState_result1_upvr})
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1_4, arg2) -- Line 161
		--[[ Upvalues[4]:
			[1]: default_upvr (readonly)
			[2]: var14_result1_upvr (readonly)
			[3]: RoduxSquads_upvr (copied, readonly)
			[4]: any_useRef_result1_upvr (readonly)
		]]
		if arg2 then
			default_upvr:dismissNotification(arg1_4)
		end
		var14_result1_upvr(RoduxSquads_upvr.Actions.CurrentExperienceInviteDismissed(arg1_4))
		any_useRef_result1_upvr.current = false
	end, {var14_result1_upvr})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_5, arg2) -- Line 172
		--[[ Upvalues[5]:
			[1]: var14_result1_upvr (readonly)
			[2]: NetworkingSquads_upvr (copied, readonly)
			[3]: Logger_upvr (copied, readonly)
			[4]: FFlagDebugSquadLogsEnabled_upvr (copied, readonly)
			[5]: HttpService_upvr (copied, readonly)
		]]
		local module = {}
		module.experienceInviteId = arg1_5
		module.membershipEntityId = arg2
		return var14_result1_upvr(NetworkingSquads_upvr.GetExperienceInvite.API(module)):catch(function(arg1_6) -- Line 176
			--[[ Upvalues[5]:
				[1]: Logger_upvr (copied, readonly)
				[2]: FFlagDebugSquadLogsEnabled_upvr (copied, readonly)
				[3]: HttpService_upvr (copied, readonly)
				[4]: arg1_5 (readonly)
				[5]: arg2 (readonly)
			]]
			local var92
			if FFlagDebugSquadLogsEnabled_upvr then
				var92 = HttpService_upvr:JSONEncode(arg1_6)
			elseif arg1_6.StatusCode then
				var92 = arg1_6.StatusCode
			else
				var92 = -1
			end
			Logger_upvr:warning("Error getting experience invite. Error: {}, ExperienceInviteId: {}, MembershipEntityId: {}", var92, arg1_5, arg2)
		end)
	end, {var14_result1_upvr})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_7, arg2, arg3) -- Line 185
		--[[ Upvalues[10]:
			[1]: useCurrentSquadParentChannelId_upvr_result1_upvr (readonly)
			[2]: var14_result1_upvr (readonly)
			[3]: NetworkingSquads_upvr (copied, readonly)
			[4]: any_useState_result1_upvr (readonly)
			[5]: any_useContext_result1_upvr (readonly)
			[6]: EventNames_upvr (copied, readonly)
			[7]: Cryo_upvr (copied, readonly)
			[8]: HttpService_upvr (copied, readonly)
			[9]: Logger_upvr (copied, readonly)
			[10]: FFlagDebugSquadLogsEnabled_upvr (copied, readonly)
		]]
		local tbl_4_upvr = {
			parentChannelId = useCurrentSquadParentChannelId_upvr_result1_upvr;
		}
		tbl_4_upvr.experienceInviteId = arg1_7
		tbl_4_upvr.voteType = arg2
		local module_2 = {}
		module_2.experienceInviteId = arg1_7
		module_2.membershipEntityId = arg3
		module_2.voteIdentifier = any_useState_result1_upvr
		module_2.voteType = arg2
		return var14_result1_upvr(NetworkingSquads_upvr.VoteForExperienceInvite.API(module_2)):andThen(function() -- Line 198
			--[[ Upvalues[4]:
				[1]: any_useContext_result1_upvr (copied, readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: Cryo_upvr (copied, readonly)
				[4]: tbl_4_upvr (readonly)
			]]
			any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadVoteApiCall, Cryo_upvr.Dictionary.union(tbl_4_upvr, {
				isSuccess = true;
			}))
		end):catch(function(arg1_8) -- Line 206
			--[[ Upvalues[10]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: any_useContext_result1_upvr (copied, readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: Cryo_upvr (copied, readonly)
				[5]: tbl_4_upvr (readonly)
				[6]: Logger_upvr (copied, readonly)
				[7]: FFlagDebugSquadLogsEnabled_upvr (copied, readonly)
				[8]: arg1_7 (readonly)
				[9]: arg3 (readonly)
				[10]: arg2 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local Body_upvr = arg1_8.Body
			local pcall_result1, pcall_result2_2 = pcall(function() -- Line 208
				--[[ Upvalues[2]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: Body_upvr (readonly)
				]]
				return HttpService_upvr:JSONDecode(Body_upvr)
			end)
			local var105
			if pcall_result1 then
				var105 = pcall_result2_2.errorType
			else
				var105 = nil
			end
			local tbl_2 = {
				isSuccess = false;
				errorMessage = var105;
			}
			if arg1_8.StatusCode then
			else
			end
			tbl_2.errorType = nil
			any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadVoteApiCall, Cryo_upvr.Dictionary.union(tbl_4_upvr, tbl_2))
			if FFlagDebugSquadLogsEnabled_upvr then
			elseif arg1_8.StatusCode then
			else
			end
			Logger_upvr:warning("Error voting for experience invite. Error: {}, ExperienceInviteId: {}, MembershipEntityId: {}, VoteType: {}", -1, arg1_7, arg3, arg2)
		end)
	end, dependencyArray_upvr(var14_result1_upvr, any_useState_result1_upvr))
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
	else
	end
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_9) -- Line 234
		--[[ Upvalues[8]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: var69_upvr (readonly)
			[4]: var71_upvr (readonly)
			[5]: var72_upvr (readonly)
			[6]: var73_upvr (readonly)
			[7]: var70_upvr (readonly)
			[8]: useCurrentSquadParentChannelId_upvr_result1_upvr (readonly)
		]]
		local tbl_3 = {
			experienceInviteId = var69_upvr;
			invitationGameInstanceId = var71_upvr;
			invitationPlaceId = var72_upvr;
			inviterId = var73_upvr;
			inviteState = var70_upvr;
			parentChannelId = useCurrentSquadParentChannelId_upvr_result1_upvr;
		}
		tbl_3.joinAttemptId = arg1_9
		any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadExperienceInviteStateChange, tbl_3)
	end, dependencyArray_upvr(var71_upvr, var69_upvr, var73_upvr, var72_upvr, var70_upvr, useCurrentSquadParentChannelId_upvr_result1_upvr, nil))
	React_upvr.useEffect(function() -- Line 261
		--[[ Upvalues[3]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
			[3]: any_useCallback_result1_upvr_4 (readonly)
		]]
		local var112_upvw
		if useSelector_upvr_result1_upvr then
			var112_upvw = task.delay(game_DefineFastInt_result1_upvr_2, function() -- Line 264
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr_4 (copied, readonly)
					[2]: useSelector_upvr_result1_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr_4(useSelector_upvr_result1_upvr.notification.notificationId, true)
			end)
		end
		return function() -- Line 268
			--[[ Upvalues[1]:
				[1]: var112_upvw (read and write)
			]]
			if var112_upvw then
				task.cancel(var112_upvw)
			end
		end
	end, {any_useCallback_result1_upvr_4, useSelector_upvr_result1_upvr})
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
	else
	end
	React_upvr.useEffect(function() -- Line 277
		--[[ Upvalues[16]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: any_useMemo_result1_upvr (readonly)
			[3]: ExperienceInviteVoteType_upvr (copied, readonly)
			[4]: any_useRef_result1_upvr (readonly)
			[5]: ExperienceInviteState_upvr (copied, readonly)
			[6]: Logger_upvr (copied, readonly)
			[7]: any_useCallback_result1_upvr_4 (readonly)
			[8]: any_useContext_result1_upvr (readonly)
			[9]: SquadLocationEnum_upvr (copied, readonly)
			[10]: FFlagSquadLaunchExperienceMobileFix_upvr (copied, readonly)
			[11]: FFlagSplitSquadJoinOriginSources_upvr (copied, readonly)
			[12]: SquadCoordinationExperienceJoinExperimentation_upvr (copied, readonly)
			[13]: HttpService_upvr (copied, readonly)
			[14]: any_useCallback_result1_upvr_2 (readonly)
			[15]: GameParams_upvr (copied, readonly)
			[16]: ExperienceService_upvr (copied, readonly)
		]]
		if not useSelector_upvr_result1_upvr or any_useMemo_result1_upvr ~= ExperienceInviteVoteType_upvr.Accept or any_useRef_result1_upvr.current then
		else
			local model = useSelector_upvr_result1_upvr.model
			if model and model.state == ExperienceInviteState_upvr.ReservationSuccessful then
				local gameInstanceId_upvr = model.experienceDetail.gameInstanceId
				local placeId_upvr = model.experienceDetail.placeId
				assert(gameInstanceId_upvr, "Game instance id should exist.")
				any_useRef_result1_upvr.current = true
				Logger_upvr:debug("Launching experience. GameInstanceId: {}, PlaceId: {}", gameInstanceId_upvr, placeId_upvr)
				local notification_upvr = useSelector_upvr_result1_upvr.notification
				local task_delay_result1_upvr = task.delay(1, function() -- Line 297
					--[[ Upvalues[13]:
						[1]: any_useCallback_result1_upvr_4 (copied, readonly)
						[2]: notification_upvr (readonly)
						[3]: any_useContext_result1_upvr (copied, readonly)
						[4]: SquadLocationEnum_upvr (copied, readonly)
						[5]: FFlagSquadLaunchExperienceMobileFix_upvr (copied, readonly)
						[6]: FFlagSplitSquadJoinOriginSources_upvr (copied, readonly)
						[7]: SquadCoordinationExperienceJoinExperimentation_upvr (copied, readonly)
						[8]: HttpService_upvr (copied, readonly)
						[9]: any_useCallback_result1_upvr_2 (copied, readonly)
						[10]: GameParams_upvr (copied, readonly)
						[11]: placeId_upvr (readonly)
						[12]: gameInstanceId_upvr (readonly)
						[13]: ExperienceService_upvr (copied, readonly)
					]]
					any_useCallback_result1_upvr_4(notification_upvr.notificationId, true)
					local var122
					if any_useContext_result1_upvr.squadLocation == var122 and FFlagSquadLaunchExperienceMobileFix_upvr then
						game:Shutdown()
					end
					local var123 = "SquadExperienceInvite"
					var122 = FFlagSplitSquadJoinOriginSources_upvr
					if var122 then
						var122 = any_useContext_result1_upvr.squadLocation
						if var122 == SquadLocationEnum_upvr.UniversalApp then
							var123 = "SquadExperienceInviteFromUA"
						else
							var122 = any_useContext_result1_upvr.squadLocation
							if var122 == SquadLocationEnum_upvr.InExperience then
								var123 = "SquadExperienceInviteFromInExp"
							end
						end
					end
					var122 = nil
					if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
						var122 = HttpService_upvr:GenerateGUID(false)
						any_useCallback_result1_upvr_2(var122)
					end
					local any_fromPlaceInstance_result1 = GameParams_upvr.fromPlaceInstance(placeId_upvr, gameInstanceId_upvr)
					if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
						any_fromPlaceInstance_result1.joinAttemptId = var122
					end
					ExperienceService_upvr:LaunchExperience(any_fromPlaceInstance_result1, var123, nil)
				end)
				return function() -- Line 328
					--[[ Upvalues[1]:
						[1]: task_delay_result1_upvr (readonly)
					]]
					task.cancel(task_delay_result1_upvr)
				end
			end
		end
	end, dependencyArray_upvr(any_useContext_result1_upvr.squadLocation, useSelector_upvr_result1_upvr, any_useCallback_result1_upvr_4, any_useMemo_result1_upvr, nil))
	React_upvr.useEffect(function() -- Line 346
		--[[ Upvalues[6]:
			[1]: game_DefineFastInt_result1_upvr (copied, readonly)
			[2]: useSelector_upvr_result1_upvr (readonly)
			[3]: ExperienceInviteState_upvr (copied, readonly)
			[4]: setInterval_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr (readonly)
			[6]: clearInterval_upvr (copied, readonly)
		]]
		local var128_upvw
		if useSelector_upvr_result1_upvr and (not useSelector_upvr_result1_upvr.model or useSelector_upvr_result1_upvr.model.state == ExperienceInviteState_upvr.Active or useSelector_upvr_result1_upvr.model.state == ExperienceInviteState_upvr.Reserving) then
			var128_upvw = setInterval_upvr(function() -- Line 357
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr (copied, readonly)
					[2]: useSelector_upvr_result1_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr(useSelector_upvr_result1_upvr.notification.experienceInviteId, useSelector_upvr_result1_upvr.notification.membershipEntityId)
			end, game_DefineFastInt_result1_upvr * 1000)
		end
		return function() -- Line 365
			--[[ Upvalues[2]:
				[1]: var128_upvw (read and write)
				[2]: clearInterval_upvr (copied, readonly)
			]]
			if var128_upvw then
				clearInterval_upvr(var128_upvw)
			end
		end
	end, {useSelector_upvr_result1_upvr, any_useCallback_result1_upvr})
	React_upvr.useEffect(function() -- Line 374
		--[[ Upvalues[4]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useMemo_result2_upvr (readonly)
			[4]: any_useCallback_result1_upvr_4 (readonly)
		]]
		if useSelector_upvr_result1_upvr and (arg1.currentSquadId ~= useSelector_upvr_result1_upvr.notification.membershipEntityId or any_useMemo_result2_upvr) then
			any_useCallback_result1_upvr_4(useSelector_upvr_result1_upvr.notification.notificationId, true)
		end
	end, {useSelector_upvr_result1_upvr, any_useCallback_result1_upvr_4, arg1.currentSquadId, any_useMemo_result2_upvr})
	if FFlagEnableRecordSquadExperienceInviteChanges_upvr then
		React_upvr.useEffect(function() -- Line 387
			--[[ Upvalues[4]:
				[1]: ExperienceInviteState_upvr (copied, readonly)
				[2]: var70_upvr (readonly)
				[3]: SquadCoordinationExperienceJoinExperimentation_upvr (copied, readonly)
				[4]: any_useCallback_result1_upvr_2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 9. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 9. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 18. Error Block 5 start (CF ANALYSIS FAILED)
			any_useCallback_result1_upvr_2()
			-- KONSTANTERROR: [20] 18. Error Block 5 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [22] 20. Error Block 6 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [22] 20. Error Block 6 end (CF ANALYSIS FAILED)
		end, {var70_upvr, any_useCallback_result1_upvr_2})
	end
	React_upvr.useEffect(function() -- Line 406
		--[[ Upvalues[14]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: Logger_upvr (copied, readonly)
			[3]: serializeTable_upvr (copied, readonly)
			[4]: var51_upvr (readonly)
			[5]: ExperienceInviteState_upvr (copied, readonly)
			[6]: default_upvr (readonly)
			[7]: any_useCallback_result1_upvr_4 (readonly)
			[8]: any_useMemo_result1_upvr (readonly)
			[9]: ExperienceInviteVoteType_upvr (copied, readonly)
			[10]: any_useContext_result1_upvr (readonly)
			[11]: EventNames_upvr (copied, readonly)
			[12]: useCurrentSquadParentChannelId_upvr_result1_upvr (readonly)
			[13]: SquadToastActionsAndStates_upvr (copied, readonly)
			[14]: SquadToastType_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 61 start (CF ANALYSIS FAILED)
		local var137
		if not useSelector_upvr_result1_upvr or not useSelector_upvr_result1_upvr.model then return end
		var137 = "Current experience invite updated: {}"
		Logger_upvr:debug(var137, serializeTable_upvr(useSelector_upvr_result1_upvr.model))
		var137 = useSelector_upvr_result1_upvr
		var137 = useSelector_upvr_result1_upvr.model
		local state = var137.state
		if useSelector_upvr_result1_upvr.model.inviterId ~= var51_upvr then
			var137 = false
		else
			var137 = true
		end
		-- KONSTANTERROR: [0] 1. Error Block 61 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [95] 69. Error Block 18 start (CF ANALYSIS FAILED)
		Logger_upvr:warning("Invitee unexpected squad experience invite state: {}", state)
		do
			return
		end
		-- KONSTANTERROR: [95] 69. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [102] 75. Error Block 19 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [102] 75. Error Block 19 end (CF ANALYSIS FAILED)
	end, {useSelector_upvr_result1_upvr, useCurrentSquadParentChannelId_upvr_result1_upvr, any_useCallback_result1_upvr_4, var51_upvr, any_useContext_result1_upvr.fireSquadAnalytics, any_useMemo_result1_upvr})
	RealtimeDelivery_upvr.useRealtimeNamespace("ExperienceInviteUpdate", function(arg1_10) -- Line 498
		--[[ Upvalues[4]:
			[1]: Logger_upvr (copied, readonly)
			[2]: serializeTable_upvr (copied, readonly)
			[3]: var14_result1_upvr (readonly)
			[4]: RoduxSquads_upvr (copied, readonly)
		]]
		Logger_upvr:debug("Experience invite RTN received. Detail: {}", serializeTable_upvr(arg1_10))
		var14_result1_upvr(RoduxSquads_upvr.Actions.CurrentExperienceInviteUpdated(arg1_10))
	end, {var14_result1_upvr})
	React_upvr.useEffect(function() -- Line 510
		--[[ Upvalues[12]:
			[1]: default_upvr (readonly)
			[2]: useSelector_upvr_result1_upvr (readonly)
			[3]: any_useMemo_result1_upvr (readonly)
			[4]: ExperienceInviteVoteType_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr_4 (readonly)
			[6]: ExperienceInviteState_upvr (copied, readonly)
			[7]: any_useContext_result1_upvr (readonly)
			[8]: EventNames_upvr (copied, readonly)
			[9]: useCurrentSquadParentChannelId_upvr_result1_upvr (readonly)
			[10]: SquadToastActionsAndStates_upvr (copied, readonly)
			[11]: SquadToastType_upvr (copied, readonly)
			[12]: any_useCallback_result1_upvr_3 (readonly)
		]]
		local any_listenToDismissNotification_result1_upvr = default_upvr:listenToDismissNotification(function(arg1_11) -- Line 512
			--[[ Upvalues[11]:
				[1]: useSelector_upvr_result1_upvr (copied, readonly)
				[2]: any_useMemo_result1_upvr (copied, readonly)
				[3]: ExperienceInviteVoteType_upvr (copied, readonly)
				[4]: any_useCallback_result1_upvr_4 (copied, readonly)
				[5]: ExperienceInviteState_upvr (copied, readonly)
				[6]: any_useContext_result1_upvr (copied, readonly)
				[7]: EventNames_upvr (copied, readonly)
				[8]: useCurrentSquadParentChannelId_upvr_result1_upvr (copied, readonly)
				[9]: SquadToastActionsAndStates_upvr (copied, readonly)
				[10]: SquadToastType_upvr (copied, readonly)
				[11]: any_useCallback_result1_upvr_3 (copied, readonly)
			]]
			if useSelector_upvr_result1_upvr and useSelector_upvr_result1_upvr.notification.notificationId == arg1_11.notificationId then
				if any_useMemo_result1_upvr ~= ExperienceInviteVoteType_upvr.Accept then
					any_useCallback_result1_upvr_4(arg1_11.notificationId, false)
				end
				if not useSelector_upvr_result1_upvr.model or useSelector_upvr_result1_upvr.model.state == ExperienceInviteState_upvr.Active or any_useMemo_result1_upvr == ExperienceInviteVoteType_upvr.Invalid or any_useMemo_result1_upvr == ExperienceInviteVoteType_upvr.NoVote then
					any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadToastActions, {
						parentChannelId = useCurrentSquadParentChannelId_upvr_result1_upvr;
						experienceInviteId = useSelector_upvr_result1_upvr.notification.experienceInviteId;
						toastAction = SquadToastActionsAndStates_upvr.ExpInvDismiss;
						toastType = SquadToastType_upvr.ExperienceInvite;
					})
					any_useCallback_result1_upvr_3(useSelector_upvr_result1_upvr.notification.experienceInviteId, ExperienceInviteVoteType_upvr.Dismiss, useSelector_upvr_result1_upvr.notification.membershipEntityId)
				end
			end
		end)
		return function() -- Line 553
			--[[ Upvalues[1]:
				[1]: any_listenToDismissNotification_result1_upvr (readonly)
			]]
			any_listenToDismissNotification_result1_upvr:Disconnect()
		end
	end, {useSelector_upvr_result1_upvr, useCurrentSquadParentChannelId_upvr_result1_upvr, any_useCallback_result1_upvr_4, var14_result1_upvr, any_useContext_result1_upvr.fireSquadAnalytics, any_useMemo_result1_upvr, any_useCallback_result1_upvr_3})
	React_upvr.useEffect(function() -- Line 567
		--[[ Upvalues[6]:
			[1]: default_upvr (readonly)
			[2]: var51_upvr (readonly)
			[3]: NotificationTypeEnum_upvr (copied, readonly)
			[4]: HttpService_upvr (copied, readonly)
			[5]: var14_result1_upvr (readonly)
			[6]: RoduxSquads_upvr (copied, readonly)
		]]
		local any_listenToDisplayNotification_result1_upvr = default_upvr:listenToDisplayNotification(function(arg1_12) -- Line 569
			--[[ Upvalues[5]:
				[1]: var51_upvr (copied, readonly)
				[2]: NotificationTypeEnum_upvr (copied, readonly)
				[3]: HttpService_upvr (copied, readonly)
				[4]: var14_result1_upvr (copied, readonly)
				[5]: RoduxSquads_upvr (copied, readonly)
			]]
			if not arg1_12 then
			else
				if var51_upvr <= 0 then return end
				if arg1_12.notificationType == NotificationTypeEnum_upvr.SquadExperienceInvitation then
					local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg1_12.lifecycleData)
					var14_result1_upvr(RoduxSquads_upvr.Actions.CurrentExperienceInviteReceived(any_JSONDecode_result1.experienceInviteId, any_JSONDecode_result1.membershipEntityId, arg1_12.notificationId, any_JSONDecode_result1.isInviter))
				end
			end
		end)
		return function() -- Line 590
			--[[ Upvalues[1]:
				[1]: any_listenToDisplayNotification_result1_upvr (readonly)
			]]
			any_listenToDisplayNotification_result1_upvr:Disconnect()
		end
	end, {var51_upvr})
	React_upvr.useEffect(function() -- Line 597
		--[[ Upvalues[11]:
			[1]: MessageBusService_upvr (copied, readonly)
			[2]: any_GetMessageId_result1_upvr (copied, readonly)
			[3]: NotificationTypeEnum_upvr (copied, readonly)
			[4]: useSelector_upvr_result1_upvr (readonly)
			[5]: HttpService_upvr (copied, readonly)
			[6]: var14_result1_upvr (readonly)
			[7]: RoduxSquads_upvr (copied, readonly)
			[8]: default_upvr (readonly)
			[9]: ExperienceInviteState_upvr (copied, readonly)
			[10]: any_useMemo_result1_upvr (readonly)
			[11]: ExperienceInviteVoteType_upvr (copied, readonly)
		]]
		local any_Subscribe_result1_upvr = MessageBusService_upvr:Subscribe(any_GetMessageId_result1_upvr, function(arg1_13) -- Line 600
			--[[ Upvalues[9]:
				[1]: NotificationTypeEnum_upvr (copied, readonly)
				[2]: useSelector_upvr_result1_upvr (copied, readonly)
				[3]: HttpService_upvr (copied, readonly)
				[4]: var14_result1_upvr (copied, readonly)
				[5]: RoduxSquads_upvr (copied, readonly)
				[6]: default_upvr (copied, readonly)
				[7]: ExperienceInviteState_upvr (copied, readonly)
				[8]: any_useMemo_result1_upvr (copied, readonly)
				[9]: ExperienceInviteVoteType_upvr (copied, readonly)
			]]
			if arg1_13.notificationType == NotificationTypeEnum_upvr.SquadExperienceInvitation and arg1_13.userActionType == "timerElapsed" then
				if not useSelector_upvr_result1_upvr then
					local any_JSONDecode_result1_3 = HttpService_upvr:JSONDecode(arg1_13.parameters)
					var14_result1_upvr(RoduxSquads_upvr.Actions.CurrentExperienceInviteReceived(any_JSONDecode_result1_3.experienceInviteId, any_JSONDecode_result1_3.membershipEntityId, arg1_13.notificationId, any_JSONDecode_result1_3.isInviter))
					var14_result1_upvr(function() -- Line 615
						--[[ Upvalues[2]:
							[1]: default_upvr (copied, readonly)
							[2]: arg1_13 (readonly)
						]]
						default_upvr:updateNotification(arg1_13.notificationId, "expired")
					end)
					return
				end
				assert(useSelector_upvr_result1_upvr, "Experience invite must exist to perform actions.")
				if not useSelector_upvr_result1_upvr.model or useSelector_upvr_result1_upvr.model.state == ExperienceInviteState_upvr.Active or any_useMemo_result1_upvr == ExperienceInviteVoteType_upvr.Invalid or any_useMemo_result1_upvr == ExperienceInviteVoteType_upvr.NoVote then
					default_upvr:updateNotification(arg1_13.notificationId, "expired")
				end
			end
		end, false, true)
		return function() -- Line 645
			--[[ Upvalues[1]:
				[1]: any_Subscribe_result1_upvr (readonly)
			]]
			any_Subscribe_result1_upvr:Disconnect()
		end
	end, {useSelector_upvr_result1_upvr, any_useMemo_result1_upvr, any_useCallback_result1_upvr_3})
	React_upvr.useEffect(function() -- Line 651
		--[[ Upvalues[14]:
			[1]: LifecycleEvents_upvr (copied, readonly)
			[2]: NotificationTypeEnum_upvr (copied, readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: useCurrentSquadParentChannelId_upvr_result1_upvr (readonly)
			[5]: SquadToastType_upvr (copied, readonly)
			[6]: useSelector_upvr_result1_upvr (readonly)
			[7]: var14_result1_upvr (readonly)
			[8]: RoduxSquads_upvr (copied, readonly)
			[9]: any_useContext_result1_upvr (readonly)
			[10]: EventNames_upvr (copied, readonly)
			[11]: Cryo_upvr (copied, readonly)
			[12]: SquadToastActionsAndStates_upvr (copied, readonly)
			[13]: any_useCallback_result1_upvr_3 (readonly)
			[14]: ExperienceInviteVoteType_upvr (copied, readonly)
		]]
		local any_RegisterCallback_result1_upvr_3 = LifecycleEvents_upvr:RegisterCallback(LifecycleEvents_upvr.ToastEvents.UserAction, NotificationTypeEnum_upvr.SquadExperienceInvitation, function(arg1_14) -- Line 655
			--[[ Upvalues[12]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: useCurrentSquadParentChannelId_upvr_result1_upvr (copied, readonly)
				[3]: SquadToastType_upvr (copied, readonly)
				[4]: useSelector_upvr_result1_upvr (copied, readonly)
				[5]: var14_result1_upvr (copied, readonly)
				[6]: RoduxSquads_upvr (copied, readonly)
				[7]: any_useContext_result1_upvr (copied, readonly)
				[8]: EventNames_upvr (copied, readonly)
				[9]: Cryo_upvr (copied, readonly)
				[10]: SquadToastActionsAndStates_upvr (copied, readonly)
				[11]: any_useCallback_result1_upvr_3 (copied, readonly)
				[12]: ExperienceInviteVoteType_upvr (copied, readonly)
			]]
			if arg1_14 and arg1_14.userActionType == "click" and arg1_14.visualItem and arg1_14.visualItem.actionEventParams then
				local any_JSONDecode_result1_2 = HttpService_upvr:JSONDecode(arg1_14.visualItem.actionEventParams)
				local tbl = {
					parentChannelId = useCurrentSquadParentChannelId_upvr_result1_upvr;
					experienceInviteId = any_JSONDecode_result1_2.experienceInviteId;
					toastType = SquadToastType_upvr.ExperienceInvite;
				}
				if not useSelector_upvr_result1_upvr then
					var14_result1_upvr(RoduxSquads_upvr.Actions.CurrentExperienceInviteReceived(any_JSONDecode_result1_2.experienceInviteId, any_JSONDecode_result1_2.membershipEntityId, arg1_14.notificationData.id, any_JSONDecode_result1_2.isInviter))
				end
				if arg1_14.visualItem.eventName == "GroupUpSquadExperience" then
					any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadToastActions, Cryo_upvr.Dictionary.union(tbl, {
						toastAction = SquadToastActionsAndStates_upvr.ExpInvAccept;
					}))
					any_useCallback_result1_upvr_3(any_JSONDecode_result1_2.experienceInviteId, ExperienceInviteVoteType_upvr.Accept, any_JSONDecode_result1_2.membershipEntityId)
					return
				end
				if arg1_14.visualItem.eventName == "DismissSquadExperienceInvited" then
					any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadToastActions, Cryo_upvr.Dictionary.union(tbl, {
						toastAction = SquadToastActionsAndStates_upvr.ExpInvDecline;
					}))
					any_useCallback_result1_upvr_3(any_JSONDecode_result1_2.experienceInviteId, ExperienceInviteVoteType_upvr.Decline, any_JSONDecode_result1_2.membershipEntityId)
					return
				end
				if arg1_14.visualItem.eventName == "CancelSquadExperienceSpotsFilled" then
					any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadToastActions, Cryo_upvr.Dictionary.union(tbl, {
						toastAction = SquadToastActionsAndStates_upvr.ExpInvCancel;
					}))
					any_useCallback_result1_upvr_3(any_JSONDecode_result1_2.experienceInviteId, ExperienceInviteVoteType_upvr.Cancel, any_JSONDecode_result1_2.membershipEntityId)
				end
			end
		end)
		return function() -- Line 723
			--[[ Upvalues[1]:
				[1]: any_RegisterCallback_result1_upvr_3 (readonly)
			]]
			any_RegisterCallback_result1_upvr_3()
		end
	end, {useSelector_upvr_result1_upvr, useCurrentSquadParentChannelId_upvr_result1_upvr, var14_result1_upvr, any_useContext_result1_upvr.fireSquadAnalytics, any_useCallback_result1_upvr_3})
	React_upvr.useEffect(function() -- Line 735
		--[[ Upvalues[4]:
			[1]: SoundManager_upvr (copied, readonly)
			[2]: Sounds_upvr (copied, readonly)
			[3]: LifecycleEvents_upvr (copied, readonly)
			[4]: NotificationTypeEnum_upvr (copied, readonly)
		]]
		local function var172(arg1_15) -- Line 736
			--[[ Upvalues[2]:
				[1]: SoundManager_upvr (copied, readonly)
				[2]: Sounds_upvr (copied, readonly)
			]]
			if arg1_15.currentState == "invited" then
				SoundManager_upvr:PlaySound(Sounds_upvr.PartyToast.Name)
			end
		end
		local any_RegisterCallback_result1_upvr = LifecycleEvents_upvr:RegisterCallback(LifecycleEvents_upvr.ToastEvents.Display, NotificationTypeEnum_upvr.SquadExperienceInvitation, var172)
		local any_RegisterCallback_result1_upvr_2 = LifecycleEvents_upvr:RegisterCallback(LifecycleEvents_upvr.ToastEvents.Update, NotificationTypeEnum_upvr.SquadExperienceInvitation, var172)
		return function() -- Line 754
			--[[ Upvalues[2]:
				[1]: any_RegisterCallback_result1_upvr (readonly)
				[2]: any_RegisterCallback_result1_upvr_2 (readonly)
			]]
			any_RegisterCallback_result1_upvr()
			any_RegisterCallback_result1_upvr_2()
		end
	end, {})
	return nil
end