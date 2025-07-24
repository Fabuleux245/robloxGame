-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:41
-- Luau version 6, Types version 3
-- Time taken: 0.013925 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local EnumMessageTypes = require(AppChat.Components.ChatConversation.EnumMessageTypes)
local tbl_5_upvr = {
	[EnumMessageTypes.PlainText] = {
		component = require(script.Parent.PlainTextAutomaticSize);
		name = "PlainText";
		paddingOffset = 0;
	};
}
local tbl_18 = {
	component = require(script.Parent.AssetCardTempAutomaticSize);
}
local var8 = "AssetCard"
tbl_18.name = var8
if require(AppChat.Flags.FFlagAppChatEnableGroupedMessageBubbles) then
	var8 = 0
else
	var8 = 2
end
tbl_18.paddingOffset = var8
tbl_5_upvr[EnumMessageTypes.Link] = tbl_18
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatMessage")
local tbl_2 = {
	additionalProps = {
		shareLink = nil;
		placeId = nil;
		universeId = nil;
		senderUserId = nil;
		onDetailsOpened = function() -- Line 51, Named "onDetailsOpened"
		end;
		openGameDetailsPage = function() -- Line 52, Named "openGameDetailsPage"
		end;
	};
	conversationId = nil;
	BackgroundColor3 = nil;
	content = "";
	debugElement = nil;
	displayName = nil;
	failed = false;
	filteredForReceivers = false;
	isIncoming = false;
	isNewSender = false;
	isSending = false;
	isUnfiltered = false;
	isLastMessageInMessageGroup = false;
	messageType = nil;
	moderated = false;
	parentWidth = 0;
	senderUserId = nil;
	sent = nil;
	showDateTime = false;
	thumbnail = nil;
	Transparency = nil;
	wideMode = false;
	viewProfileOnAvatarPressed = true;
}
function tbl_2.closeKeyboard() -- Line 76
end
tbl_2.inputBoxRef = nil
tbl_2.repliesTo = nil
tbl_2.messageDefaultNoticeText = "PLACEHOLDER Not everyone in this chat can see your message."
tbl_2.messageModeratedNoticeText = "PLACEHOLDER Your message was moderated and not sent."
tbl_2.unknownUserText = "PLACEHOLDER unknown user"
any_extend_result1.defaultProps = tbl_2
local memoize_upvr = require(Parent.AppCommonLib).memoize
local Text_upvr = require(Parent.AppCommonLib).Text
function any_extend_result1.init(arg1) -- Line 85
	--[[ Upvalues[2]:
		[1]: memoize_upvr (readonly)
		[2]: Text_upvr (readonly)
	]]
	function arg1.getModeratedText(arg1_2) -- Line 86
		return string.gsub(arg1_2, "[^%s]", '#')
	end
	function arg1.messageMaxWidth(arg1_3, arg2) -- Line 90
		local var16 = 128
		if arg1_3 then
			var16 += 112
		end
		return arg2 - var16
	end
	arg1.getBubbleMaxWidth = memoize_upvr(function(arg1_4, arg2, arg3, arg4) -- Line 100
		--[[ Upvalues[1]:
			[1]: Text_upvr (copied, readonly)
		]]
		return Text_upvr.GetTextBounds(arg2, arg4, arg3, Vector2.new(arg1_4, 10000)).X + 20
	end)
