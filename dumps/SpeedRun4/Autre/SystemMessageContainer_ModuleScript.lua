-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:00
-- Luau version 6, Types version 3
-- Time taken: 0.003438 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	cards = nil;
	text = "";
	parentWidth = 0;
	showDateTime = false;
	senderTargetId = nil;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local getFFlagDebugAppChat_upvr = require(AppChat.Flags.getFFlagDebugAppChat)
local GetFFlagEnableSocialCards_upvr = require(Parent.SharedFlags).GetFFlagEnableSocialCards
local CardContainer_upvr = require(script.Parent.CardContainer)
local SystemMessage_upvr = require(script.Parent.SystemMessage)
function SystemMessageContainer(arg1) -- Line 42
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: getFFlagDebugAppChat_upvr (readonly)
		[6]: GetFFlagEnableSocialCards_upvr (readonly)
		[7]: CardContainer_upvr (readonly)
		[8]: SystemMessage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local useStyle_upvr_result1 = useStyle_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local var18
	if GetFFlagEnableSocialCards_upvr() and any_join_result1.cards then
		return React_upvr.createElement(CardContainer_upvr, {
			cards = any_join_result1.cards;
			senderTargetId = any_join_result1.senderTargetId;
		})
	end
	local var20 = React_upvr
	if getFFlagDebugAppChat_upvr() then
		var20 = "TextButton"
	else
		var20 = "Frame"
	end
	local module_2 = {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		AutomaticSize = Enum.AutomaticSize.Y;
	}
	var18 = 1
	module_2.Size = UDim2.new(var18, 0, 0, 0)
	var18 = getFFlagDebugAppChat_upvr()
	if var18 then
		-- KONSTANTWARNING: GOTO [84] #65
	end
	-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [83] 64. Error Block 33 start (CF ANALYSIS FAILED)
	module_2.Text = nil
	var18 = React_upvr.Event
	if getFFlagDebugAppChat_upvr() then
		var18 = React_upvr.useCallback(function() -- Line 47
			--[[ Upvalues[2]:
				[1]: getFFlagDebugAppChat_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			if getFFlagDebugAppChat_upvr() then
				any_useState_result2_upvr(function(arg1_2) -- Line 49
					return not arg1_2
				end)
			end
		end, {any_useState_result2_upvr})
	else
		var18 = nil
	end
	module_2[var18.Activated] = var18
	local module = {}
	var18 = React_upvr.createElement
	var18 = var18("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	module.Layout = var18
	var18 = any_join_result1.showDateTime
	if var18 then
		var18 = React_upvr.createElement
		var18 = var18(SystemMessage_upvr, {
			LayoutOrder = 1;
			Text = any_join_result1.sent:GetLongRelativeTime();
			maxWidth = 1000;
		})
	end
	module.DateTime = var18
	module.SystemMessage = React_upvr.createElement(SystemMessage_upvr, {
		LayoutOrder = 2;
		Text = any_join_result1.text;
		maxWidth = any_join_result1.parentWidth * 0.75;
	})
	if any_useState_result1 then
	end
	module.Notice = React_upvr.createElement("TextLabel", {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
		LayoutOrder = 3;
		Text = any_join_result1.messageId;
		TextColor3 = useStyle_upvr_result1.Theme.UIDefault.Color;
		TextTransparency = useStyle_upvr_result1.Theme.UIDefault.Transparency;
		TextXAlignment = Enum.TextXAlignment.Center;
	})
	module.debug = any_join_result1.debugElement or nil
	do
		return var20.createElement(var20, module_2, module)
	end
	-- KONSTANTERROR: [83] 64. Error Block 33 end (CF ANALYSIS FAILED)
end
return React_upvr.memo(SystemMessageContainer)