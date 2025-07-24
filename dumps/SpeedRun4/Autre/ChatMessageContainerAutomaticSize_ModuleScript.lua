-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:42
-- Luau version 6, Types version 3
-- Time taken: 0.025304 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Logger_upvr = require(script.Parent.Logger)
local getFFlagDebugAppChat_upvr = require(AppChat.Flags.getFFlagDebugAppChat)
local tbl_8_upvr = {
	failed = false;
	filteredForReceivers = false;
	Font = Enum.Font.Gotham;
	isIncoming = false;
	isNewSender = false;
	parentWidth = 0;
	messageId = "";
	conversationId = "";
	messageTypePaddingOffset = 0;
	moderated = false;
	messageMaxWidth = 0;
	openViewProfile = function() -- Line 55, Named "openViewProfile"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("openViewProfile was not passed to ChatMessage")
	end;
	renderMessage = function() -- Line 58, Named "renderMessage"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("renderMessage was not passed to ChatMessage")
	end;
	closeKeyboard = function() -- Line 61, Named "closeKeyboard"
	end;
	inputBoxRef = nil;
	viewProfileOnAvatarPressed = true;
	messageDefaultNoticeText = "PLACEHOLDER Not everyone in this chat can see your message.";
	messageModeratedNoticeText = "PLACEHOLDER Your message was moderated and not sent.";
	unknownUserKey = "Feature.Chat.Label.UnknownUser";
	isPending = false;
}
local var6_upvr = false
tbl_8_upvr.unitTestTouchEnabled = var6_upvr
if getFFlagDebugAppChat_upvr() then
	var6_upvr = "TextButton"
else
	var6_upvr = "Frame"
