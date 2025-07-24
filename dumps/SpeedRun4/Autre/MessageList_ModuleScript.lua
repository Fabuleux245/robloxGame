-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:38
-- Luau version 6, Types version 3
-- Time taken: 0.020026 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatMessageInitialFetchMinMessages", 20)
local FFlagAppChatEnableOneToOneOSAContextCards_upvr = require(Parent.SharedFlags).FFlagAppChatEnableOneToOneOSAContextCards
local any_extend_result1 = Roact_upvr.PureComponent:extend("MessageList")
any_extend_result1.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0);
	autoScrollMaxIndex = 3;
	bottomMargin = 10;
	conversationId = nil;
	initialFocusIndex = 1;
	isDebugEnabled = false;
	itemList = {};
	loadNext = function() -- Line 57, Named "loadNext"
	end;
	markAsRead = function() -- Line 58, Named "markAsRead"
	end;
	messageListRef = nil;
	onDetailsOpened = function() -- Line 60, Named "onDetailsOpened"
	end;
	openGameDetailsPage = function(arg1, arg2) -- Line 61, Named "openGameDetailsPage"
	end;
	openViewProfile = nil;
	wideMode = false;
	viewProfileOnAvatarPressed = true;
	closeKeyboard = function() -- Line 65, Named "closeKeyboard"
	end;
	inputBoxRef = nil;
	invalidMessageTypeText = "PLACEHOLDER This message could not be displayed";
	messageDefaultNoticeText = "PLACEHOLDER Not everyone in this chat can see your message.";
	messageModeratedNoticeText = "PLACEHOLDER Your message was moderated and not sent.";
	unknownUserText = "PLACEHOLDER unknown user";
	scrollToTopOnInitialOsaLoad = false;
}
local function compareItemData_upvr(arg1, arg2) -- Line 75, Named "compareItemData"
	if arg1 == nil or arg2 == nil then
		return false
	end
	if arg1.stable_key == nil or arg1.stable_key ~= arg2.stable_key or arg1.messageId ~= nil then
		if arg1.messageId ~= arg2.messageId then
		else
		end
	end
	return true
