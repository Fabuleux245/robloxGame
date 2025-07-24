-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:20
-- Luau version 6, Types version 3
-- Time taken: 0.004035 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local dependencies = require(Squads.dependencies)
local SharedFlags = require(Parent.SharedFlags)
local React_upvr = dependencies.React
local SquadExternalContractContext_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useStore_upvr = dependencies.Hooks.useStore
local useCurrentSquadSelector_upvr = dependencies.Hooks.useCurrentSquadSelector
local useCurrentSquadParentChannelId_upvr = dependencies.SquadsCore.Hooks.useCurrentSquadParentChannelId
local FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr = SharedFlags.FFlagPartyDevAPIToRespectThirdPartySettingsEnabled
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useLocalization_upvr = dependencies.Hooks.useLocalization
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local EventNames_upvr = dependencies.SquadsCore.Analytics.EventNames
local SquadButtonSourceEnum_upvr = require(Squads.Enums.SquadButtonSourceEnum)
local SquadButtonClickIntentionEnum_upvr = require(Squads.Enums.SquadButtonClickIntentionEnum)
local FFlagPartyParticipantDisabledFixEnabled_upvr = SharedFlags.FFlagPartyParticipantDisabledFixEnabled
local CreateConversation_upvr = require(Squads.Thunks.CreateConversation)
local SquadPromptType_upvr = dependencies.SquadsCore.Enums.SquadPromptType
local Cryo_upvr = dependencies.Cryo
local leaveSquad_upvr = dependencies.SquadsCore.Thunks.leaveSquad
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnablePartyDevAPI")
local SquadInviteFriends_upvr = require(script.Parent.SquadInviteFriends)
return function(arg1) -- Line 38, Named "QuickStartSquadInviteFriendsContainer"
	--[[ Upvalues[20]:
		[1]: React_upvr (readonly)
		[2]: SquadExternalContractContext_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useStore_upvr (readonly)
		[5]: useCurrentSquadSelector_upvr (readonly)
		[6]: useCurrentSquadParentChannelId_upvr (readonly)
		[7]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (readonly)
		[8]: useLocalUserId_upvr (readonly)
		[9]: useLocalization_upvr (readonly)
		[10]: dependencyArray_upvr (readonly)
		[11]: EventNames_upvr (readonly)
		[12]: SquadButtonSourceEnum_upvr (readonly)
		[13]: SquadButtonClickIntentionEnum_upvr (readonly)
		[14]: FFlagPartyParticipantDisabledFixEnabled_upvr (readonly)
		[15]: CreateConversation_upvr (readonly)
		[16]: SquadPromptType_upvr (readonly)
		[17]: Cryo_upvr (readonly)
		[18]: leaveSquad_upvr (readonly)
		[19]: game_GetEngineFeature_result1_upvr (readonly)
		[20]: SquadInviteFriends_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local var7_result1_upvr = useDispatch_upvr()
	local var8_result1_upvr = useStore_upvr()
	local useCurrentSquadSelector_upvr_result1_upvr = useCurrentSquadSelector_upvr()
	local var10_result1_upvr = useCurrentSquadParentChannelId_upvr()
	local var30_upvr = var10_result1_upvr
	local any_useGetConversationFromId_result1_upvr = any_useContext_result1_upvr.useGetConversationFromId(var30_upvr)
	if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		var30_upvr = any_useContext_result1_upvr.useIsChatEnabled()
	else
		var30_upvr = true
	end
	local useLocalUserId_upvr_result1 = useLocalUserId_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_2) -- Line 59
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_useRef_result1_upvr.current = true
		arg1.navigateIntoSquadLobby(arg1_2)
	end, dependencyArray_upvr(arg1.navigateIntoSquadLobby))
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 65
		--[[ Upvalues[11]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: SquadButtonSourceEnum_upvr (copied, readonly)
			[5]: SquadButtonClickIntentionEnum_upvr (copied, readonly)
			[6]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
			[7]: var7_result1_upvr (readonly)
			[8]: CreateConversation_upvr (copied, readonly)
			[9]: any_useCallback_result1_upvr_2 (readonly)
			[10]: var8_result1_upvr (readonly)
			[11]: SquadPromptType_upvr (copied, readonly)
		]]
		local var38
		if #arg1_3 == 1 then
			var38 = "one_to_one"
		else
			var38 = "group"
		end
		any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.EnterSquadButtonPressed, {
			partyAttemptId = arg1.partyAttemptId;
			squadButtonSource = SquadButtonSourceEnum_upvr.PartyQuickStartButton;
			squadLocation = any_useContext_result1_upvr.squadLocation;
			userIntention = SquadButtonClickIntentionEnum_upvr.Create;
		})
		if FFlagPartyParticipantDisabledFixEnabled_upvr then
			local tbl = {
				conversationType = var38;
			}
			tbl.userIds = arg1_3
			tbl.source = "conversationCreatedFromPartyQuickStart"
			function tbl.onSuccessCallback(arg1_4) -- Line 80
				--[[ Upvalues[1]:
					[1]: any_useCallback_result1_upvr_2 (copied, readonly)
				]]
				any_useCallback_result1_upvr_2(arg1_4)
			end
			tbl.squadContext = any_useContext_result1_upvr
			var7_result1_upvr(CreateConversation_upvr(tbl))
		else
			var7_result1_upvr(any_useContext_result1_upvr.createConversation(var38, arg1_3, nil, "conversationCreatedFromPartyQuickStart")):andThen(function(arg1_5) -- Line 94
				--[[ Upvalues[1]:
					[1]: any_useCallback_result1_upvr_2 (copied, readonly)
				]]
				any_useCallback_result1_upvr_2(arg1_5.id)
			end):catch(function(arg1_6) -- Line 97
				--[[ Upvalues[3]:
					[1]: any_useContext_result1_upvr (copied, readonly)
					[2]: var8_result1_upvr (copied, readonly)
					[3]: SquadPromptType_upvr (copied, readonly)
				]]
				any_useContext_result1_upvr.setSquadPrompt(var8_result1_upvr, {
					hideCancelButton = true;
					promptType = SquadPromptType_upvr.Error;
				})
			end)
		end
	end, dependencyArray_upvr(var7_result1_upvr, arg1.partyAttemptId, arg1.navigateIntoSquadLobby, any_useContext_result1_upvr.createConversation, any_useContext_result1_upvr.setSquadPrompt, any_useContext_result1_upvr.squadLocation, any_useContext_result1_upvr.fireSquadAnalytics, var8_result1_upvr))
	if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		-- KONSTANTWARNING: GOTO [114] #97
	end
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [113] 96. Error Block 23 start (CF ANALYSIS FAILED)
	local var55
	local module = {
		onMultiInvite = React_upvr.useCallback(function(arg1_7) -- Line 118
			--[[ Upvalues[13]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: useCurrentSquadSelector_upvr_result1_upvr (readonly)
				[3]: any_useGetConversationFromId_result1_upvr (readonly)
				[4]: any_useCallback_result1_upvr_2 (readonly)
				[5]: var10_result1_upvr (readonly)
				[6]: var7_result1_upvr (readonly)
				[7]: leaveSquad_upvr (copied, readonly)
				[8]: SquadPromptType_upvr (copied, readonly)
				[9]: any_useContext_result1_upvr (readonly)
				[10]: any_useCallback_result1_upvr (readonly)
				[11]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[12]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (copied, readonly)
				[13]: var30_upvr (readonly)
			]]
			local any_keys_result1_upvr = Cryo_upvr.Dictionary.keys(arg1_7)
			if useCurrentSquadSelector_upvr_result1_upvr and any_useGetConversationFromId_result1_upvr.type == "one_to_one" and #any_keys_result1_upvr == 1 then
				for i, v in ipairs(any_useGetConversationFromId_result1_upvr.participants) do
					if v == any_keys_result1_upvr[1] then
						any_useCallback_result1_upvr_2(var10_result1_upvr)
						return
					end
				end
			end
			if useCurrentSquadSelector_upvr_result1_upvr then
				v = game_GetEngineFeature_result1_upvr
				if v then
					v = any_useContext_result1_upvr
					i = v.squadLocation
				else
					i = nil
				end
				if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
					v = var30_upvr
				else
					v = true
				end
				var7_result1_upvr(leaveSquad_upvr(SquadPromptType_upvr.JoinAnotherSquad, any_useContext_result1_upvr.setSquadPrompt, function() -- Line 139
					--[[ Upvalues[2]:
						[1]: any_useCallback_result1_upvr (copied, readonly)
						[2]: any_keys_result1_upvr (readonly)
					]]
					any_useCallback_result1_upvr(any_keys_result1_upvr)
				end, i, v))
			else
				any_useCallback_result1_upvr(any_keys_result1_upvr)
			end
		end, dependencyArray_upvr(useCurrentSquadSelector_upvr_result1_upvr, var7_result1_upvr, any_useCallback_result1_upvr, any_useGetConversationFromId_result1_upvr, var10_result1_upvr, arg1.navigateIntoSquadLobby, any_useContext_result1_upvr.setSquadPrompt, any_useContext_result1_upvr.squadLocation, nil));
	}
	var55 = useLocalization_upvr({
		startPartyText = "Feature.Squads.Action.Start";
	}).startPartyText
	module.buttonText = var55
	if useLocalUserId_upvr_result1 and useLocalUserId_upvr_result1 ~= "" then
		var55 = {}
		var55[1] = useLocalUserId_upvr_result1
	else
		var55 = nil
	end
	module.participants = var55
	module.partyStartedRef = any_useRef_result1_upvr
	var55 = React_upvr.useMemo
	var55 = var55(function() -- Line 168
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return {
			partyAttemptId = arg1.partyAttemptId;
			selectionPageType = "QuickStartInvite";
		}
	end, {arg1.partyAttemptId})
	module.analyticsInfo = var55
	do
		return React_upvr.createElement(SquadInviteFriends_upvr, module)
	end
	-- KONSTANTERROR: [113] 96. Error Block 23 end (CF ANALYSIS FAILED)
end