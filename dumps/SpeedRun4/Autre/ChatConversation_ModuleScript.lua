-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:36
-- Luau version 6, Types version 3
-- Time taken: 0.017045 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat.Flags.getFFlagAppChatEnableRepliesUI)
local FFlagEnableCreatePartyInChatMoreMenu_upvr = require(AppChat.Flags.FFlagEnableCreatePartyInChatMoreMenu)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatConversation")
any_extend_result1.defaultProps = {
	topBarHeight = 0;
	conversationId = nil;
	conversationTitle = nil;
	itemList = {};
	inputBoxRef = nil;
	wideMode = false;
	getOlderMessages = function() -- Line 56, Named "getOlderMessages"
	end;
	isDebugEnabled = false;
	sendMessage = function() -- Line 58, Named "sendMessage"
	end;
	navigateToToast = function() -- Line 59, Named "navigateToToast"
	end;
	markConversationAsRead = function() -- Line 60, Named "markConversationAsRead"
	end;
	postTypingStatus = function() -- Line 61, Named "postTypingStatus"
	end;
	navigateBack = function() -- Line 62, Named "navigateBack"
	end;
	openViewProfile = function() -- Line 63, Named "openViewProfile"
	end;
	updateConversationTitle = function() -- Line 64, Named "updateConversationTitle"
	end;
	openGameDetailsPage = function() -- Line 65, Named "openGameDetailsPage"
	end;
	navigateToScreen = function() -- Line 66, Named "navigateToScreen"
	end;
	navigateToSquadLobby = function() -- Line 67, Named "navigateToSquadLobby"
	end;
	viewProfileOnAvatarPressed = true;
	chatInputPlaceholder = "Say something";
	usersTyping = {};
	invalidMessageTypeText = "PLACEHOLDER This message could not be displayed";
	messageDefaultNoticeText = "PLACEHOLDER Not everyone in this chat can see your message.";
	messageModeratedNoticeText = "PLACEHOLDER Your message was moderated and not sent.";
	networkErrorText = "PLACEHOLDER There was a network error, please try again later";
	unknownUserText = "PLACEHOLDER unknown user";
	oneUserTyping = "PLACEHOLDER {DISPLAY_NAME} is typing...";
	twoUsersTyping = "PLACEHOLDER {DISPLAY_NAME_1} and {DISPLAY_NAME_2} are typing...";
	severalUsersTyping = "PLACEHOLDER Several users are typing...";
	bottomModalText = "PLACEHOLDER At this time, Chat is not available with this user.";
	readingMessagesIsEnabled = true;
	onConversationUnmount = function() -- Line 81, Named "onConversationUnmount"
	end;
	chatIsVisible = true;
	keyboardOffset = nil;
	replyingToMessage = nil;
	replyingToMessageDispatch = function(arg1) -- Line 86, Named "replyingToMessageDispatch"
	end;
	shouldShowChatInputBar = true;
	shouldDisableChatInputBar = false;
	shouldShowBottomModal = false;
	telemetry = {
		emit = function() -- Line 91, Named "emit"
		end;
	};
	scrollToTopOnInitialOsaLoad = false;
	displayNamesAvailable = true;
}
local UserInputService_upvr = game:GetService("UserInputService")
local memoize_upvr = require(Parent.AppCommonLib).memoize
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local StatusCodes_upvr = require(Parent.Http).StatusCodes
local SendMessageError_upvr = require(AppChat.Analytics.Enums.SendMessageError)
local ChatConversationTelemetryEvents_upvr = require(script.Parent.ChatConversationTelemetryEvents)
local DateTime_upvr = require(Parent.Time).DateTime
local ConversationExitType_upvr = require(AppChat.Analytics.Enums.ConversationExitType)
function any_extend_result1.init(arg1) -- Line 97
	--[[ Upvalues[11]:
		[1]: FFlagEnableCreatePartyInChatMoreMenu_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: memoize_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
		[6]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[7]: StatusCodes_upvr (readonly)
		[8]: SendMessageError_upvr (readonly)
		[9]: ChatConversationTelemetryEvents_upvr (readonly)
		[10]: DateTime_upvr (readonly)
		[11]: ConversationExitType_upvr (readonly)
	]]
	local var18 = 0
	({
		inputBarHeight = 0;
		keyboardOffset = 0;
		replyComposeBarHeight = 0;
		conversationBannerHeight = 0;
		messageListHeight = 0;
	}).bottomModalHeight = var18
	local var83
	if FFlagEnableCreatePartyInChatMoreMenu_upvr then
		var18 = false
	else
		var18 = nil
	end
	var83.showMoreMenu = var18
	arg1.state = var83
	var83 = arg1.props.inputBoxRef
	if not var83 then
		var83 = Roact_upvr.createRef()
	end
	arg1.inputBoxRef = var83
	var83 = Roact_upvr.createRef()
	arg1.conversationViewRef = var83
	var83 = Roact_upvr.createRef()
	arg1.messageListRef = var83
	function var83() -- Line 112
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if UserInputService_upvr.OnScreenKeyboardVisible and arg1.inputBoxRef:getValue() and arg1.inputBoxRef:getValue():IsFocused() then
			if arg1.props.keyboardOffset ~= nil then
				return arg1.props.keyboardOffset
			end
			local any_getValue_result1 = arg1.conversationViewRef:getValue()
			if any_getValue_result1 then
				return any_getValue_result1.AbsolutePosition.Y + any_getValue_result1.AbsoluteSize.Y - UserInputService_upvr.OnScreenKeyboardPosition.Y
			end
		end
		return 0
	end
	arg1.getKeyboardOffset = var83
	function var83() -- Line 135
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.isMounted then
		else
			local any_getKeyboardOffset_result1 = arg1.getKeyboardOffset()
			if arg1.state.keyboardOffset ~= any_getKeyboardOffset_result1 then
				arg1:setState({
					keyboardOffset = any_getKeyboardOffset_result1;
				})
			end
		end
	end
	arg1.updateKeyboardOffset = var83
	function var83(arg1_2) -- Line 147
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var26
		if not arg1.isMounted then
		else
			if not arg1.inputBoxRef:getValue() or not arg1.inputBoxRef:getValue():IsFocused() then
				var26 = 0
			end
			if arg1.state.keyboardOffset ~= var26 then
				arg1:setState({
					keyboardOffset = var26;
				})
			end
		end
	end
	arg1.onKeyboardOffsetChanged = var83
	function var83() -- Line 164
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			keyboardOffset = 0;
		})
	end
	arg1.clearKeyboardOffset = var83
	var83 = memoize_upvr
	var83 = var83(function(arg1_3, arg2) -- Line 170
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return function() -- Line 171
			--[[ Upvalues[3]:
				[1]: arg1_3 (readonly)
				[2]: arg2 (readonly)
				[3]: arg1 (copied, readonly)
			]]
			local arg1_3_result1 = arg1_3(arg2)
			if arg1_3_result1 then
				arg1_3_result1:catch(function() -- Line 174
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.showNetworkErrorToast()
				end)
			end
		end
	end)
	arg1.loadNext = var83
	var83 = memoize_upvr
	var83 = var83(function(arg1_4, arg2) -- Line 181
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return function() -- Line 182
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_4 (readonly)
				[3]: arg2 (readonly)
			]]
			if arg1.props.readingMessagesIsEnabled then
				arg1_4(arg2)
			end
		end
	end)
	arg1.markAsRead = var83
	function var83() -- Line 189
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.navigateToToast({
			toastProps = {
				toastContent = {
					toastTitle = arg1.props.networkErrorText;
				};
			};
		})
	end
	arg1.showNetworkErrorToast = var83
	var83 = memoize_upvr
	var83 = var83(function(arg1_5, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 200
		--[[ Upvalues[7]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: StatusCodes_upvr (copied, readonly)
			[5]: SendMessageError_upvr (copied, readonly)
			[6]: ChatConversationTelemetryEvents_upvr (copied, readonly)
			[7]: DateTime_upvr (copied, readonly)
		]]
		return function(arg1_6) -- Line 210
			--[[ Upvalues[15]:
				[1]: arg5 (readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: arg2 (read and write)
				[4]: arg6 (readonly)
				[5]: arg4 (readonly)
				[6]: arg7 (readonly)
				[7]: arg1_5 (readonly)
				[8]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
				[9]: arg1 (copied, readonly)
				[10]: StatusCodes_upvr (copied, readonly)
				[11]: arg3 (readonly)
				[12]: SendMessageError_upvr (copied, readonly)
				[13]: arg8 (readonly)
				[14]: ChatConversationTelemetryEvents_upvr (copied, readonly)
				[15]: DateTime_upvr (copied, readonly)
			]]
			if arg5 and arg5.source == "friends" then
				any_new_result1_upvr:info("Creating a conversation for friend conversation {} via onSendChat", arg2)
				local any_await_result1, any_await_result2 = arg6(arg2, arg4):await()
				if any_await_result1 and any_await_result2 then
					any_new_result1_upvr:debug("Created conversation {} for friend conversation {} via onSendChat", any_await_result2.id, arg2)
					arg2 = any_await_result2.id
					arg7(any_await_result2.id)
				else
					any_new_result1_upvr:error("Could not create conversation. Error: {}", tostring(any_await_result2))
					return
				end
			end
			local var44 = arg1_6
			any_new_result1_upvr:info("Sending message '{}' to conversationId {} via onSendChat", var44, arg2)
			if getFFlagAppChatEnableRepliesUI_upvr() then
				var44 = arg1.props.replyingToMessage
			else
				var44 = nil
			end
			local arg1_5_result1 = arg1_5(arg2, arg1_6, var44)
			if arg1_5_result1 then
				arg1_5_result1:andThen(function(arg1_7) -- Line 239
					--[[ Upvalues[4]:
						[1]: StatusCodes_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: arg3 (copied, readonly)
						[4]: arg2 (copied, read and write)
					]]
					local var47 = arg1_7
					if var47 then
						if arg1_7.StatusCode ~= StatusCodes_upvr.CONFLICT then
							var47 = false
						else
							var47 = true
						end
					end
					if var47 then
						arg1.showNetworkErrorToast()
					elseif arg3 then
						arg3(arg2)
					end
				end)
			elseif arg3 then
				arg3(arg2)
			end
			if getFFlagAppChatEnableRepliesUI_upvr() then
				arg1.closeReplying()
			end
			local tbl_upvr = {
				messageSentResult = SendMessageError_upvr.OtherFailure;
				recipientIds = arg1.props.recipientIdsSerialized;
			}
			if not arg1_5_result1 then
				arg8.emit(ChatConversationTelemetryEvents_upvr.ConversationMessageSent, tbl_upvr)
			else
				arg1_5_result1:andThen(function(arg1_8) -- Line 265
					--[[ Upvalues[7]:
						[1]: SendMessageError_upvr (copied, readonly)
						[2]: StatusCodes_upvr (copied, readonly)
						[3]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
						[4]: DateTime_upvr (copied, readonly)
						[5]: arg8 (copied, readonly)
						[6]: ChatConversationTelemetryEvents_upvr (copied, readonly)
						[7]: arg1 (copied, readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					local var50
					if var50 then
						var50 = arg1_8.StatusCode
					end
					if not arg1_8 then
					elseif var50 == StatusCodes_upvr.CONFLICT then
					elseif not arg1_8.responseBody then
					elseif not arg1_8.responseBody.messages or #arg1_8.responseBody.messages == 0 then
					elseif not arg1_8.responseBody.messages[1].status then
					elseif getFFlagAppChatEnableRepliesUI_upvr() and arg1_8.responseBody.messages[1].replies_to then
						local replies_to = arg1_8.responseBody.messages[1].replies_to
						if replies_to.content then
						else
						end
					end
					arg8.emit(ChatConversationTelemetryEvents_upvr.ConversationMessageSent, {
						messageSentResult = arg1_8.responseBody.messages[1].status;
						messageId = arg1_8.responseBody.messages[1].id;
						recipientIds = arg1.props.recipientIdsSerialized;
						targetMessageId = replies_to.id;
						targetMessageSenderId = replies_to.sender_user_id;
						targetMessageSentAt = tostring(DateTime_upvr.fromIsoDate(replies_to.created_at).dateTime);
						targetMessageLength = nil;
					})
				end):catch(function() -- Line 315
					--[[ Upvalues[3]:
						[1]: arg8 (copied, readonly)
						[2]: ChatConversationTelemetryEvents_upvr (copied, readonly)
						[3]: tbl_upvr (readonly)
					]]
					arg8.emit(ChatConversationTelemetryEvents_upvr.ConversationMessageSent, tbl_upvr)
				end)
			end
		end
	end)
	arg1.onSendChat = var83
	var83 = memoize_upvr
	var83 = var83(function(arg1_9) -- Line 322
		--[[ Upvalues[1]:
			[1]: ChatConversationTelemetryEvents_upvr (copied, readonly)
		]]
		return function(arg1_10) -- Line 325
			--[[ Upvalues[2]:
				[1]: arg1_9 (readonly)
				[2]: ChatConversationTelemetryEvents_upvr (copied, readonly)
			]]
			local tbl = {}
			tbl.sendBtnClickResult = arg1_10
			arg1_9.emit(ChatConversationTelemetryEvents_upvr.ConversationSendBtnClicked, tbl)
		end
	end)
	arg1.onSendBtnClicked = var83
	var83 = FFlagEnableCreatePartyInChatMoreMenu_upvr
	if var83 then
		var83 = memoize_upvr
		var83 = var83(function(arg1_11) -- Line 333
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return function(arg1_12) -- Line 334
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_11 (readonly)
				]]
				arg1:setState(function(arg1_13, arg2) -- Line 335
					--[[ Upvalues[2]:
						[1]: arg1_12 (readonly)
						[2]: arg1_11 (copied, readonly)
					]]
					if arg1_12 ~= arg1_13.inputBarHeight then
						return {
							inputBarHeight = arg1_12 + arg1_11.Tokens.Global.Size_100 * 2;
						}
					end
					return {}
				end)
			end
		end)
		arg1.onHeightChanged = var83
	else
		function var83(arg1_14) -- Line 345
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState(function(arg1_15, arg2) -- Line 346
				--[[ Upvalues[1]:
					[1]: arg1_14 (readonly)
				]]
				if arg1_14 ~= arg1_15.inputBarHeight then
					local module = {}
					module.inputBarHeight = arg1_14
					return module
				end
				return {}
			end)
		end
		arg1.onHeightChanged = var83
	end
	var83 = 0
	arg1.lastTypingRequest = var83
	function var83() -- Line 357
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.conversation and arg1.props.conversation.source == "friends" then
		else
			local tick_result1 = tick()
			if 3 <= tick_result1 - arg1.lastTypingRequest then
				arg1.lastTypingRequest = tick_result1
				arg1.props.postTypingStatus(arg1.props.conversationId, true)
			end
		end
	end
	arg1.chatInputTextChanged = var83
	var83 = ConversationExitType_upvr.Default
	arg1.exitTypeForAnalytics = var83
	function var83(arg1_16, arg2, arg3) -- Line 372
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: ConversationExitType_upvr (copied, readonly)
		]]
		if not arg1.props.wideMode and arg2 == Enum.SwipeDirection.Right and arg3 == 1 then
			arg1.exitTypeForAnalytics = ConversationExitType_upvr.SwipedRight
			arg1.props.navigateBack()
		end
	end
	arg1.onTouchSwipe = var83
	function var83() -- Line 379
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: ConversationExitType_upvr (copied, readonly)
		]]
		arg1.props.onConversationUnmount(arg1.exitTypeForAnalytics)
		arg1.exitTypeForAnalytics = ConversationExitType_upvr.Default
	end
	arg1.fireAnalyticsEventOnUnmount = var83
	function var83() -- Line 386
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.inputBoxRef:getValue() then
			arg1.inputBoxRef:getValue():ReleaseFocus()
		end
	end
	arg1.closeKeyboard = var83
	var83 = getFFlagAppChatEnableRepliesUI_upvr()
	if var83 then
		function var83() -- Line 393
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.replyingToMessageDispatch(nil)
		end
		arg1.closeReplying = var83
	end
	function var83() -- Line 398
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateKeyboardOffset()
	end
	arg1.onSizeChange = var83
	function var83(arg1_17) -- Line 402
		return arg1_17.AbsoluteCanvasSize.Y - arg1_17.CanvasPosition.Y - arg1_17.AbsoluteWindowSize.Y
	end
	arg1.calculateScrollOffset = var83
	function var83(arg1_18) -- Line 409
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_8 = {}
		tbl_8.conversationBannerHeight = arg1_18
		arg1:setState(tbl_8)
	end
	arg1.setBannerHeight = var83
	function var83(arg1_19) -- Line 415
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_9 = {}
		tbl_9.bottomModalHeight = arg1_19
		arg1:setState(tbl_9)
	end
	arg1.setBottomModalHeight = var83
	var83 = getFFlagAppChatEnableRepliesUI_upvr()
	if var83 then
		function var83(arg1_20) -- Line 422
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local tbl_3 = {}
			tbl_3.replyComposeBarHeight = arg1_20
			arg1:setState(tbl_3)
		end
		arg1.setReplyComposeBarHeight = var83
	end
	function var83(arg1_21) -- Line 429
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			messageListHeight = arg1_21.AbsoluteSize.Y;
		})
	end
	arg1.onMessageListSizeChange = var83
	var83 = FFlagEnableCreatePartyInChatMoreMenu_upvr
	if var83 then
		function var83() -- Line 436
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState(function(arg1_22) -- Line 437
				return {
					showMoreMenu = not arg1_22.showMoreMenu;
				}
			end)
		end
		arg1.onMoreMenuActivated = var83
		function var83() -- Line 444
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				showMoreMenu = false;
			})
		end
		arg1.onMoreMenuDismissed = var83
	end