end
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local useChatPagePadding_upvr = require(AppChat.Contexts.ChatPagePadding.useChatPagePadding)
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat.Flags.getFFlagAppChatEnableRepliesUI)
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useGetConversationFromId_upvr = require(AppChat.Hooks.useGetConversationFromId)
local useReplyingToMessageDispatch_upvr = require(AppChat.Components.ChatConversation.MessageInteraction.ReplyingContext.useReplyingToMessageDispatch)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local EnumScreens_upvr = require(AppChat.EnumScreens)
local UserInputService_upvr = game:GetService("UserInputService")
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local ChatMessageContainerConstants_upvr = require(script.Parent.ChatMessageContainerConstants)
local OptionsEnum_upvr = require(AppChat.Components.ChatConversation.MessageInteraction.OptionsEnum)
local setTimeout_upvr = require(Parent.LuauPolyfill).setTimeout
local Conversation_upvr = require(AppChat.Models.Conversation)
local UserProfiles_upvr = require(Parent.UserProfiles)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local TextService_upvr = game:GetService("TextService")
local Options_upvr = require(AppChat.Components.ChatConversation.MessageInteraction.Options)
local FFlagAppChatEnableGroupedMessageBubbles_upvr = require(AppChat.Flags.FFlagAppChatEnableGroupedMessageBubbles)
local AvatarCircle_upvr = require(AppChat.Components.Cells.AvatarCircle)
local ShimmerPanel_upvr = require(Parent.UIBlox).App.Loading.ShimmerPanel
local SystemMessage_upvr = require(script.Parent.SystemMessage)
local NoticeText_upvr = require(script.Parent.NoticeText)
function ChatMessageContainer(arg1) -- Line 74
	--[[ Upvalues[31]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useTokens_upvr (readonly)
		[6]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[7]: useChatPagePadding_upvr (readonly)
		[8]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[9]: useAnalytics_upvr (readonly)
		[10]: useNavigation_upvr (readonly)
		[11]: useGetConversationFromId_upvr (readonly)
		[12]: useReplyingToMessageDispatch_upvr (readonly)
		[13]: useLocalUserId_upvr (readonly)
		[14]: EnumScreens_upvr (readonly)
		[15]: UserInputService_upvr (readonly)
		[16]: EventNames_upvr (readonly)
		[17]: ChatMessageContainerConstants_upvr (readonly)
		[18]: OptionsEnum_upvr (readonly)
		[19]: setTimeout_upvr (readonly)
		[20]: Conversation_upvr (readonly)
		[21]: UserProfiles_upvr (readonly)
		[22]: useLocalization_upvr (readonly)
		[23]: TextService_upvr (readonly)
		[24]: getFFlagDebugAppChat_upvr (readonly)
		[25]: Options_upvr (readonly)
		[26]: FFlagAppChatEnableGroupedMessageBubbles_upvr (readonly)
		[27]: AvatarCircle_upvr (readonly)
		[28]: ShimmerPanel_upvr (readonly)
		[29]: var6_upvr (readonly)
		[30]: SystemMessage_upvr (readonly)
		[31]: NoticeText_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 157 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr_2 = Cryo_upvr.Dictionary.join(tbl_8_upvr, arg1)
	local function _() -- Line 76
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr_2 (readonly)
		]]
		if any_join_result1_upvr_2.viewProfileOnAvatarPressed then
			any_join_result1_upvr_2.openViewProfile(any_join_result1_upvr_2.senderUserId)
		end
	end
	local _ = {any_join_result1_upvr_2.senderUserId}
	local useStyle_upvr_result1_upvr_2 = useStyle_upvr()
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
	else
		local _ = {
			left = 12;
			right = 12;
		}
	end
	local var107_upvw
	-- KONSTANTERROR: [0] 1. Error Block 157 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 54. Error Block 119 start (CF ANALYSIS FAILED)
	local _, any_useState_result2_3 = React_upvr.useState(false)
	local var110_upvw = any_useState_result2_3
	local any_useState_result1_2, any_useState_result2 = React_upvr.useState(false)
	local var113_upvw = any_useState_result2
	local var15_result1_upvw = useNavigation_upvr()
	local useGetConversationFromId_upvr_result1_upvw = useGetConversationFromId_upvr(any_join_result1_upvr_2.conversationId)
	local var116_upvw
	if useGetConversationFromId_upvr_result1_upvw and useGetConversationFromId_upvr_result1_upvw.messages then
		var116_upvw = useGetConversationFromId_upvr_result1_upvw.messages:Get(any_join_result1_upvr_2.messageId)
	end
	local useReplyingToMessageDispatch_upvr_result1_upvw_2 = useReplyingToMessageDispatch_upvr()
	local var14_result1_upvw = useAnalytics_upvr()
	local any_useCallback_result1_upvw_2 = React_upvr.useCallback(function(arg1_12) -- Line 124
		--[[ Upvalues[2]:
			[1]: var14_result1_upvw (read and write)
			[2]: any_join_result1_upvr_2 (readonly)
		]]
		local var120
		if var14_result1_upvw then
			local tbl_13 = {}
			var120 = any_join_result1_upvr_2.conversationId
			tbl_13.conversationId = var120
			var120 = any_join_result1_upvr_2.senderUserId
			tbl_13.targetMessageSenderId = var120
			var120 = any_join_result1_upvr_2.messageId
			tbl_13.targetMessageId = var120
			if any_join_result1_upvr_2.sent then
				var120 = tostring(any_join_result1_upvr_2.sent.dateTime)
			else
				var120 = nil
			end
			tbl_13.targetMessageSentAt = var120
			if any_join_result1_upvr_2.content then
			else
			end
			tbl_13.targetMessageLength = nil
			var14_result1_upvw.fireAnalyticsEvent(arg1_12, tbl_13)
		end
	end, {any_join_result1_upvr_2.conversationId, any_join_result1_upvr_2.senderUserId, any_join_result1_upvr_2.messageId, any_join_result1_upvr_2.sent, any_join_result1_upvr_2.content})
	local any_useCallback_result1_upvw = React_upvr.useCallback(function() -- Line 143
		--[[ Upvalues[3]:
			[1]: var15_result1_upvw (read and write)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: any_join_result1_upvr_2 (readonly)
		]]
		var15_result1_upvw.navigate(EnumScreens_upvr.MessageContextMenu, {
			messageId = any_join_result1_upvr_2.messageId;
			conversationId = any_join_result1_upvr_2.conversationId;
			inputBoxRef = any_join_result1_upvr_2.inputBoxRef;
		})
	end, {var15_result1_upvw.navigate, any_join_result1_upvr_2.messageId, any_join_result1_upvr_2.conversationId, any_join_result1_upvr_2.inputBoxRef})
	local any_useCallback_result1_upvw_6 = React_upvr.useCallback(function(arg1_13, arg2, arg3) -- Line 151
		--[[ Upvalues[13]:
			[1]: any_join_result1_upvr_2 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: var110_upvw (read and write)
			[5]: any_useCallback_result1_upvw_2 (read and write)
			[6]: EventNames_upvr (copied, readonly)
			[7]: any_useCallback_result1_upvw (read and write)
			[8]: var107_upvw (read and write)
			[9]: ChatMessageContainerConstants_upvr (copied, readonly)
			[10]: var113_upvw (read and write)
			[11]: OptionsEnum_upvr (copied, readonly)
			[12]: useReplyingToMessageDispatch_upvr_result1_upvw_2 (read and write)
			[13]: var116_upvw (read and write)
		]]
		if any_join_result1_upvr_2.isPending then
		else
			if UserInputService_upvr.MouseEnabled then
				if arg1_13 == React_upvr.Event.MouseEnter then
					var110_upvw(true)
				end
				if arg1_13 == React_upvr.Event.MouseLeave then
					var110_upvw(false)
				end
				if arg1_13 == React_upvr.Event.MouseButton1Down then
					any_join_result1_upvr_2.closeKeyboard()
				end
			end
			if UserInputService_upvr.TouchEnabled or any_join_result1_upvr_2.unitTestTouchEnabled then
				if arg1_13 == React_upvr.Event.TouchLongPress then
					any_useCallback_result1_upvw_2(EventNames_upvr.ChatMessageLongPressed)
					any_useCallback_result1_upvw()
					var107_upvw(React_upvr.Event.InputEnded, arg2, ChatMessageContainerConstants_upvr.PEEK_VIEW_ANIMATION_MILLISEC)
				end
				if arg1_13 == React_upvr.Event.InputBegan then
					if arg2 then
						any_useCallback_result1_upvw_2(EventNames_upvr.ChatMessagePressed)
						var113_upvw(true)
						var107_upvw(React_upvr.Event.TouchLongPress, arg2, ChatMessageContainerConstants_upvr.LONG_PRESS_DELAY_MILLISEC)
					end
				end
				if arg1_13 == React_upvr.Event.InputEnded then
					var113_upvw(false)
				end
				if arg1_13 == React_upvr.Event.TouchTap then
					any_join_result1_upvr_2.closeKeyboard()
				end
			end
			if arg1_13 == React_upvr.Event.Activated then
				if arg3 == OptionsEnum_upvr.MessageContextMenu then
					any_useCallback_result1_upvw_2(EventNames_upvr.ChatMessageOpenMenuIconClicked)
					any_useCallback_result1_upvw()
				end
				if arg3 == OptionsEnum_upvr.Reply then
					any_useCallback_result1_upvw_2(EventNames_upvr.ChatMessageReplyIconClicked)
					useReplyingToMessageDispatch_upvr_result1_upvw_2(var116_upvw)
				end
			end
		end
	end, {any_join_result1_upvr_2.isPending, UserInputService_upvr.MouseEnabled, var110_upvw, UserInputService_upvr.TouchEnabled, any_join_result1_upvr_2.unitTestTouchEnabled, var15_result1_upvw.navigate, var107_upvw, any_useState_result1_2, var113_upvw, any_useCallback_result1_upvw_2, any_useCallback_result1_upvw, useReplyingToMessageDispatch_upvr_result1_upvw_2})
	var107_upvw = React_upvr.useCallback(function(arg1_14, arg2, arg3) -- Line 222
		--[[ Upvalues[2]:
			[1]: setTimeout_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvw_6 (read and write)
		]]
		setTimeout_upvr(function() -- Line 223
			--[[ Upvalues[3]:
				[1]: arg2 (readonly)
				[2]: any_useCallback_result1_upvw_6 (copied, read and write)
				[3]: arg1_14 (readonly)
			]]
			if arg2.UserInputState == Enum.UserInputState.Begin or arg2.UserInputState == Enum.UserInputState.Change then
				any_useCallback_result1_upvw_6(arg1_14, arg2)
			end
		end, arg3)
	end, {setTimeout_upvr, any_useCallback_result1_upvw_6})
	local var134_upvw = var107_upvw
	local function _(arg1_15, arg2) -- Line 236
		--[[ Upvalues[3]:
			[1]: var134_upvw (read and write)
			[2]: React_upvr (copied, readonly)
			[3]: ChatMessageContainerConstants_upvr (copied, readonly)
		]]
		var134_upvw(React_upvr.Event.InputBegan, arg2, ChatMessageContainerConstants_upvr.INPUT_BEGAN_DELAY_MILLISEC)
	end
	local _ = {var134_upvw}
	local function _(arg1_16) -- Line 240
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvw_6 (read and write)
			[2]: React_upvr (copied, readonly)
		]]
		any_useCallback_result1_upvw_6(React_upvr.Event.InputEnded)
	end
	local _ = {any_useCallback_result1_upvw_6}
	local function _(arg1_17) -- Line 244
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvw_6 (read and write)
			[2]: React_upvr (copied, readonly)
		]]
		any_useCallback_result1_upvw_6(React_upvr.Event.MouseEnter)
	end
	local _ = {any_useCallback_result1_upvw_6}
	local function _(arg1_18) -- Line 248
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvw_6 (read and write)
			[2]: React_upvr (copied, readonly)
		]]
		any_useCallback_result1_upvw_6(React_upvr.Event.MouseLeave)
	end
	local _ = {any_useCallback_result1_upvw_6}
	local function _(arg1_19) -- Line 252
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvw_6 (read and write)
			[2]: React_upvr (copied, readonly)
		]]
		any_useCallback_result1_upvw_6(React_upvr.Event.TouchTap)
	end
	local _ = {any_useCallback_result1_upvw_6}
	local function _(arg1_20) -- Line 256
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvw_6 (read and write)
			[2]: React_upvr (copied, readonly)
		]]
		any_useCallback_result1_upvw_6(React_upvr.Event.MouseButton1Down)
	end
	local _ = {any_useCallback_result1_upvw_6}
	-- KONSTANTERROR: [62] 54. Error Block 119 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [283] 224. Error Block 173 start (CF ANALYSIS FAILED)
	local var13_result1_upvr = getFFlagAppChatEnableRepliesUI_upvr()
	if var13_result1_upvr then
		var13_result1_upvr = any_join_result1_upvr_2.repliesTo
		if var13_result1_upvr then
			var13_result1_upvr = any_join_result1_upvr_2.repliesTo.senderTargetId
		end
	end
	local useLocalUserId_upvr_result1_upvw = useLocalUserId_upvr()
	local tbl_7 = {any_join_result1_upvr_2.senderUserId}
	if var13_result1_upvr then
		table.insert(tbl_7, any_join_result1_upvr_2.repliesTo.senderTargetId)
	end
	local tbl_4 = {
		userIds = tbl_7;
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
	}
	local any_useUserProfilesFetch_result1_2 = UserProfiles_upvr.Hooks.useUserProfilesFetch(tbl_4)
	tbl_4 = nil
	local var157 = tbl_4
	local var158
	if var158 then
		var158 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1_2.data, any_join_result1_upvr_2.senderUserId)
		if not var158 then
			var158 = any_join_result1_upvr_2.unknownUserKey
		end
		if var13_result1_upvr then
			local any_getCombinedNameFromId_result1_2 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1_2.data, any_join_result1_upvr_2.repliesTo.senderTargetId)
			if not any_getCombinedNameFromId_result1_2 then
				any_getCombinedNameFromId_result1_2 = any_join_result1_upvr_2.unknownUserKey
			end
			var157 = (function(arg1_21, arg2) -- Line 263, Named "getDisplayNameText"
				--[[ Upvalues[5]:
					[1]: useLocalUserId_upvr_result1_upvw (read and write)
					[2]: any_join_result1_upvr_2 (readonly)
					[3]: var13_result1_upvr (readonly)
					[4]: useGetConversationFromId_upvr_result1_upvw (read and write)
					[5]: Conversation_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				-- KONSTANTERROR: [0] 1. Error Block 71 start (CF ANALYSIS FAILED)
				local var149
				if useLocalUserId_upvr_result1_upvw ~= any_join_result1_upvr_2.senderUserId then
					var149 = false
				else
					var149 = true
				end
				if any_join_result1_upvr_2.senderUserId ~= any_join_result1_upvr_2.repliesTo.senderTargetId then
					-- KONSTANTWARNING: GOTO [20] #15
				end
				-- KONSTANTERROR: [0] 1. Error Block 71 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [19] 14. Error Block 73 start (CF ANALYSIS FAILED)
				if useLocalUserId_upvr_result1_upvw ~= any_join_result1_upvr_2.repliesTo.senderTargetId then
				else
				end
				if not var13_result1_upvr then
					return arg1_21
				end
				if var149 and true then
					return "Feature.Chat.Label.YouRepliedToYou"
				end
				if useGetConversationFromId_upvr_result1_upvw.conversationType == Conversation_upvr.Type.ONE_TO_ONE_CONVERSATION then
					if var149 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if not true then
							return "Feature.Chat.Label.OneToOne.YouRepliedToThem"
						end
					end
					if not var149 and true then
						return "Feature.Chat.Label.OneToOne.ThemRepliedToYou"
					end
					if not var149 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if true then
							return "Feature.Chat.Label.OneToOne.ThemRepliedToThem"
						end
					end
				end
				if useGetConversationFromId_upvr_result1_upvw.conversationType == Conversation_upvr.Type.MULTI_USER_CONVERSATION then
					if var149 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if not true then
							local module = {"Feature.Chat.Label.Group.YouRepliedToThem"}
							module.DISPLAY_NAME = arg2
							return module
						end
					end
					if not var149 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if true then
							local module_8 = {"Feature.Chat.Label.Group.ThemRepliedToYou"}
							module_8.DISPLAY_NAME = arg1_21
							return module_8
						end
					end
					if not var149 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if true then
							local module_9 = {"Feature.Chat.Label.Group.ThemRepliedToThem"}
							module_9.DISPLAY_NAME = arg1_21
							return module_9
						end
					end
					if not var149 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if not true then
							local module_2 = {"Feature.Chat.Label.Group.ThemRepliedToOther"}
							module_2.DISPLAY_NAME_1 = arg1_21
							module_2.DISPLAY_NAME_2 = arg2
							return module_2
						end
					end
				end
				do
					return any_join_result1_upvr_2.unknownUserKey
				end
				-- KONSTANTERROR: [19] 14. Error Block 73 end (CF ANALYSIS FAILED)
			end)(var158, any_getCombinedNameFromId_result1_2)
		else
			var157 = var158
		end
	else
		var157 = nil
	end
	if var13_result1_upvr then
		({}).displayName = var157
	else
	end
	local var160_upvw = useLocalization_upvr({}).displayName or var157
	local function _() -- Line 355
		--[[ Upvalues[5]:
			[1]: any_join_result1_upvr_2 (readonly)
			[2]: ChatMessageContainerConstants_upvr (copied, readonly)
			[3]: TextService_upvr (copied, readonly)
			[4]: var160_upvw (read and write)
			[5]: useStyle_upvr_result1_upvr_2 (readonly)
		]]
		local any_GetTextSize_result1_2 = TextService_upvr:GetTextSize(var160_upvw, useStyle_upvr_result1_upvr_2.Font.BaseSize * useStyle_upvr_result1_upvr_2.Font.Footer.RelativeSize, useStyle_upvr_result1_upvr_2.Font.Footer.Font, Vector2.new(math.max(1, any_join_result1_upvr_2.messageMaxWidth - ChatMessageContainerConstants_upvr.TAIL_WIDTH), math.huge))
		return UDim2.new(0, any_GetTextSize_result1_2.X, 0, any_GetTextSize_result1_2.Y)
	end
	local _ = {useStyle_upvr_result1_upvr_2.Font.BaseSize * useStyle_upvr_result1_upvr_2.Font.Footer.RelativeSize, useStyle_upvr_result1_upvr_2.Font.Footer.Font, any_join_result1_upvr_2.messageMaxWidth - ChatMessageContainerConstants_upvr.TAIL_WIDTH, var160_upvw}
	-- KONSTANTERROR: [283] 224. Error Block 173 end (CF ANALYSIS FAILED)
end
return ChatMessageContainer