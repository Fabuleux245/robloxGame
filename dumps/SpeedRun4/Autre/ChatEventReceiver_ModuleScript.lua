-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:01
-- Luau version 6, Types version 3
-- Time taken: 0.019179 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local any_new_result1_upvr = require(AppChat.Logger):new("AppChat.Realtime")
local function chunkAndLogString_upvr(arg1) -- Line 58, Named "chunkAndLogString"
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	local tbl_6 = {}
	for i = 1, #arg1, 800 do
		table.insert(tbl_6, arg1:sub(i, i + 800 - 1))
	end
	for _, v in tbl_6 do
		any_new_result1_upvr:debug(v)
	end
end
local tbl_4_upvr = {
	handlesAppShellNotifications = true;
}
local useEffect_upvr = React.useEffect
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local useCallback_upvr = React.useCallback
local Cryo_upvr = require(Parent.Cryo)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useIsChatEnabled_upvr = require(AppChat.Hooks.useIsChatEnabled)
local useIsGroupChatEnabled_upvr = require(AppChat.Hooks.useIsGroupChatEnabled)
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local ChangedParticipants_upvr = require(AppChat.Conversations.Actions.ChangedParticipants)
local fetchChatMetadata_upvr = require(AppChat.Conversations.Thunks.fetchChatMetadata)
local fetchLatestConversationDetails_upvr = require(AppChat.Conversations.Thunks.fetchLatestConversationDetails)
local getAllFriendsAsync_upvr = require(AppChat.Conversations.Thunks.getAllFriendsAsync)
local getAllUserPresences_upvr = require(AppChat.Conversations.Thunks.getAllUserPresences)
local getNewMessages_upvr = require(AppChat.Components.ChatConversation.Messages).Thunks.getNewMessages
local RoduxAliases_upvr = require(AppChat.Http.RoduxAliases)
local ReceivedUserTyping_upvr = require(AppChat.Conversations.Actions.ReceivedUserTyping)
local paginateAndRefreshConversations_upvr = require(AppChat.Conversations.Thunks.paginateAndRefreshConversations)
local RemovedConversation_upvr = require(AppChat.Conversations.Actions.RemovedConversation)
local RenamedGroupConversation_upvr = require(AppChat.Conversations.Actions.RenamedGroupConversation)
local SetConnectionState_upvr = require(AppChat.Actions.SetConnectionState)
local useRef_upvr = React.useRef
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local FormFactor_upvr = require(Parent.FormFactor).Enums.FormFactor
local FriendshipDestroyed_upvr = require(AppChat.Actions.FriendshipDestroyed)
local Conversation_upvr = require(AppChat.Models.Conversation)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ChatEventReceiverChannelTypeAllowlist", false)
local CommunicationChannelsTypes_upvr = require(script.Parent.CommunicationChannelsTypes)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local FriendConversationCreated_upvr = require(AppChat.Conversations.Actions.FriendConversationCreated)
local useMemo_upvr = React.useMemo
local getFFlagDebugUnfilteredThreads_upvr = require(Parent.SharedFlags).getFFlagDebugUnfilteredThreads
local multiGetConversationDetails_upvr = require(AppChat.Conversations.Thunks.multiGetConversationDetails)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local getUnfilteredThreadsEligibility_upvr = require(AppChat.Conversations.Thunks.getUnfilteredThreadsEligibility)
local FFlagAppChatHandleDownAging_upvr = require(AppChat.Flags.FFlagAppChatHandleDownAging)
function ChatEventReceiver(arg1) -- Line 81
	--[[ Upvalues[42]:
		[1]: useEffect_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: useLocalUserId_upvr (readonly)
		[7]: useIsChatEnabled_upvr (readonly)
		[8]: useIsGroupChatEnabled_upvr (readonly)
		[9]: useIsInExperience_upvr (readonly)
		[10]: useDispatch_upvr (readonly)
		[11]: ChangedParticipants_upvr (readonly)
		[12]: fetchChatMetadata_upvr (readonly)
		[13]: fetchLatestConversationDetails_upvr (readonly)
		[14]: getAllFriendsAsync_upvr (readonly)
		[15]: getAllUserPresences_upvr (readonly)
		[16]: getNewMessages_upvr (readonly)
		[17]: RoduxAliases_upvr (readonly)
		[18]: ReceivedUserTyping_upvr (readonly)
		[19]: paginateAndRefreshConversations_upvr (readonly)
		[20]: RemovedConversation_upvr (readonly)
		[21]: RenamedGroupConversation_upvr (readonly)
		[22]: SetConnectionState_upvr (readonly)
		[23]: tbl_4_upvr (readonly)
		[24]: useRef_upvr (readonly)
		[25]: useLocalization_upvr (readonly)
		[26]: dependencyArray_upvr (readonly)
		[27]: RoactNavigation_upvr (readonly)
		[28]: EnumScreens_upvr (readonly)
		[29]: FormFactor_upvr (readonly)
		[30]: FriendshipDestroyed_upvr (readonly)
		[31]: Conversation_upvr (readonly)
		[32]: game_DefineFastFlag_result1_upvr (readonly)
		[33]: CommunicationChannelsTypes_upvr (readonly)
		[34]: ConversationChannels_upvr (readonly)
		[35]: FriendConversationCreated_upvr (readonly)
		[36]: useMemo_upvr (readonly)
		[37]: getFFlagDebugUnfilteredThreads_upvr (readonly)
		[38]: chunkAndLogString_upvr (readonly)
		[39]: multiGetConversationDetails_upvr (readonly)
		[40]: AppChatNetworking_upvr (readonly)
		[41]: getUnfilteredThreadsEligibility_upvr (readonly)
		[42]: FFlagAppChatHandleDownAging_upvr (readonly)
	]]
	useEffect_upvr(function() -- Line 82
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (copied, readonly)
		]]
		any_new_result1_upvr:info("ChatEventReceiver mounted")
		return function() -- Line 84
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:info("ChatEventReceiver unmounted")
		end
	end, {})
	local var15_result1_upvr = useSelector_upvr(useCallback_upvr(function(arg1_2) -- Line 90
		return arg1_2.ChatAppReducer.AppLoaded
	end, {}))
	local var15_result1_upvr_2 = useSelector_upvr(useCallback_upvr(function(arg1_3) -- Line 93
		return arg1_3.ChatAppReducer.Conversations
	end, {}))
	local var15_result1_upvr_3 = useSelector_upvr(useCallback_upvr(function(arg1_4) -- Line 96
		return arg1_4.FormFactor
	end, {}))
	local any_isEmpty_result1_upvr = Cryo_upvr.isEmpty(var15_result1_upvr_2)
	local useLocalUserId_upvr_result1_upvr = useLocalUserId_upvr()
	local var19_result1_upvr = useIsChatEnabled_upvr()
	local var20_result1_upvr = useIsGroupChatEnabled_upvr()
	local useIsInExperience_upvr_result1_upvr = useIsInExperience_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local function var70(arg1_7) -- Line 117
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: fetchLatestConversationDetails_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(fetchLatestConversationDetails_upvr(arg1_7))
	end
	local function _(arg1_9, arg2) -- Line 131
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: RoduxAliases_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(RoduxAliases_upvr.Actions.AliasUpdated(arg1_9, arg2))
	end
	local function var77() -- Line 138
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: paginateAndRefreshConversations_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(paginateAndRefreshConversations_upvr())
	end
	local function _(arg1_13) -- Line 148
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: SetConnectionState_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(SetConnectionState_upvr(arg1_13))
	end
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_4_upvr, arg1)
	local robloxEventReceiver_upvr = any_join_result1_upvr.robloxEventReceiver
	local useRef_upvr_result1_upvr = useRef_upvr({})
	local var35_result1_upvr = useRef_upvr(Enum.ConnectionState.Connected)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		networkErrorText = "Feature.Toast.NetworkingError.SomethingIsWrong";
		removedFromConversationToastTitle = "Feature.Chat.Message.RemovedFromConversation";
	})
	local networkErrorText_upvr = useLocalization_upvr_result1.networkErrorText
	local removedFromConversationToastTitle_upvr = useLocalization_upvr_result1.removedFromConversationToastTitle
	local useCallback_upvr_result1_upvr = useCallback_upvr(function(arg1_14, arg2) -- Line 165
		--[[ Upvalues[1]:
			[1]: useRef_upvr_result1_upvr (readonly)
		]]
		assert(useRef_upvr_result1_upvr.current, "table")
		useRef_upvr_result1_upvr.current[arg1_14] = arg2
	end, dependencyArray_upvr(useRef_upvr_result1_upvr.current))
	useEffect_upvr(function() -- Line 186
		--[[ Upvalues[17]:
			[1]: robloxEventReceiver_upvr (readonly)
			[2]: useCallback_upvr_result1_upvr (readonly)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: useDispatch_upvr_result1_upvr (readonly)
			[5]: RemovedConversation_upvr (copied, readonly)
			[6]: any_join_result1_upvr (readonly)
			[7]: RoactNavigation_upvr (copied, readonly)
			[8]: var15_result1_upvr_3 (readonly)
			[9]: FormFactor_upvr (copied, readonly)
			[10]: EnumScreens_upvr (copied, readonly)
			[11]: removedFromConversationToastTitle_upvr (readonly)
			[12]: fetchLatestConversationDetails_upvr (copied, readonly)
			[13]: RenamedGroupConversation_upvr (copied, readonly)
			[14]: ChangedParticipants_upvr (copied, readonly)
			[15]: any_isEmpty_result1_upvr (readonly)
			[16]: getNewMessages_upvr (copied, readonly)
			[17]: ReceivedUserTyping_upvr (copied, readonly)
		]]
		local any_observeEvent_result1_upvr_8 = robloxEventReceiver_upvr:observeEvent("ChatNotifications", function(arg1_15, arg2, arg3) -- Line 189
			--[[ Upvalues[16]:
				[1]: useCallback_upvr_result1_upvr (copied, readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: useDispatch_upvr_result1_upvr (copied, readonly)
				[4]: RemovedConversation_upvr (copied, readonly)
				[5]: any_join_result1_upvr (copied, readonly)
				[6]: RoactNavigation_upvr (copied, readonly)
				[7]: var15_result1_upvr_3 (copied, readonly)
				[8]: FormFactor_upvr (copied, readonly)
				[9]: EnumScreens_upvr (copied, readonly)
				[10]: removedFromConversationToastTitle_upvr (copied, readonly)
				[11]: fetchLatestConversationDetails_upvr (copied, readonly)
				[12]: RenamedGroupConversation_upvr (copied, readonly)
				[13]: ChangedParticipants_upvr (copied, readonly)
				[14]: any_isEmpty_result1_upvr (copied, readonly)
				[15]: getNewMessages_upvr (copied, readonly)
				[16]: ReceivedUserTyping_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			useCallback_upvr_result1_upvr("ChatNotifications", arg1_15.SequenceNumber)
			any_new_result1_upvr:info("Received chat notification: {}", arg1_15.Type or arg2)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [17] 14. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [17] 14. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [24] 19. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [24] 19. Error Block 3 end (CF ANALYSIS FAILED)
		end)
		return function() -- Line 285
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr_8 (readonly)
			]]
			if any_observeEvent_result1_upvr_8 and any_observeEvent_result1_upvr_8.disconnect then
				any_observeEvent_result1_upvr_8:disconnect()
			end
		end
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr, useCallback_upvr_result1_upvr, any_join_result1_upvr.activeConversationId, any_join_result1_upvr.rnBypassActionSignal, any_isEmpty_result1_upvr, var15_result1_upvr_3, useSelector_upvr(useCallback_upvr(function(arg1_5) -- Line 99
		return arg1_5.Users
	end, {}))))
	local var100_upvr = useEffect_upvr
	var100_upvr(function() -- Line 302
		--[[ Upvalues[7]:
			[1]: var19_result1_upvr (readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: RoactNavigation_upvr (copied, readonly)
			[5]: var15_result1_upvr_3 (readonly)
			[6]: FormFactor_upvr (copied, readonly)
			[7]: EnumScreens_upvr (copied, readonly)
		]]
		if not var19_result1_upvr and any_join_result1_upvr.activeConversationId then
			local var104
			if any_join_result1_upvr.rnBypassActionSignal then
				any_new_result1_upvr:debug("Chat is disabled for our user, navigating away from active conversation")
				var104 = RoactNavigation_upvr
				local tbl_2 = {}
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var104 = EnumScreens_upvr.EmptyConversation
					return var104
				end
				if var15_result1_upvr_3 ~= FormFactor_upvr.WIDE or not INLINED_2() then
					var104 = EnumScreens_upvr.ChatLanding
				end
				tbl_2.routeName = var104
				any_join_result1_upvr.rnBypassActionSignal:fire(var104.Actions.navigate(tbl_2))
			end
		end
	end, {var19_result1_upvr})
	if any_join_result1_upvr.activeConversationId then
		var100_upvr = var15_result1_upvr_2[any_join_result1_upvr.activeConversationId]
	else
		var100_upvr = nil
	end
	useEffect_upvr(function() -- Line 315
		--[[ Upvalues[8]:
			[1]: var20_result1_upvr (readonly)
			[2]: var100_upvr (readonly)
			[3]: any_join_result1_upvr (readonly)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: RoactNavigation_upvr (copied, readonly)
			[6]: var15_result1_upvr_3 (readonly)
			[7]: FormFactor_upvr (copied, readonly)
			[8]: EnumScreens_upvr (copied, readonly)
		]]
		if not var20_result1_upvr and var100_upvr and any_join_result1_upvr.rnBypassActionSignal then
			local var110
			if var100_upvr.type == "group" then
				any_new_result1_upvr:debug("Group chats are disabled and we are navigated to a group chat. Navigating to ChatLanding")
				var110 = RoactNavigation_upvr
				local tbl_8 = {}
				local function INLINED_4() -- Internal function, doesn't exist in bytecode
					var110 = EnumScreens_upvr.EmptyConversation
					return var110
				end
				if var15_result1_upvr_3 ~= FormFactor_upvr.WIDE or not INLINED_4() then
					var110 = EnumScreens_upvr.ChatLanding
				end
				tbl_8.routeName = var110
				any_join_result1_upvr.rnBypassActionSignal:fire(var110.Actions.navigate(tbl_8))
			end
		end
	end, dependencyArray_upvr(var20_result1_upvr, var100_upvr))
	useEffect_upvr(function() -- Line 331
		--[[ Upvalues[3]:
			[1]: robloxEventReceiver_upvr (readonly)
			[2]: useDispatch_upvr_result1_upvr (readonly)
			[3]: RoduxAliases_upvr (copied, readonly)
		]]
		local any_observeEvent_result1_upvr_7 = robloxEventReceiver_upvr:observeEvent("UserTagChangeNotification", function(arg1_16, arg2) -- Line 332
			--[[ Upvalues[2]:
				[1]: useDispatch_upvr_result1_upvr (copied, readonly)
				[2]: RoduxAliases_upvr (copied, readonly)
			]]
			if arg1_16.Type == "UserTagUpdate" then
				useDispatch_upvr_result1_upvr(RoduxAliases_upvr.Actions.AliasUpdated(tostring(arg1_16.UserId), arg1_16.NewAlias))
			end
		end)
		return function() -- Line 338
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr_7 (readonly)
			]]
			if any_observeEvent_result1_upvr_7 and any_observeEvent_result1_upvr_7.disconnect then
				any_observeEvent_result1_upvr_7:disconnect()
			end
		end
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	useEffect_upvr(function() -- Line 346
		--[[ Upvalues[14]:
			[1]: robloxEventReceiver_upvr (readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: paginateAndRefreshConversations_upvr (copied, readonly)
			[5]: useLocalUserId_upvr_result1_upvr (readonly)
			[6]: FriendshipDestroyed_upvr (copied, readonly)
			[7]: var100_upvr (readonly)
			[8]: Conversation_upvr (copied, readonly)
			[9]: Cryo_upvr (copied, readonly)
			[10]: var15_result1_upvr_3 (readonly)
			[11]: FormFactor_upvr (copied, readonly)
			[12]: EnumScreens_upvr (copied, readonly)
			[13]: any_join_result1_upvr (readonly)
			[14]: RoactNavigation_upvr (copied, readonly)
		]]
		local any_observeEvent_result1_upvr_6 = robloxEventReceiver_upvr:observeEvent("FriendshipNotifications", function(arg1_17, arg2) -- Line 347
			--[[ Upvalues[13]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: useDispatch_upvr_result1_upvr (copied, readonly)
				[3]: paginateAndRefreshConversations_upvr (copied, readonly)
				[4]: useLocalUserId_upvr_result1_upvr (copied, readonly)
				[5]: FriendshipDestroyed_upvr (copied, readonly)
				[6]: var100_upvr (copied, readonly)
				[7]: Conversation_upvr (copied, readonly)
				[8]: Cryo_upvr (copied, readonly)
				[9]: var15_result1_upvr_3 (copied, readonly)
				[10]: FormFactor_upvr (copied, readonly)
				[11]: EnumScreens_upvr (copied, readonly)
				[12]: any_join_result1_upvr (copied, readonly)
				[13]: RoactNavigation_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local Type = arg1_17.Type
			any_new_result1_upvr:info("Received friendship notification: {}", Type)
			if Type == "FriendshipCreated" then
				useDispatch_upvr_result1_upvr(paginateAndRefreshConversations_upvr())
				do
					return
				end
				local var127_upvw
			end
			if Type == "FriendshipDestroyed" then
				var127_upvw = nil
				local var128
				if var128 then
					var128 = tostring(arg1_17.EventArgs.UserId1)
					local tostring_result1 = tostring(arg1_17.EventArgs.UserId2)
					if var128 == useLocalUserId_upvr_result1_upvr then
						var128 = "localUserId"
						var127_upvw = tostring_result1
					end
					if tostring_result1 == useLocalUserId_upvr_result1_upvr then
						var127_upvw = var128
					end
					useDispatch_upvr_result1_upvr(FriendshipDestroyed_upvr({
						userId1 = var128;
						userId2 = "localUserId";
					}))
				end
				if var100_upvr and var100_upvr.source == "friends" and var100_upvr.conversationType == Conversation_upvr.Type.ONE_TO_ONE_CONVERSATION then
					if Cryo_upvr.List.findWhere(var100_upvr.participants, function(arg1_19) -- Line 379
						--[[ Upvalues[1]:
							[1]: var127_upvw (read and write)
						]]
						local var132
						if arg1_19 ~= var127_upvw then
							var132 = false
						else
							var132 = true
						end
						return var132
					end) then
						if var15_result1_upvr_3 == FormFactor_upvr.WIDE then
						else
						end
						any_join_result1_upvr.rnBypassActionSignal:fire(RoactNavigation_upvr.Actions.navigate({
							routeName = EnumScreens_upvr.ChatLanding;
						}))
					end
				end
			end
		end)
		return function() -- Line 393
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr_6 (readonly)
			]]
			if any_observeEvent_result1_upvr_6 and any_observeEvent_result1_upvr_6.disconnect then
				any_observeEvent_result1_upvr_6:disconnect()
			end
		end
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr, var77, useLocalUserId_upvr_result1_upvr, var15_result1_upvr_3, var100_upvr, any_join_result1_upvr.rnBypassActionSignal))
	useEffect_upvr(function() -- Line 410
		--[[ Upvalues[8]:
			[1]: robloxEventReceiver_upvr (readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: RemovedConversation_upvr (copied, readonly)
			[5]: fetchLatestConversationDetails_upvr (copied, readonly)
			[6]: any_join_result1_upvr (readonly)
			[7]: RoactNavigation_upvr (copied, readonly)
			[8]: EnumScreens_upvr (copied, readonly)
		]]
		local any_observeEvent_result1_upvr_5 = robloxEventReceiver_upvr:observeEvent("ChatMigration", function(arg1_20, arg2) -- Line 413
			--[[ Upvalues[7]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: useDispatch_upvr_result1_upvr (copied, readonly)
				[3]: RemovedConversation_upvr (copied, readonly)
				[4]: fetchLatestConversationDetails_upvr (copied, readonly)
				[5]: any_join_result1_upvr (copied, readonly)
				[6]: RoactNavigation_upvr (copied, readonly)
				[7]: EnumScreens_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
			local Type_upvr = arg1_20.Type
			any_new_result1_upvr:info("Received chat migration notification: {}", Type_upvr)
			local var139
			if Type_upvr == "ConversationBackfilled" then
				var139 = arg1_20.ConversationId
				-- KONSTANTWARNING: GOTO [35] #26
			end
			-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [17] 13. Error Block 19 start (CF ANALYSIS FAILED)
			if Type_upvr == "ConversationReset" then
				var139 = arg1_20.ChannelId
				local ConversationId = arg1_20.ConversationId
			else
				any_new_result1_upvr:warning(`ChatEventReceiver: unknown notification {Type_upvr}`)
				return
			end
			useDispatch_upvr_result1_upvr(RemovedConversation_upvr(var139))
			useDispatch_upvr_result1_upvr(fetchLatestConversationDetails_upvr(ConversationId)):catch(function(arg1_21) -- Line 431
				--[[ Upvalues[2]:
					[1]: any_new_result1_upvr (copied, readonly)
					[2]: Type_upvr (readonly)
				]]
				any_new_result1_upvr:warning(`NetworkingChat failure in RobloxEventReceiver->{Type_upvr}, Status: {tostring(arg1_21)}`)
			end)
			if any_join_result1_upvr.activeConversationId and var139 and tostring(any_join_result1_upvr.activeConversationId) == var139 then
				if any_join_result1_upvr.rnBypassActionSignal then
					any_join_result1_upvr.rnBypassActionSignal:fire(RoactNavigation_upvr.Actions.navigate({
						routeName = EnumScreens_upvr.ChatConversation;
						params = {
							conversationId = ConversationId;
						};
					}))
				end
			end
			-- KONSTANTERROR: [17] 13. Error Block 19 end (CF ANALYSIS FAILED)
		end)
		return function() -- Line 453
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr_5 (readonly)
			]]
			if any_observeEvent_result1_upvr_5 and any_observeEvent_result1_upvr_5.disconnect then
				any_observeEvent_result1_upvr_5:disconnect()
			end
		end
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr, any_join_result1_upvr.activeConversationId, any_join_result1_upvr.rnBypassActionSignal, var70))
	local var16_result1_upvr = useCallback_upvr(function() -- Line 467
		--[[ Upvalues[7]:
			[1]: var15_result1_upvr (readonly)
			[2]: useDispatch_upvr_result1_upvr (readonly)
			[3]: fetchChatMetadata_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: paginateAndRefreshConversations_upvr (copied, readonly)
			[6]: getAllFriendsAsync_upvr (copied, readonly)
			[7]: getAllUserPresences_upvr (copied, readonly)
		]]
		if var15_result1_upvr then
			useDispatch_upvr_result1_upvr(fetchChatMetadata_upvr()):andThen(function(arg1_22) -- Line 469
				--[[ Upvalues[5]:
					[1]: any_new_result1_upvr (copied, readonly)
					[2]: useDispatch_upvr_result1_upvr (copied, readonly)
					[3]: paginateAndRefreshConversations_upvr (copied, readonly)
					[4]: getAllFriendsAsync_upvr (copied, readonly)
					[5]: getAllUserPresences_upvr (copied, readonly)
				]]
				if arg1_22 then
					any_new_result1_upvr:trace("Chat is enabled for our user, refreshing conversations")
					useDispatch_upvr_result1_upvr(paginateAndRefreshConversations_upvr())
					task.spawn(function() -- Line 474
						--[[ Upvalues[2]:
							[1]: useDispatch_upvr_result1_upvr (copied, readonly)
							[2]: getAllFriendsAsync_upvr (copied, readonly)
						]]
						useDispatch_upvr_result1_upvr(getAllFriendsAsync_upvr())
					end)
					spawn(function() -- Line 124
						--[[ Upvalues[2]:
							[1]: useDispatch_upvr_result1_upvr (copied, readonly)
							[2]: getAllUserPresences_upvr (copied, readonly)
						]]
						useDispatch_upvr_result1_upvr(getAllUserPresences_upvr())
					end)
				else
					any_new_result1_upvr:trace("Chat is disabled for our user, no need to refresh conversations")
				end
			end)
		end
	end, dependencyArray_upvr(var15_result1_upvr, var77, function() -- Line 120
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: getAllFriendsAsync_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(getAllFriendsAsync_upvr())
	end, function() -- Line 123
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: getAllUserPresences_upvr (copied, readonly)
		]]
		spawn(function() -- Line 124
			--[[ Upvalues[2]:
				[1]: useDispatch_upvr_result1_upvr (copied, readonly)
				[2]: getAllUserPresences_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr(getAllUserPresences_upvr())
		end)
	end, function() -- Line 113
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: fetchChatMetadata_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(fetchChatMetadata_upvr())
	end))
	useEffect_upvr(function() -- Line 485
		--[[ Upvalues[8]:
			[1]: robloxEventReceiver_upvr (readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: SetConnectionState_upvr (copied, readonly)
			[5]: var35_result1_upvr (readonly)
			[6]: useRef_upvr_result1_upvr (readonly)
			[7]: var15_result1_upvr (readonly)
			[8]: var16_result1_upvr (readonly)
		]]
		local any_observeEvent_result1_upvr = robloxEventReceiver_upvr:observeEvent("signalR", function(arg1_23, arg2, arg3) -- Line 488
			--[[ Upvalues[7]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: useDispatch_upvr_result1_upvr (copied, readonly)
				[3]: SetConnectionState_upvr (copied, readonly)
				[4]: var35_result1_upvr (copied, readonly)
				[5]: useRef_upvr_result1_upvr (copied, readonly)
				[6]: var15_result1_upvr (copied, readonly)
				[7]: var16_result1_upvr (copied, readonly)
			]]
			local tostring_result1_2 = tostring(arg1_23)
			any_new_result1_upvr:info("SignalR connection state transitioned to {}", tostring_result1_2)
			useDispatch_upvr_result1_upvr(SetConnectionState_upvr(arg1_23))
			var35_result1_upvr.current = arg1_23
			if arg1_23 == Enum.ConnectionState.Connected and arg3 and (useRef_upvr_result1_upvr.current == nil or useRef_upvr_result1_upvr.current.ChatNotifications ~= arg3.ChatNotifications or useRef_upvr_result1_upvr.current.CommunicationChannels ~= arg3.CommunicationChannels) then
				if var15_result1_upvr then
					tostring_result1_2 = "loaded"
				else
					tostring_result1_2 = "unloaded"
				end
				any_new_result1_upvr:trace("We missed some messages while we were disconnected. The chat app was previously {}", tostring_result1_2)
				var16_result1_upvr()
			end
		end)
		return function() -- Line 511
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr (readonly)
			]]
			if any_observeEvent_result1_upvr and any_observeEvent_result1_upvr.disconnect then
				any_observeEvent_result1_upvr:disconnect()
			end
		end
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr, var35_result1_upvr, useRef_upvr_result1_upvr, useCallback_upvr(function() -- Line 170
		--[[ Upvalues[4]:
			[1]: any_join_result1_upvr (readonly)
			[2]: RoactNavigation_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
			[4]: networkErrorText_upvr (readonly)
		]]
		if any_join_result1_upvr.rnBypassActionSignal then
			any_join_result1_upvr.rnBypassActionSignal:fire(RoactNavigation_upvr.Actions.navigate({
				routeName = EnumScreens_upvr.RoactChatToast;
				params = {
					toastProps = {
						toastContent = {
							toastTitle = networkErrorText_upvr;
						};
					};
				};
			}))
		end
	end, dependencyArray_upvr(any_join_result1_upvr.rnBypassActionSignal, networkErrorText_upvr)), var15_result1_upvr))
	useEffect_upvr(function() -- Line 519
		--[[ Upvalues[22]:
			[1]: robloxEventReceiver_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[3]: CommunicationChannelsTypes_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: useCallback_upvr_result1_upvr (readonly)
			[6]: useDispatch_upvr_result1_upvr (readonly)
			[7]: RemovedConversation_upvr (copied, readonly)
			[8]: any_join_result1_upvr (readonly)
			[9]: var15_result1_upvr_3 (readonly)
			[10]: FormFactor_upvr (copied, readonly)
			[11]: EnumScreens_upvr (copied, readonly)
			[12]: RoactNavigation_upvr (copied, readonly)
			[13]: useLocalUserId_upvr_result1_upvr (readonly)
			[14]: removedFromConversationToastTitle_upvr (readonly)
			[15]: fetchLatestConversationDetails_upvr (copied, readonly)
			[16]: RenamedGroupConversation_upvr (copied, readonly)
			[17]: ChangedParticipants_upvr (copied, readonly)
			[18]: any_isEmpty_result1_upvr (readonly)
			[19]: ConversationChannels_upvr (copied, readonly)
			[20]: FriendConversationCreated_upvr (copied, readonly)
			[21]: getNewMessages_upvr (copied, readonly)
			[22]: ReceivedUserTyping_upvr (copied, readonly)
		]]
		local any_observeEvent_result1_upvr_3 = robloxEventReceiver_upvr:observeEvent("CommunicationChannels", function(arg1_24, arg2) -- Line 522
			--[[ Upvalues[21]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: CommunicationChannelsTypes_upvr (copied, readonly)
				[3]: any_new_result1_upvr (copied, readonly)
				[4]: useCallback_upvr_result1_upvr (copied, readonly)
				[5]: useDispatch_upvr_result1_upvr (copied, readonly)
				[6]: RemovedConversation_upvr (copied, readonly)
				[7]: any_join_result1_upvr (copied, readonly)
				[8]: var15_result1_upvr_3 (copied, readonly)
				[9]: FormFactor_upvr (copied, readonly)
				[10]: EnumScreens_upvr (copied, readonly)
				[11]: RoactNavigation_upvr (copied, readonly)
				[12]: useLocalUserId_upvr_result1_upvr (copied, readonly)
				[13]: removedFromConversationToastTitle_upvr (copied, readonly)
				[14]: fetchLatestConversationDetails_upvr (copied, readonly)
				[15]: RenamedGroupConversation_upvr (copied, readonly)
				[16]: ChangedParticipants_upvr (copied, readonly)
				[17]: any_isEmpty_result1_upvr (copied, readonly)
				[18]: ConversationChannels_upvr (copied, readonly)
				[19]: FriendConversationCreated_upvr (copied, readonly)
				[20]: getNewMessages_upvr (copied, readonly)
				[21]: ReceivedUserTyping_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
			do
				return
			end
			-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 4. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 4. Error Block 3 end (CF ANALYSIS FAILED)
		end)
		return function() -- Line 657
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr_3 (readonly)
			]]
			if any_observeEvent_result1_upvr_3 and any_observeEvent_result1_upvr_3.disconnect then
				any_observeEvent_result1_upvr_3:disconnect()
			end
		end
	end, dependencyArray_upvr(useLocalUserId_upvr_result1_upvr, robloxEventReceiver_upvr, useCallback_upvr_result1_upvr, function(arg1_11) -- Line 142
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: RemovedConversation_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(RemovedConversation_upvr(arg1_11))
	end, any_join_result1_upvr.activeConversationId, any_join_result1_upvr.rnBypassActionSignal, removedFromConversationToastTitle_upvr, var70, function(arg1_12, arg2, arg3, arg4) -- Line 145
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: RenamedGroupConversation_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(RenamedGroupConversation_upvr(arg1_12, arg2, arg3, arg4))
	end, function(arg1_6, arg2, arg3, arg4) -- Line 110
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ChangedParticipants_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(ChangedParticipants_upvr(arg1_6, arg2, arg3, arg4))
	end, any_isEmpty_result1_upvr, function(arg1_8, arg2, arg3) -- Line 128
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: getNewMessages_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(getNewMessages_upvr(arg1_8, arg2, arg3))
	end, function(arg1_10, arg2) -- Line 134
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ReceivedUserTyping_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(ReceivedUserTyping_upvr(arg1_10, arg2))
	end, var16_result1_upvr))
	local useMemo_upvr_result1_upvr = useMemo_upvr(function() -- Line 681
		--[[ Upvalues[2]:
			[1]: var15_result1_upvr_2 (readonly)
			[2]: Cryo_upvr (copied, readonly)
		]]
		if not var15_result1_upvr_2 then
			return {}
		end
		return Cryo_upvr.List.filterMap(Cryo_upvr.Dictionary.values(var15_result1_upvr_2), function(arg1_25) -- Line 686
			if arg1_25 and arg1_25.id and arg1_25.source ~= "friends" then
				return arg1_25.id
			end
			return nil
		end)
	end, dependencyArray_upvr(var15_result1_upvr_2))
	useEffect_upvr(function() -- Line 696
		--[[ Upvalues[11]:
			[1]: robloxEventReceiver_upvr (readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: getFFlagDebugUnfilteredThreads_upvr (copied, readonly)
			[4]: chunkAndLogString_upvr (copied, readonly)
			[5]: Cryo_upvr (copied, readonly)
			[6]: useMemo_upvr_result1_upvr (readonly)
			[7]: useDispatch_upvr_result1_upvr (readonly)
			[8]: multiGetConversationDetails_upvr (copied, readonly)
			[9]: any_join_result1_upvr (readonly)
			[10]: AppChatNetworking_upvr (copied, readonly)
			[11]: useIsInExperience_upvr_result1_upvr (readonly)
		]]
		local any_observeEvent_result1_upvr_4 = robloxEventReceiver_upvr:observeEvent("ChatModerationTypeEligibility", function(arg1_26, arg2) -- Line 699
			--[[ Upvalues[10]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: getFFlagDebugUnfilteredThreads_upvr (copied, readonly)
				[3]: chunkAndLogString_upvr (copied, readonly)
				[4]: Cryo_upvr (copied, readonly)
				[5]: useMemo_upvr_result1_upvr (copied, readonly)
				[6]: useDispatch_upvr_result1_upvr (copied, readonly)
				[7]: multiGetConversationDetails_upvr (copied, readonly)
				[8]: any_join_result1_upvr (copied, readonly)
				[9]: AppChatNetworking_upvr (copied, readonly)
				[10]: useIsInExperience_upvr_result1_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			any_new_result1_upvr:debug("Received ChatModerationTypeEligibility notification")
			local channels_inspected = arg1_26.channels_inspected
			if not channels_inspected or #channels_inspected == 0 then
			else
				if getFFlagDebugUnfilteredThreads_upvr() then
					for _, _ in channels_inspected do
						local var182
					end
					chunkAndLogString_upvr(`RTN CONVERSATIONS INSPECTED{var182}`)
				end
				local any_filter_result1 = Cryo_upvr.List.filter(channels_inspected, function(arg1_27) -- Line 713
					--[[ Upvalues[1]:
						[1]: useMemo_upvr_result1_upvr (copied, readonly)
					]]
					return table.find(useMemo_upvr_result1_upvr, arg1_27)
				end)
				if #any_filter_result1 == 0 then
					any_new_result1_upvr:debug("No filtered existing conversation IDs found in ChatModerationTypeEligibility notification")
					return
				end
				local var185
				if var185 then
					var185 = ""
					for _, v_3 in any_filter_result1 do
						var185 = `{var185}, {v_3}`
					end
					chunkAndLogString_upvr(`RTN FILTERED CONVERSATIONS{var185}`)
				end
				useDispatch_upvr_result1_upvr(multiGetConversationDetails_upvr(any_filter_result1)):catch(function(arg1_28) -- Line 729
					--[[ Upvalues[1]:
						[1]: any_new_result1_upvr (copied, readonly)
					]]
					any_new_result1_upvr:warning("NetworkingChat failure in ".."ChatEventReceiver->ChatModerationTypeEligibility->MultiGetConversationDetails, Status: "..tostring(arg1_28))
				end)
				if not any_join_result1_upvr.activeConversationId then return end
				if table.find(channels_inspected, any_join_result1_upvr.activeConversationId) then
					useDispatch_upvr_result1_upvr(AppChatNetworking_upvr.rodux.GetConversationsParticipantsMetadata.API({any_join_result1_upvr.activeConversationId})):catch(function(arg1_29) -- Line 743
						--[[ Upvalues[1]:
							[1]: any_new_result1_upvr (copied, readonly)
						]]
						any_new_result1_upvr:warning("NetworkingChat failure in ".."ChatEventReceiver->ChatModerationTypeEligibility->GetConversationsParticipantsMetadata, Status: "..tostring(arg1_29))
					end)
					useDispatch_upvr_result1_upvr(AppChatNetworking_upvr.rodux.GetConversationTopModal.API(any_join_result1_upvr.activeConversationId, useIsInExperience_upvr_result1_upvr)):catch(function(arg1_30) -- Line 752
						--[[ Upvalues[1]:
							[1]: any_new_result1_upvr (copied, readonly)
						]]
						any_new_result1_upvr:warning("NetworkingChat failure in ".."ChatEventReceiver->ChatModerationTypeEligibility->GetConversationTopModal, Status: "..tostring(arg1_30))
					end)
				end
			end
		end)
		return function() -- Line 763
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr_4 (readonly)
			]]
			if any_observeEvent_result1_upvr_4 and any_observeEvent_result1_upvr_4.disconnect then
				any_observeEvent_result1_upvr_4:disconnect()
			end
		end
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr, any_join_result1_upvr.activeConversationId, useMemo_upvr_result1_upvr))
	useEffect_upvr(function() -- Line 770
		--[[ Upvalues[7]:
			[1]: robloxEventReceiver_upvr (readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: getUnfilteredThreadsEligibility_upvr (copied, readonly)
			[5]: useIsInExperience_upvr_result1_upvr (readonly)
			[6]: FFlagAppChatHandleDownAging_upvr (copied, readonly)
			[7]: fetchChatMetadata_upvr (copied, readonly)
		]]
		local any_observeEvent_result1_upvr_2 = robloxEventReceiver_upvr:observeEvent("EligibilityStatusChanged", function(arg1_31, arg2) -- Line 773
			--[[ Upvalues[6]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: useDispatch_upvr_result1_upvr (copied, readonly)
				[3]: getUnfilteredThreadsEligibility_upvr (copied, readonly)
				[4]: useIsInExperience_upvr_result1_upvr (copied, readonly)
				[5]: FFlagAppChatHandleDownAging_upvr (copied, readonly)
				[6]: fetchChatMetadata_upvr (copied, readonly)
			]]
			any_new_result1_upvr:info("Received EligibilityStatusChanged notification")
			useDispatch_upvr_result1_upvr(getUnfilteredThreadsEligibility_upvr(useIsInExperience_upvr_result1_upvr))
			if FFlagAppChatHandleDownAging_upvr then
				useDispatch_upvr_result1_upvr(fetchChatMetadata_upvr())
			end
		end)
		return function() -- Line 783
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr_2 (readonly)
			]]
			if any_observeEvent_result1_upvr_2 and any_observeEvent_result1_upvr_2.disconnect then
				any_observeEvent_result1_upvr_2:disconnect()
			end
		end
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	return {}
end
return ChatEventReceiver