end
local FFlagEnableAppChatFocusableFixes_upvr = require(Parent.SharedFlags).FFlagEnableAppChatFocusableFixes
local FocusNavigationService_upvr = require(Parent.ReactFocusNavigation).FocusNavigationService
local CoreGui_upvr = require(Parent.ReactFocusNavigation).EngineInterface.CoreGui
function any_extend_result1.didMount(arg1) -- Line 452
	--[[ Upvalues[3]:
		[1]: FFlagEnableAppChatFocusableFixes_upvr (readonly)
		[2]: FocusNavigationService_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
	]]
	arg1.isMounted = true
	arg1.markAsRead(arg1.props.markConversationAsRead, arg1.props.conversationId)()
	if FFlagEnableAppChatFocusableFixes_upvr and arg1.inputBoxRef.current ~= nil then
		FocusNavigationService_upvr.new(CoreGui_upvr):focusGuiObject(arg1.inputBoxRef.current)
	end
end
function any_extend_result1.willUpdate(arg1, arg2, arg3) -- Line 461
	if arg2.chatIsVisible ~= arg1.props.chatIsVisible and not arg2.chatIsVisible then
		arg1.closeKeyboard()
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 467
	--[[ Upvalues[1]:
		[1]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var92
	if var92 ~= arg1.props.conversationId then
		var92 = arg1.inputBoxRef:getValue()
		if var92 then
			var92 = arg1.inputBoxRef:getValue()
			var92.Text = ""
			var92 = arg1.inputBoxRef:getValue():ReleaseFocus
			var92()
		end
		var92 = getFFlagAppChatEnableRepliesUI_upvr()
		if var92 then
			var92 = arg1.closeReplying
			var92()
		end
		var92 = arg1.markAsRead(arg1.props.markConversationAsRead, arg1.props.conversationId, false)
		var92()
	end
	var92 = arg1.messageListRef
	if var92 then
		var92 = arg1.messageListRef.current
		if var92 then
			var92 = arg1.messageListRef.current._listRef
		end
	end
	if var92 then
		if var92._scrollRef then
			local any_getNativeScrollRef_result1 = var92._scrollRef.getNativeScrollRef()
		end
	end
	if var92 and any_getNativeScrollRef_result1 and arg3.messageListHeight ~= 0 and arg1.state.messageListHeight - arg3.messageListHeight ~= 0 then
		local any_calculateScrollOffset_result1 = arg1.calculateScrollOffset(any_getNativeScrollRef_result1._nativeRef.current)
		if any_calculateScrollOffset_result1 <= 0 then return end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var92:scrollToOffset({
			offset = (any_calculateScrollOffset_result1) + (arg1.state.messageListHeight - arg3.messageListHeight);
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 511
	--[[ Upvalues[1]:
		[1]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
	]]
	arg1.fireAnalyticsEventOnUnmount()
	if getFFlagAppChatEnableRepliesUI_upvr() then
		arg1.closeReplying()
	end
	arg1.keyboardConnections = {}
	arg1.isMounted = false
end
local FFlagAppChatDisableTypingIndicator_upvr = require(AppChat.Flags.FFlagAppChatDisableTypingIndicator)
local withRoactChatAnalytics_upvr = require(AppChat.LegacyAnalytics.withRoactChatAnalytics)
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local withChatPagePadding_upvr = require(AppChat.Contexts.ChatPagePadding.withChatPagePadding)
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local getFFlagAppChatEnableIntervention_upvr = require(Parent.InterventionShared).Flags.getFFlagAppChatEnableIntervention
local KeyboardOffsetEventHandler_upvr = require(script.Parent.KeyboardOffsetEventHandler)
local ConversationTopModalContainer_upvr = require(script.Parent.ConversationTopModalContainer)
local MessageList_upvr = require(script.Parent.MessageList)
local UserTypingIndicator_upvr = require(script.Parent.UserTypingIndicator)
local ReplyComposeBarContainer_upvr = require(script.Parent.ReplyComposeBarContainer)
local React_upvr = require(Parent.React)
local Foundation_upvr = require(Parent.Foundation)
local ChatInputBar_upvr = require(script.Parent.ChatInputBar)
local ConversationModal_upvr = require(script.Parent.ConversationModal.ConversationModal)
local ChatConversationMoreMenu_upvr = require(script.Parent.ChatConversationMoreMenu)
function any_extend_result1.render(arg1) -- Line 520
	--[[ Upvalues[19]:
		[1]: FFlagAppChatDisableTypingIndicator_upvr (readonly)
		[2]: withRoactChatAnalytics_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: withChatPagePadding_upvr (readonly)
		[5]: FFlagEnableCreatePartyInChatMoreMenu_upvr (readonly)
		[6]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[7]: getFFlagAppChatEnableIntervention_upvr (readonly)
		[8]: Roact_upvr (readonly)
		[9]: KeyboardOffsetEventHandler_upvr (readonly)
		[10]: ConversationTopModalContainer_upvr (readonly)
		[11]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[12]: MessageList_upvr (readonly)
		[13]: UserTypingIndicator_upvr (readonly)
		[14]: ReplyComposeBarContainer_upvr (readonly)
		[15]: React_upvr (readonly)
		[16]: Foundation_upvr (readonly)
		[17]: ChatInputBar_upvr (readonly)
		[18]: ConversationModal_upvr (readonly)
		[19]: ChatConversationMoreMenu_upvr (readonly)
	]]
	local var112_upvr = false
	local var113_upvr
	if 0 < var113_upvr then
		var113_upvr = FFlagAppChatDisableTypingIndicator_upvr
		if var113_upvr then
			var113_upvr = arg1.props
			var112_upvr = var113_upvr.displayNamesAvailable
		else
			var112_upvr = true
		end
	end
	if arg1.props.conversation then
		if arg1.props.conversation.source ~= "friends" then
			var113_upvr = false
		else
			var113_upvr = true
		end
	else
		var113_upvr = false
	end
	local var115_upvr = "MessageList"..tostring(arg1.props.conversationId)
	return withRoactChatAnalytics_upvr(function(arg1_23) -- Line 532
		--[[ Upvalues[21]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: withChatPagePadding_upvr (copied, readonly)
			[3]: FFlagEnableCreatePartyInChatMoreMenu_upvr (copied, readonly)
			[4]: getFFlagAppChatEnablePaddingConsistency_upvr (copied, readonly)
			[5]: getFFlagAppChatEnableIntervention_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: Roact_upvr (copied, readonly)
			[8]: KeyboardOffsetEventHandler_upvr (copied, readonly)
			[9]: ConversationTopModalContainer_upvr (copied, readonly)
			[10]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
			[11]: var115_upvr (readonly)
			[12]: MessageList_upvr (copied, readonly)
			[13]: var113_upvr (readonly)
			[14]: var112_upvr (readonly)
			[15]: UserTypingIndicator_upvr (copied, readonly)
			[16]: ReplyComposeBarContainer_upvr (copied, readonly)
			[17]: React_upvr (copied, readonly)
			[18]: Foundation_upvr (copied, readonly)
			[19]: ChatInputBar_upvr (copied, readonly)
			[20]: ConversationModal_upvr (copied, readonly)
			[21]: ChatConversationMoreMenu_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_24) -- Line 533
			--[[ Upvalues[21]:
				[1]: withChatPagePadding_upvr (copied, readonly)
				[2]: FFlagEnableCreatePartyInChatMoreMenu_upvr (copied, readonly)
				[3]: getFFlagAppChatEnablePaddingConsistency_upvr (copied, readonly)
				[4]: getFFlagAppChatEnableIntervention_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: Roact_upvr (copied, readonly)
				[7]: KeyboardOffsetEventHandler_upvr (copied, readonly)
				[8]: ConversationTopModalContainer_upvr (copied, readonly)
				[9]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
				[10]: var115_upvr (copied, readonly)
				[11]: MessageList_upvr (copied, readonly)
				[12]: var113_upvr (copied, readonly)
				[13]: var112_upvr (copied, readonly)
				[14]: UserTypingIndicator_upvr (copied, readonly)
				[15]: ReplyComposeBarContainer_upvr (copied, readonly)
				[16]: React_upvr (copied, readonly)
				[17]: Foundation_upvr (copied, readonly)
				[18]: ChatInputBar_upvr (copied, readonly)
				[19]: arg1_23 (readonly)
				[20]: ConversationModal_upvr (copied, readonly)
				[21]: ChatConversationMoreMenu_upvr (copied, readonly)
			]]
			return withChatPagePadding_upvr(function(arg1_25) -- Line 534
				--[[ Upvalues[21]:
					[1]: FFlagEnableCreatePartyInChatMoreMenu_upvr (copied, readonly)
					[2]: getFFlagAppChatEnablePaddingConsistency_upvr (copied, readonly)
					[3]: getFFlagAppChatEnableIntervention_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: Roact_upvr (copied, readonly)
					[6]: arg1_24 (readonly)
					[7]: KeyboardOffsetEventHandler_upvr (copied, readonly)
					[8]: ConversationTopModalContainer_upvr (copied, readonly)
					[9]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
					[10]: var115_upvr (copied, readonly)
					[11]: MessageList_upvr (copied, readonly)
					[12]: var113_upvr (copied, readonly)
					[13]: var112_upvr (copied, readonly)
					[14]: UserTypingIndicator_upvr (copied, readonly)
					[15]: ReplyComposeBarContainer_upvr (copied, readonly)
					[16]: React_upvr (copied, readonly)
					[17]: Foundation_upvr (copied, readonly)
					[18]: ChatInputBar_upvr (copied, readonly)
					[19]: arg1_23 (copied, readonly)
					[20]: ConversationModal_upvr (copied, readonly)
					[21]: ChatConversationMoreMenu_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 100 start (CF ANALYSIS FAILED)
				if FFlagEnableCreatePartyInChatMoreMenu_upvr and getFFlagAppChatEnablePaddingConsistency_upvr() and getFFlagAppChatEnableIntervention_upvr() and arg1.props.shouldDisableChatInputBar then
				end
				local tbl_2 = {
					AutoButtonColor = false;
					BackgroundColor3 = arg1_24.Theme.BackgroundDefault.Color;
					BorderSizePixel = 0;
					Size = UDim2.new(1, 0, 1, 0);
					Text = "";
					Transparency = arg1_24.Tokens.Global.Color.None.Transparency;
					[Roact_upvr.Event.TouchSwipe] = arg1.onTouchSwipe;
					[Roact_upvr.Event.TouchTap] = arg1.closeKeyboard;
					[Roact_upvr.Event.MouseButton1Down] = arg1.closeKeyboard;
					[Roact_upvr.Ref] = arg1.conversationViewRef;
				}
				local tbl_7 = {}
				local tbl_6 = {
					onKeyboardOffsetChanged = arg1.onKeyboardOffsetChanged;
				}
				local conversationViewRef = arg1.conversationViewRef
				tbl_6.parentViewRef = conversationViewRef
				tbl_7.KeyboardOffsetEventHandler = Roact_upvr.createElement(KeyboardOffsetEventHandler_upvr, tbl_6)
				local tbl_5 = {}
				if FFlagEnableCreatePartyInChatMoreMenu_upvr then
					conversationViewRef = nil
				else
					conversationViewRef = Enum.HorizontalAlignment.Right
				end
				tbl_5.HorizontalAlignment = conversationViewRef
				tbl_5.SortOrder = Enum.SortOrder.LayoutOrder
				tbl_7.Layout = Roact_upvr.createElement("UIListLayout", tbl_5)
				tbl_7.ConversationTopModal = Roact_upvr.createElement(ConversationTopModalContainer_upvr, {
					conversation = arg1.props.conversation;
					navigateToScreen = arg1.props.navigateToScreen;
					setModalHeight = arg1.setBannerHeight;
					layoutOrder = 1;
				})
				if getFFlagAppChatEnableRepliesUI_upvr() then
					-- KONSTANTWARNING: GOTO [242] #168
				end
				-- KONSTANTERROR: [0] 1. Error Block 100 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [241] 167. Error Block 108 start (CF ANALYSIS FAILED)
				;({
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					LayoutOrder = 2;
					[Roact_upvr.Change.AbsoluteSize] = arg1.onMessageListSizeChange;
				}).Size = UDim2.new(1, 0, 1, -arg1.state.inputBarHeight - arg1.state.keyboardOffset - 0 - arg1.state.conversationBannerHeight - arg1.state.bottomModalHeight)
				local _ = {
					Size = UDim2.new(1, 0, 1, 0);
					bottomMargin = 28;
					conversationId = arg1.props.conversationId;
					isDebugEnabled = arg1.props.isDebugEnabled;
					itemList = arg1.props.itemList;
				}
				if var113_upvr then
					-- KONSTANTWARNING: GOTO [317] #219
				end
				-- KONSTANTERROR: [241] 167. Error Block 108 end (CF ANALYSIS FAILED)
			end)
		end)
	end)
end
return require(AppChat.Telemetry.connectTelemetry)(require(AppChat.Telemetry.Layers.ChatConversationTelemetryLayer).Context)(any_extend_result1)