end
local MessageModel_upvr_2 = require(AppChat.Models.MessageModel)
local EnumMessageTypes_upvr = require(AppChat.Components.ChatConversation.EnumMessageTypes)
local CustomMessageEntryContainer_upvr = require(script.Parent.CustomMessageEntryContainer)
local SystemMessageContainer_upvr = require(script.Parent.SystemMessageContainer)
local GetFFlagEnableSocialCards_upvr = require(Parent.SharedFlags).GetFFlagEnableSocialCards
local getFFlagAppChatEnableShareLinkGameCards_upvr = require(AppChat.Flags.getFFlagAppChatEnableShareLinkGameCards)
local ChatMessage_upvr = require(script.Parent.ChatMessage)
local MessageModel_upvr = require(AppChat.Models.MessageModel)
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat.Flags.getFFlagAppChatEnableRepliesUI)
local SystemMessage_upvr = require(script.Parent.SystemMessage)
function any_extend_result1.init(arg1) -- Line 84
	--[[ Upvalues[12]:
		[1]: MessageModel_upvr_2 (readonly)
		[2]: EnumMessageTypes_upvr (readonly)
		[3]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: CustomMessageEntryContainer_upvr (readonly)
		[6]: SystemMessageContainer_upvr (readonly)
		[7]: GetFFlagEnableSocialCards_upvr (readonly)
		[8]: getFFlagAppChatEnableShareLinkGameCards_upvr (readonly)
		[9]: ChatMessage_upvr (readonly)
		[10]: MessageModel_upvr (readonly)
		[11]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[12]: SystemMessage_upvr (readonly)
	]]
	arg1.state = {
		width = 0;
		startIndex = 1;
		firstItem = arg1.props.itemList[1];
	}
	arg1.focusIndex = arg1.props.initialFocusIndex
	local function var19(arg1_2, arg2) -- Line 93
		--[[ Upvalues[3]:
			[1]: MessageModel_upvr_2 (copied, readonly)
			[2]: EnumMessageTypes_upvr (copied, readonly)
			[3]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (copied, readonly)
		]]
		local System = MessageModel_upvr_2.SenderTypes.System
		if arg2 == System then
			if arg1_2 ~= EnumMessageTypes_upvr.System then
				System = false
			else
				System = true
			end
			return System
		end
		if arg2 == MessageModel_upvr_2.SenderTypes.User then
			local var21 = true
			if arg1_2 ~= EnumMessageTypes_upvr.PlainText then
				if arg1_2 ~= EnumMessageTypes_upvr.Link then
					var21 = false
				else
					var21 = true
				end
			end
			return var21
		end
		if FFlagAppChatEnableOneToOneOSAContextCards_upvr and arg1_2 == EnumMessageTypes_upvr.Custom then
			return true
		end
		return false
	end
	arg1.isValidMessageAndSenderType = var19
	var19 = arg1.props.messageListRef
	local var22 = var19
	if not var22 then
		var22 = Roact_upvr.createRef()
	end
	arg1.ref = var22
	function arg1.renderItem(arg1_3) -- Line 107
		--[[ Upvalues[12]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (copied, readonly)
			[4]: EnumMessageTypes_upvr (copied, readonly)
			[5]: CustomMessageEntryContainer_upvr (copied, readonly)
			[6]: SystemMessageContainer_upvr (copied, readonly)
			[7]: GetFFlagEnableSocialCards_upvr (copied, readonly)
			[8]: getFFlagAppChatEnableShareLinkGameCards_upvr (copied, readonly)
			[9]: ChatMessage_upvr (copied, readonly)
			[10]: MessageModel_upvr (copied, readonly)
			[11]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
			[12]: SystemMessage_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var33
		if arg1.isValidMessageAndSenderType(arg1_3.messageType, arg1_3.senderType) then
			var33 = arg1.props.isDebugEnabled
			if var33 then
				var33 = Roact_upvr.createElement
				var33 = var33("StringValue", {
					Value = tostring(arg1_3.messageId);
				})
			end
			if FFlagAppChatEnableOneToOneOSAContextCards_upvr then
				if arg1_3.messageType == EnumMessageTypes_upvr.Custom then
					return Roact_upvr.createElement(CustomMessageEntryContainer_upvr, {
						openViewProfile = arg1.props.openViewProfile;
						customEntryType = arg1_3.customEntryType;
						conversationId = arg1.props.conversationId;
					})
				end
			end
			local var36
			if arg1_3.messageType == EnumMessageTypes_upvr.System then
				local module_3 = {}
				if GetFFlagEnableSocialCards_upvr() then
					var36 = arg1_3.cards
				else
					var36 = nil
				end
				module_3.cards = var36
				var36 = arg1_3.content
				module_3.text = var36
				var36 = arg1.state.width
				module_3.parentWidth = var36
				var36 = arg1_3.sent
				module_3.sent = var36
				var36 = arg1_3.showDateTime
				module_3.showDateTime = var36
				var36 = arg1_3.messageId
				module_3.messageId = var36
				if GetFFlagEnableSocialCards_upvr() then
					var36 = arg1_3.senderTargetId
				else
					var36 = nil
				end
				module_3.senderTargetId = var36
				module_3.debugElement = var33
				return Roact_upvr.createElement(SystemMessageContainer_upvr, module_3)
			end
			local additionalProps = arg1_3.additionalProps
			if additionalProps then
				var36 = arg1
				additionalProps.onDetailsOpened = var36.props.onDetailsOpened
			end
			if not additionalProps then
			end
			local openGameDetailsPage_2 = arg1.props.openGameDetailsPage
			;({}).openGameDetailsPage = openGameDetailsPage_2
			if getFFlagAppChatEnableShareLinkGameCards_upvr() then
				openGameDetailsPage_2 = arg1_3.shareLink
			else
				openGameDetailsPage_2 = nil
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).shareLink = openGameDetailsPage_2
			local module_2 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_2.additionalProps = {}
			module_2.content = arg1_3.content
			module_2.debugElement = var33
			module_2.failed = arg1_3.failed
			module_2.filteredForReceivers = arg1_3.filteredForReceivers
			module_2.isIncoming = arg1_3.isIncoming
			module_2.isNewSender = arg1_3.isNewSender
			module_2.isSending = arg1_3.isSending
			if arg1_3.moderationType ~= MessageModel_upvr.ModerationTypes.TrustedComms then
				-- KONSTANTWARNING: GOTO [193] #124
			end
			module_2.isUnfiltered = true
			module_2.isLastMessageInMessageGroup = arg1_3.isLastMessageInMessageGroup
			module_2.messageDefaultNoticeText = arg1.props.messageDefaultNoticeText
			if getFFlagAppChatEnableRepliesUI_upvr() then
				-- KONSTANTWARNING: GOTO [213] #137
			end
			module_2.conversationId = nil
			module_2.messageId = arg1_3.messageId
			module_2.messageModeratedNoticeText = arg1.props.messageModeratedNoticeText
			module_2.messageType = arg1_3.messageType
			module_2.moderated = arg1_3.moderated
			module_2.openViewProfile = arg1.props.openViewProfile
			module_2.parentWidth = arg1.state.width
			module_2.readingMessagesIsEnabled = true
			if getFFlagAppChatEnableRepliesUI_upvr() then
				-- KONSTANTWARNING: GOTO [261] #165
			end
			module_2.senderUserId = arg1_3.sender.id
			module_2.sent = arg1_3.sent
			module_2.showDateTime = arg1_3.showDateTime
			module_2.showDisplayName = arg1_3.showDisplayName
			module_2.shouldShowName = arg1_3.sender.shouldShowName
			module_2.thumbnail = arg1_3.sender.thumbnail
			module_2.wideMode = arg1.props.wideMode
			module_2.unknownUserText = arg1.props.unknownUserText
			local viewProfileOnAvatarPressed = arg1.props.viewProfileOnAvatarPressed
			module_2.viewProfileOnAvatarPressed = viewProfileOnAvatarPressed
			if getFFlagAppChatEnableRepliesUI_upvr() then
				viewProfileOnAvatarPressed = arg1.props.closeKeyboard
			else
				viewProfileOnAvatarPressed = nil
			end
			module_2.closeKeyboard = viewProfileOnAvatarPressed
			if getFFlagAppChatEnableRepliesUI_upvr() then
				-- KONSTANTWARNING: GOTO [330] #207
			end
			module_2.inputBoxRef = nil
			if getFFlagAppChatEnableRepliesUI_upvr() then
			else
			end
			module_2.repliesTo = nil
			return Roact_upvr.createElement(ChatMessage_upvr, module_2)
		end
		return Roact_upvr.createElement(SystemMessage_upvr, {
			Text = arg1.props.invalidMessageTypeText;
		})
	end
	function arg1.updateWidth(arg1_4) -- Line 190
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_4.AbsoluteSize.X ~= arg1.state.width then
			arg1:setState({
				width = arg1_4.AbsoluteSize.X;
			})
		end
	end
	function arg1.changeFocus(arg1_5) -- Line 197
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var46
		if arg1_5.anchorIndex > arg1.props.autoScrollMaxIndex + 1 then
			var46 = false
		else
			var46 = true
		end
		arg1.isNearBottom = var46
		var46 = arg1.isNearBottom
		if var46 then
		else
			var46 = arg1_5.anchorIndex
		end
		var46 = arg1
		var46.focusIndex = var46 + 1
		var46 = arg1_5.anchorIndex
		if var46 == 1 then
			var46 = arg1.props.itemList[1].read
			if not var46 then
				var46 = arg1.props.markAsRead
				var46()
			end
		end
	end
	function arg1.identifier(arg1_6) -- Line 209
		return arg1_6.messageId..'|'..(arg1_6.position or "")
	end
	function arg1.getScrollRef() -- Line 213
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.ref.current == nil then
			return nil
		end
		local any_getNativeScrollRef_result1 = arg1.ref.current._listRef._scrollRef.getNativeScrollRef()
		if any_getNativeScrollRef_result1 == nil then
			return nil
		end
		return any_getNativeScrollRef_result1._nativeRef.current
	end
	function arg1.calculateScrollOffset(arg1_7) -- Line 226
		return arg1_7.AbsoluteCanvasSize.Y - arg1_7.CanvasPosition.Y - arg1_7.AbsoluteWindowSize.Y
	end
	function arg1.onScroll(arg1_8) -- Line 234
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_calculateScrollOffset_result1 = arg1.calculateScrollOffset(arg1_8)
		local var53
		if any_calculateScrollOffset_result1 < 512 then
			arg1:setState(function(arg1_9, arg2) -- Line 237
				return {
					firstItem = arg2.itemList[1];
				}
			end)
		end
		if any_calculateScrollOffset_result1 < 64 then
			var53 = arg1.props
			var53.markAsRead()
		end
		if any_calculateScrollOffset_result1 >= 64 then
			var53 = false
		else
			var53 = true
		end
		arg1.isNearBottom = var53
	end
	arg1.initialFetchesAttempted = 0
end
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 253
	local var56
	if var56 == nil then
		var56 = {}
		var56.startIndex = 1
		return var56
	end
	var56 = 1
	while true do
		local var57
		if var56 > var57 then break end
		local var58 = arg1.itemList[var56]
		local firstItem = arg2.firstItem
		if var58 == nil or firstItem == nil then
			var57 = false
		else
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var57 = true
				return var58.stable_key ~= firstItem.stable_key
			end
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var57 = false
				return var58.messageId ~= nil
			end
			if var58.stable_key == nil or INLINED() or INLINED_2() then
				if var58.messageId ~= firstItem.messageId then
					var57 = false
				else
					var57 = true
				end
			end
		end
		if var57 then break end
		var56 += 1
	end
	if #arg1.itemList < var56 then
		return {
			startIndex = 1;
		}
	end
	return {
		startIndex = var56;
	}
end
local FFlagAppChatHandleDownAging_upvr = require(AppChat.Flags.FFlagAppChatHandleDownAging)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("AppChatInitialMessageFetchLimit", 10)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("AppChatOsaAutoScrollDelayMs", 100)
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 278
	--[[ Upvalues[4]:
		[1]: FFlagAppChatHandleDownAging_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr_2 (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr_3 (readonly)
	]]
	local var85
	if FFlagAppChatHandleDownAging_upvr then
		var85 = arg1.props
		if var85.itemList then
			var85 = arg1.props.itemList
			if #var85 == 0 and arg2.itemList then
				var85 = arg2.itemList
				var85 = 0
				if var85 < #var85 then
					arg1.initialFetchesAttempted = 0
				end
			end
		end
	end
	var85 = arg1.props
	if var85.itemList then
		var85 = arg1.props
		var85 = arg2.itemList
		if var85.itemList ~= var85 then
			var85 = game_DefineFastInt_result1_upvr_2
			if arg1.initialFetchesAttempted < var85 then
				var85 = arg1.props.itemList
				var85 = game_DefineFastInt_result1_upvr
				if #var85 < var85 then
					var85 = arg1.props
					if var85.loadNext then
						arg1.initialFetchesAttempted += 1
						var85 = arg1.props
						var85.loadNext()
					end
				end
			end
		end
	end
	var85 = arg1.props.conversationId
	if arg2.conversationId ~= var85 then
		arg1.isNearBottom = true
	end
	local any_getScrollRef_result1_2 = arg1.getScrollRef()
	if any_getScrollRef_result1_2 ~= nil then
		var85 = arg1.calculateScrollOffset(any_getScrollRef_result1_2)
	else
		var85 = 0
	end
	if var85 < 64 then
		arg1.isNearBottom = true
		if 0 < #arg1.props.itemList then
			arg1.props.markAsRead()
		end
	end
	if arg2.readingMessagesIsEnabled ~= arg1.props.readingMessagesIsEnabled and arg1.props.readingMessagesIsEnabled and arg1.isNearBottom then
		arg1.props.markAsRead()
	end
	if arg1.props.scrollToTopOnInitialOsaLoad and not arg2.scrollToTopOnInitialOsaLoad then
		local var87_upvr
		if 0 < var87_upvr then
			var87_upvr = arg1.ref
			if var87_upvr then
				var87_upvr = arg1.ref.current
			end
			if var87_upvr and var87_upvr.scrollToEnd then
				task.delay(game_DefineFastInt_result1_upvr_3 / 1000, function() -- Line 332
					--[[ Upvalues[2]:
						[1]: var87_upvr (readonly)
						[2]: arg1 (readonly)
					]]
					var87_upvr:scrollToIndex({
						index = #arg1.props.itemList;
						animated = false;
					})
				end)
			end
		end
	end
end
function any_extend_result1.didMount(arg1) -- Line 339
	--[[ Upvalues[1]:
		[1]: game_DefineFastInt_result1_upvr (readonly)
	]]
	if #arg1.props.itemList < game_DefineFastInt_result1_upvr then
		if arg1.props.loadNext then
			arg1.props.loadNext()
		end
	end
	arg1.isNearBottom = true
end
local BidirectionalFlatList_upvr = require(Parent.VirtualizedList).BidirectionalFlatList
local getFFlagAppChatPerfChatConversationPaginationEnabled_upvr = require(AppChat.Flags.getFFlagAppChatPerfChatConversationPaginationEnabled)
local game_DefineFastInt_result1_upvr_7 = game:DefineFastInt("AppChatPerfChatConversationPaginationWindowSize", 2)
local game_DefineFastInt_result1_upvr_4 = game:DefineFastInt("AppChatPerfChatConversationPaginationInitialRender", 10)
local Promise_upvr = require(Parent.Promise)
local game_DefineFastInt_result1_upvr_5 = game:DefineFastInt("AppChatPerfChatConversationPaginationOnEndReached", 100)
local game_DefineFastInt_result1_upvr_6 = game:DefineFastInt("AppChatPerfChatConversationPaginationOnStartReached", 64)
function any_extend_result1.renderScrollingFrame(arg1) -- Line 346
	--[[ Upvalues[10]:
		[1]: Roact_upvr (readonly)
		[2]: BidirectionalFlatList_upvr (readonly)
		[3]: getFFlagAppChatPerfChatConversationPaginationEnabled_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr_7 (readonly)
		[5]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (readonly)
		[6]: game_DefineFastInt_result1_upvr_4 (readonly)
		[7]: Promise_upvr (readonly)
		[8]: game_DefineFastInt_result1_upvr_5 (readonly)
		[9]: game_DefineFastInt_result1_upvr_6 (readonly)
		[10]: compareItemData_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var97
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 5. Error Block 66 start (CF ANALYSIS FAILED)
	local any_getScrollRef_result1 = arg1.getScrollRef()
	if any_getScrollRef_result1 ~= nil then
		var97 = arg1.calculateScrollOffset(any_getScrollRef_result1)
	else
		var97 = 0
	end
	-- KONSTANTERROR: [8] 5. Error Block 66 end (CF ANALYSIS FAILED)
end
function any_extend_result1.renderEmptyMessageList(arg1) -- Line 427
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.Size;
		BackgroundTransparency = 1;
	})
end
function any_extend_result1.render(arg1) -- Line 434
	if #arg1.props.itemList ~= 0 then
		return arg1:renderScrollingFrame()
	end
	return arg1:renderEmptyMessageList()
end
return any_extend_result1