end
local Logger_upvr = require(script.Parent.Logger)
local pruneConsecutiveNewLines_upvr = require(AppChat.SocialLibraries).Utils.pruneConsecutiveNewLines
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat.Flags.getFFlagAppChatEnableRepliesUI)
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local ChatMessageContainerAutomaticSize_upvr = require(script.Parent.ChatMessageContainerAutomaticSize)
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local OptionsConstants_upvr = require(AppChat.Components.ChatConversation.MessageInteraction.OptionsConstants)
function any_extend_result1.render(arg1) -- Line 107
	--[[ Upvalues[10]:
		[1]: tbl_5_upvr (readonly)
		[2]: Logger_upvr (readonly)
		[3]: pruneConsecutiveNewLines_upvr (readonly)
		[4]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[5]: withStyle_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: ChatMessageContainerAutomaticSize_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: OptionsConstants_upvr (readonly)
	]]
	local var90_upvr = tbl_5_upvr[arg1.props.messageType]
	local var91_upvr
	if not var90_upvr then
		Logger_upvr:warning("ChatMessage doesn't support messageType: {}", arg1.props.messageType)
		return nil
	end
	var91_upvr = arg1.props
	var91_upvr = pruneConsecutiveNewLines_upvr(var91_upvr.content)
	local var92 = var91_upvr
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var91_upvr = arg1.getModeratedText(var92)
		return var91_upvr
	end
	if not arg1.props.moderated or not INLINED_3() then
		var91_upvr = var92
	end
	local var20_result1_upvr = getFFlagAppChatEnableRepliesUI_upvr()
	if var20_result1_upvr then
		var20_result1_upvr = arg1.props.repliesTo
		if var20_result1_upvr then
			var20_result1_upvr = arg1.props.repliesTo.messageType
			if var20_result1_upvr then
				var20_result1_upvr = arg1.props.repliesTo.content
			end
		end
	end
	local any_messageMaxWidth_result1_upvr_3 = arg1.messageMaxWidth(arg1.props.wideMode, arg1.props.parentWidth)
	return withStyle_upvr(function(arg1_13) -- Line 127
		--[[ Upvalues[12]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ChatMessageContainerAutomaticSize_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: any_messageMaxWidth_result1_upvr_3 (readonly)
			[6]: var90_upvr (readonly)
			[7]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
			[8]: var91_upvr (readonly)
			[9]: React_upvr (copied, readonly)
			[10]: var20_result1_upvr (readonly)
			[11]: tbl_5_upvr (copied, readonly)
			[12]: OptionsConstants_upvr (copied, readonly)
		]]
		local Body_upvr_3 = arg1_13.Font.Body
		local BodySmall_upvr_2 = arg1_13.Font.BodySmall
		local module = {
			messageMaxWidth = any_messageMaxWidth_result1_upvr_3;
			messageTypePaddingOffset = var90_upvr.paddingOffset;
		}
		local messageId_3 = arg1.props.messageId
		module.messageId = messageId_3
		if getFFlagAppChatEnableRepliesUI_upvr() then
			messageId_3 = arg1.props.isSending
			if not messageId_3 then
				messageId_3 = arg1.props.moderated
				if not messageId_3 then
					messageId_3 = arg1.props.failed
					-- KONSTANTWARNING: GOTO [72] #47
				end
				-- KONSTANTWARNING: GOTO [72] #47
			end
		else
			messageId_3 = nil
		end
		module.isPending = messageId_3
		if not getFFlagAppChatEnableRepliesUI_upvr() then
			local var101_upvr = arg1_13.Font.BaseSize * Body_upvr_3.RelativeSize
			function messageId_3(arg1_14) -- Line 146
				--[[ Upvalues[8]:
					[1]: Roact_upvr (copied, readonly)
					[2]: var90_upvr (copied, readonly)
					[3]: Cryo_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: Body_upvr_3 (readonly)
					[6]: any_messageMaxWidth_result1_upvr_3 (copied, readonly)
					[7]: var91_upvr (copied, readonly)
					[8]: var101_upvr (readonly)
				]]
				local module_8 = {}
				local tbl_16 = {
					additionalProps = arg1.props.additionalProps;
					font = Body_upvr_3.Font;
					hasTail = arg1.props.isNewSender;
					innerPadding = 10;
					isIncoming = arg1.props.isIncoming;
				}
				local isSending_3 = arg1.props.isSending
				if not isSending_3 then
					isSending_3 = arg1.props.moderated
					if not isSending_3 then
						isSending_3 = arg1.props.failed
					end
				end
				tbl_16.isPending = isSending_3
				tbl_16.isUnfiltered = arg1.props.isUnfiltered
				tbl_16.isLastMessageInMessageGroup = arg1.props.isLastMessageInMessageGroup
				tbl_16.maxWidth = arg1.getBubbleMaxWidth(any_messageMaxWidth_result1_upvr_3, var91_upvr, var101_upvr, Body_upvr_3.Font)
				tbl_16.messageDefaultNoticeText = arg1.props.messageDefaultNoticeText
				tbl_16.messageModeratedNoticeText = arg1.props.messageModeratedNoticeText
				tbl_16.parentWidth = arg1.props.parentWidth
				tbl_16.text = var91_upvr
				tbl_16.textSize = var101_upvr
				tbl_16.wideMode = arg1.props.wideMode
				tbl_16[Roact_upvr.Change.AbsoluteSize] = arg1.messageSizeChanged
				local var105 = arg1_14
				if not var105 then
					var105 = {}
				end
				module_8[var90_upvr.name] = Roact_upvr.createElement(var90_upvr.component, Cryo_upvr.Dictionary.join(tbl_16, var105))
				return Roact_upvr.createFragment(module_8)
			end
		else
			local var107_upvr = arg1_13.Font.BaseSize * BodySmall_upvr_2.RelativeSize
			function messageId_3(arg1_15, arg2) -- Line 179
				--[[ Upvalues[14]:
					[1]: React_upvr (copied, readonly)
					[2]: Cryo_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: var20_result1_upvr (copied, readonly)
					[5]: Roact_upvr (copied, readonly)
					[6]: tbl_5_upvr (copied, readonly)
					[7]: Body_upvr_3 (readonly)
					[8]: any_messageMaxWidth_result1_upvr_3 (copied, readonly)
					[9]: var107_upvr (readonly)
					[10]: BodySmall_upvr_2 (readonly)
					[11]: OptionsConstants_upvr (copied, readonly)
					[12]: var90_upvr (copied, readonly)
					[13]: var91_upvr (copied, readonly)
					[14]: var101_upvr (readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
				local var109 = 1
				;({
					AutomaticSize = Enum.AutomaticSize.XY;
				}).BackgroundTransparency = var109
				if arg1_15 then
					var109 = arg1_15
				else
					var109 = {}
				end
				local tbl_12 = {
					FillDirection = Enum.FillDirection.Vertical;
					SortOrder = Enum.SortOrder.LayoutOrder;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				}
				if arg1.props.isIncoming then
					-- KONSTANTWARNING: GOTO [53] #35
				end
				-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [51] 34. Error Block 49 start (CF ANALYSIS FAILED)
				tbl_12.HorizontalAlignment = Enum.HorizontalAlignment.Right
				tbl_12.Padding = UDim.new(0, 10)
				;({}).UIListLayout = React_upvr.createElement("UIListLayout", tbl_12)
				if var20_result1_upvr then
					local _ = {
						additionalProps = arg1.props.additionalProps;
						font = Body_upvr_3.Font;
						hasTail = false;
						innerPadding = 10;
						isIncoming = arg1.props.isIncoming;
						isPending = false;
						isUnfiltered = arg1.props.isUnfiltered;
						isRepliedTo = true;
						isLastMessageInMessageGroup = arg1.props.isLastMessageInMessageGroup;
						maxWidth = arg1.getBubbleMaxWidth(any_messageMaxWidth_result1_upvr_3, arg1.props.repliesTo.content, var107_upvr, BodySmall_upvr_2.Font);
						messageDefaultNoticeText = arg1.props.messageDefaultNoticeText;
						messageModeratedNoticeText = arg1.props.messageModeratedNoticeText;
						parentWidth = arg1.props.parentWidth;
						text = arg1.props.repliesTo.content;
						textSize = var107_upvr;
						wideMode = arg1.props.wideMode;
						[Roact_upvr.Change.AbsoluteSize] = arg1.messageSizeChanged;
						LayoutOrder = 1;
					}
					-- KONSTANTWARNING: GOTO [201] #128
				end
				-- KONSTANTERROR: [51] 34. Error Block 49 end (CF ANALYSIS FAILED)
			end
		end
		module.renderMessage = messageId_3
		return Roact_upvr.createElement(ChatMessageContainerAutomaticSize_upvr, Cryo_upvr.Dictionary.join(arg1.props, module))
	end)
end
return any_extend_result1