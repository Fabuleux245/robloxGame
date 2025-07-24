-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:53
-- Luau version 6, Types version 3
-- Time taken: 0.007884 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_3_upvr = {
	text = "";
	maxWidth = 0;
	innerPadding = 0;
	isIncoming = false;
	hasTail = false;
	LayoutOrder = 0;
	isPending = false;
	isUnfiltered = false;
	isRepliedTo = false;
	isPressed = false;
	isLastMessageInMessageGroup = false;
	[React_upvr.Change.AbsoluteSize] = function() -- Line 45
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat.Flags.getFFlagAppChatEnableRepliesUI)
local TextService_upvr = game:GetService("TextService")
local FFlagAppChatEnableGroupedMessageBubbles_upvr = require(AppChat.Flags.FFlagAppChatEnableGroupedMessageBubbles)
local ChatBubbleContainerAutomaticSize_upvr = require(script.Parent.Bubble.ChatBubbleContainerAutomaticSize)
function PlainText(arg1) -- Line 51
	--[[ Upvalues[9]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[6]: TextService_upvr (readonly)
		[7]: FFlagAppChatEnableGroupedMessageBubbles_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: ChatBubbleContainerAutomaticSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 77 start (CF ANALYSIS FAILED)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_3_upvr, arg1)
	local var8_result1_2 = useStyle_upvr()
	local Body = var8_result1_2.Font.Body
	local var27
	if not var27 then
		var27 = var8_result1_2.Font.BaseSize * Body.RelativeSize
	end
	local font_2 = any_join_result1.font
	if not font_2 then
		font_2 = Body.Font
	end
	local var9_result1 = getFFlagAppChatEnableRepliesUI_upvr()
	if var9_result1 then
		var9_result1 = any_join_result1.isRepliedTo
	end
	if var9_result1 then
	else
	end
	if getFFlagAppChatEnableRepliesUI_upvr() then
	end
	local isUnfiltered = any_join_result1.isUnfiltered
	if isUnfiltered then
		isUnfiltered = not any_join_result1.isIncoming
		if isUnfiltered then
			isUnfiltered = not any_join_result1.isPending
		end
	end
	if any_join_result1.isRepliedTo then
		-- KONSTANTWARNING: GOTO [120] #86
	end
	if isUnfiltered then
		-- KONSTANTWARNING: GOTO [120] #86
	end
	-- KONSTANTERROR: [0] 1. Error Block 77 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [98] 73. Error Block 72 start (CF ANALYSIS FAILED)
	if FFlagAppChatEnableGroupedMessageBubbles_upvr and not any_join_result1.isIncoming then
	else
	end
	local tbl_2 = {
		isIncoming = any_join_result1.isIncoming;
		hasTail = any_join_result1.hasTail;
		isPending = any_join_result1.isPending;
		isUnfiltered = any_join_result1.isUnfiltered;
		padding = any_join_result1.innerPadding;
	}
	local LayoutOrder_2 = any_join_result1.LayoutOrder
	tbl_2.LayoutOrder = LayoutOrder_2
	if getFFlagAppChatEnableRepliesUI_upvr() then
		LayoutOrder_2 = any_join_result1.isRepliedTo
	else
		LayoutOrder_2 = nil
	end
	tbl_2.isRepliedTo = LayoutOrder_2
	if getFFlagAppChatEnableRepliesUI_upvr() then
		-- KONSTANTWARNING: GOTO [164] #114
	end
	-- KONSTANTERROR: [98] 73. Error Block 72 end (CF ANALYSIS FAILED)
end
return PlainText