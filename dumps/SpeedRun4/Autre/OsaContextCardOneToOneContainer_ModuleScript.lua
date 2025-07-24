-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:45
-- Luau version 6, Types version 3
-- Time taken: 0.004958 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UserProfiles_upvr = require(Parent.UserProfiles)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useGetOneToOneFriendIdFromConversationId_upvr = require(AppChat.Hooks.useGetOneToOneFriendIdFromConversationId)
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local useChatPagePadding_upvr = require(AppChat.Contexts.ChatPagePadding.useChatPagePadding)
local useUserProfilesFetch_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("AppChatEnableOSAUserDataLoadingFix", false)
local useRecordModalSequenceResponseForConversation_upvr = require(AppChat.Hooks.useRecordModalSequenceResponseForConversation)
local useGetConversationFromId_upvr = require(AppChat.Hooks.useGetConversationFromId)
local useIsGuiInChatVisible_upvr = require(AppChat.Hooks.useIsGuiInChatVisible)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local RoduxNetworking_upvr = require(AppChat.Http.RoduxNetworking)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FFlagAppChatEnableOSAConversationFetchForFriendsPlaceholdersFix", false)
local API_upvr = AppChatNetworking_upvr.rodux.GetConversationDetails.API
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local getUsernameFromId_upvr = UserProfiles_upvr.Selectors.getUsernameFromId
local getCombinedNameFromId_upvr = UserProfiles_upvr.Selectors.getCombinedNameFromId
local getDisplayNameFromId_upvr = UserProfiles_upvr.Selectors.getDisplayNameFromId
local getThumbnailsForUserIds_upvr = require(AppChat.Users.getThumbnailsForUserIds)
local Foundation_upvr = require(Parent.Foundation)
local OsaContextCardOneToOne_upvr = require(AppChat.Components.ChatConversation.ConversationCards.OsaContextCardOneToOne)
return React_upvr.memo(function(arg1) -- Line 38
	--[[ Upvalues[23]:
		[1]: useDispatch_upvr (readonly)
		[2]: useGetOneToOneFriendIdFromConversationId_upvr (readonly)
		[3]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[4]: useChatPagePadding_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useUserProfilesFetch_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[8]: UserProfiles_upvr (readonly)
		[9]: useRecordModalSequenceResponseForConversation_upvr (readonly)
		[10]: useGetConversationFromId_upvr (readonly)
		[11]: AppChatNetworking_upvr (readonly)
		[12]: useIsGuiInChatVisible_upvr (readonly)
		[13]: useSelector_upvr (readonly)
		[14]: RoduxNetworking_upvr (readonly)
		[15]: game_DefineFastFlag_result1_upvr (readonly)
		[16]: API_upvr (readonly)
		[17]: any_new_result1_upvr (readonly)
		[18]: getUsernameFromId_upvr (readonly)
		[19]: getCombinedNameFromId_upvr (readonly)
		[20]: getDisplayNameFromId_upvr (readonly)
		[21]: getThumbnailsForUserIds_upvr (readonly)
		[22]: Foundation_upvr (readonly)
		[23]: OsaContextCardOneToOne_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	local var7_result1_upvr = useDispatch_upvr()
	local var8_result1_upvr = useGetOneToOneFriendIdFromConversationId_upvr(arg1.conversationId)
	local var29_upvr = var8_result1_upvr or ""
	local var30_upvr
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		var8_result1_upvr = useChatPagePadding_upvr()
	else
		var8_result1_upvr = {}
		var8_result1_upvr.left = 12
		var8_result1_upvr.right = 12
	end
	local tbl_2 = {}
	local tbl = {var29_upvr}
	tbl_2.userIds = tbl
	if game_DefineFastFlag_result1_upvr_2 then
		tbl = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds
	else
		tbl = UserProfiles_upvr.Queries.userProfilesDisplayNameAndUsernameByUserIds
	end
	tbl_2.query = tbl
	tbl_2.overrideRetryCount = 4
	local useUserProfilesFetch_upvr_result1_upvr = useUserProfilesFetch_upvr(tbl_2)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local useRecordModalSequenceResponseForConversation_upvr_result1_upvr = useRecordModalSequenceResponseForConversation_upvr(arg1.conversationId)
	var30_upvr = {}
	var30_upvr[1] = var29_upvr
	var30_upvr = arg1.conversationId
	local useGetConversationFromId_upvr_result1_upvr = useGetConversationFromId_upvr(var30_upvr)
	var30_upvr = useGetConversationFromId_upvr_result1_upvr
	if var30_upvr then
		if useGetConversationFromId_upvr_result1_upvr.osaAcknowledgementStatus ~= AppChatNetworking_upvr.Constants.OsaAcknowledgementStatusResponse.Unacknowledged then
			var30_upvr = false
		else
			var30_upvr = true
		end
	end
	local any_useRef_result1 = React_upvr.useRef(nil)
	local tbl_4 = {any_useRef_result1.current}
	if var30_upvr then
		-- KONSTANTWARNING: GOTO [120] #89
	end
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [119] 88. Error Block 35 start (CF ANALYSIS FAILED)
	local var44_upvr = false
	local var16_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 82
		--[[ Upvalues[2]:
			[1]: AppChatNetworking_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return AppChatNetworking_upvr.rodux.RecordModalSequenceResponse.getStatus(arg1_2, arg1.conversationId)
	end)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(nil)
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(nil)
	React_upvr.useEffect(function() -- Line 90
		--[[ Upvalues[13]:
			[1]: var30_upvr (readonly)
			[2]: var44_upvr (readonly)
			[3]: var16_result1_upvr (readonly)
			[4]: RoduxNetworking_upvr (copied, readonly)
			[5]: any_useState_result1_3_upvr (readonly)
			[6]: useRecordModalSequenceResponseForConversation_upvr_result1_upvr (readonly)
			[7]: any_useState_result2_upvr_3 (readonly)
			[8]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[9]: useGetConversationFromId_upvr_result1_upvr (readonly)
			[10]: var7_result1_upvr (readonly)
			[11]: API_upvr (copied, readonly)
			[12]: arg1 (readonly)
			[13]: any_new_result1_upvr (copied, readonly)
		]]
		if var30_upvr and var44_upvr and var16_result1_upvr ~= RoduxNetworking_upvr.Enum.NetworkStatus.Fetching and not any_useState_result1_3_upvr and useRecordModalSequenceResponseForConversation_upvr_result1_upvr then
			useRecordModalSequenceResponseForConversation_upvr_result1_upvr("record_has_seen", "conversation_inline_top_modal", nil, "OsaContextCard"):andThen(function() -- Line 99
				--[[ Upvalues[6]:
					[1]: any_useState_result2_upvr_3 (copied, readonly)
					[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[3]: useGetConversationFromId_upvr_result1_upvr (copied, readonly)
					[4]: var7_result1_upvr (copied, readonly)
					[5]: API_upvr (copied, readonly)
					[6]: arg1 (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				any_useState_result2_upvr_3(true)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [12] 11. Error Block 4 start (CF ANALYSIS FAILED)
				var7_result1_upvr(API_upvr(arg1.conversationId))
				do
					return
				end
				-- KONSTANTERROR: [12] 11. Error Block 4 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [20] 18. Error Block 5 start (CF ANALYSIS FAILED)
				var7_result1_upvr(API_upvr(arg1.conversationId))
				-- KONSTANTERROR: [20] 18. Error Block 5 end (CF ANALYSIS FAILED)
			end):catch(function(arg1_3) -- Line 112
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (copied, readonly)
				]]
				any_new_result1_upvr:error("Error in OsaContextCardOneToOneContainer -> recordModalSequenceResponseForConversation -> record_has_seen: "..tostring(arg1_3))
			end)
		end
	end, {var30_upvr, var44_upvr, var16_result1_upvr, useRecordModalSequenceResponseForConversation_upvr_result1_upvr, any_useState_result1_3_upvr, var7_result1_upvr, arg1.conversationId})
	React_upvr.useEffect(function() -- Line 131
		--[[ Upvalues[8]:
			[1]: useUserProfilesFetch_upvr_result1_upvr (readonly)
			[2]: var29_upvr (readonly)
			[3]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[4]: getUsernameFromId_upvr (copied, readonly)
			[5]: any_useState_result2_upvr (readonly)
			[6]: any_useState_result2_upvr_2 (readonly)
			[7]: getCombinedNameFromId_upvr (copied, readonly)
			[8]: getDisplayNameFromId_upvr (copied, readonly)
		]]
		if useUserProfilesFetch_upvr_result1_upvr.data and var29_upvr then
			if game_DefineFastFlag_result1_upvr_2 then
				local var56 = var29_upvr
				local getUsernameFromId_upvr_result1 = getUsernameFromId_upvr(useUserProfilesFetch_upvr_result1_upvr.data, var56)
				if getUsernameFromId_upvr_result1 then
					var56 = '@'..getUsernameFromId_upvr_result1
				else
					var56 = nil
				end
				any_useState_result2_upvr(var56)
				any_useState_result2_upvr_2(getCombinedNameFromId_upvr(useUserProfilesFetch_upvr_result1_upvr.data, var29_upvr))
				return
			end
			any_useState_result2_upvr(getUsernameFromId_upvr(useUserProfilesFetch_upvr_result1_upvr.data, var29_upvr))
			any_useState_result2_upvr_2(getDisplayNameFromId_upvr(useUserProfilesFetch_upvr_result1_upvr.data, var29_upvr))
		end
	end, {useUserProfilesFetch_upvr_result1_upvr.data, var29_upvr})
	local module = {}
	local tbl_3 = {
		displayName = any_useState_result1_2;
		username = any_useState_result1;
		avatarThumbnail = React_upvr.useMemo(function() -- Line 144
			--[[ Upvalues[2]:
				[1]: getThumbnailsForUserIds_upvr (copied, readonly)
				[2]: var29_upvr (readonly)
			]]
			return getThumbnailsForUserIds_upvr({var29_upvr})[1]
		end, {var29_upvr});
		onAvatarActivated = React_upvr.useCallback(function() -- Line 67
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var29_upvr (readonly)
			]]
			if arg1.openViewProfile then
				arg1.openViewProfile(var29_upvr)
			end
		end, var30_upvr);
	}
	if useUserProfilesFetch_upvr_result1_upvr.error then
	else
	end
	tbl_3.hasError = false
	tbl_3.ref = any_useRef_result1
	module.OsaContextCardOneToOne = React_upvr.createElement(OsaContextCardOneToOne_upvr, tbl_3)
	do
		return React_upvr.createElement(Foundation_upvr.View, {
			tag = "col size-full-0 auto-y align-x-center padding-top-xxlarge padding-bottom-large";
			padding = React_upvr.useMemo(function() -- Line 47
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr (readonly)
				]]
				return {
					left = UDim.new(0, var8_result1_upvr.left);
					right = UDim.new(0, var8_result1_upvr.right);
				}
			end, {var8_result1_upvr.left, var8_result1_upvr.right});
		}, module)
	end
	-- KONSTANTERROR: [119] 88. Error Block 35 end (CF ANALYSIS FAILED)
end)