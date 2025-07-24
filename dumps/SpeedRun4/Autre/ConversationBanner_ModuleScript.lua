-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:44
-- Luau version 6, Types version 3
-- Time taken: 0.003353 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local tbl_3_upvr = {
	actionText = "PLACEHOLDER Action";
	bodyText = "PLACEHOLDER Body";
	height = 40;
	onActivated = function() -- Line 37, Named "onActivated"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local useChatPagePadding_upvr = require(AppChat.Contexts.ChatPagePadding.useChatPagePadding)
local useMemo_upvr = React_upvr.useMemo
local Text_upvr = require(Parent.AppCommonLib).Text
local LinkButton_upvr = UIBlox.App.Button.LinkButton
return React_upvr.memo(function(arg1) -- Line 40, Named "ConversationBanner"
	--[[ Upvalues[11]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useIsInExperience_upvr (readonly)
		[6]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[7]: useChatPagePadding_upvr (readonly)
		[8]: useMemo_upvr (readonly)
		[9]: Text_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: LinkButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_3_upvr, arg1)
	local var16 = any_union_result1_upvr.style or useStyle_upvr()
	local useIsInExperience_upvr_result1 = useIsInExperience_upvr()
	local Space_200 = var16.Tokens.Global.Space_200
	local Font_upvr = var16.Font.CaptionBody.Font
	local var20_upvr = var16.Font.CaptionBody.RelativeSize * var16.Font.BaseSize
	local var21
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
	else
	end
	local tbl_4 = {}
	var21 = Font_upvr
	tbl_4[1] = any_union_result1_upvr.actionText
	tbl_4[2] = var21
	tbl_4[3] = var20_upvr
	tbl_4[4] = any_union_result1_upvr.height
	local useMemo_upvr_result1 = useMemo_upvr(function() -- Line 57
		--[[ Upvalues[4]:
			[1]: Text_upvr (copied, readonly)
			[2]: any_union_result1_upvr (readonly)
			[3]: Font_upvr (readonly)
			[4]: var20_upvr (readonly)
		]]
		return Text_upvr.GetTextBounds(any_union_result1_upvr.actionText, Font_upvr, var20_upvr + 2, Vector2.new(250, any_union_result1_upvr.height)).X
	end, tbl_4)
	local module = {}
	if useIsInExperience_upvr_result1 then
		var21 = useTokens_upvr().Color.OverMedia.OverMedia_100.Color3
	else
		var21 = var16.Theme.BackgroundUIDefault.Color
	end
	module.BackgroundColor3 = var21
	if useIsInExperience_upvr_result1 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
	end
	module.BackgroundTransparency = var16.Theme.BackgroundUIDefault.Transparency
	module.BorderSizePixel = 0
	module.Size = UDim2.new(1, 0, 0, any_union_result1_upvr.height)
	local tbl_2 = {
		FillDirection = Enum.FillDirection.Horizontal;
	}
	local var28 = Space_200
	tbl_2.Padding = UDim.new(0, var28)
	tbl_2.SortOrder = Enum.SortOrder.LayoutOrder
	tbl_2.VerticalAlignment = Enum.VerticalAlignment.Center
	;({}).UIListLayout = React_upvr.createElement("UIListLayout", tbl_2)
	local tbl = {}
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		var28 = ({
			left = Space_200;
			right = Space_200;
		}).left
	else
		var28 = Space_200
	end
	tbl.PaddingLeft = UDim.new(0, var28)
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
	else
	end
	tbl.PaddingRight = UDim.new(0, Space_200)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).UIPadding = React_upvr.createElement("UIPadding", tbl)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).BodyText = React_upvr.createElement("TextLabel", {
		BackgroundTransparency = 1;
		Font = Font_upvr;
		LayoutOrder = 1;
		Size = UDim2.new(1, -useMemo_upvr_result1 - Space_200, 1, 0);
		Text = any_union_result1_upvr.bodyText;
		TextColor3 = var16.Theme.TextEmphasis.Color;
		TextSize = var20_upvr;
		TextTruncate = Enum.TextTruncate.AtEnd;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Center;
	})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).ActionText = React_upvr.createElement(LinkButton_upvr, {
		fontStyle = "CaptionBody";
		layoutOrder = 2;
		size = UDim2.new(0, useMemo_upvr_result1, 1, 0);
		text = `<b>{any_union_result1_upvr.actionText}</b>`;
		onActivated = any_union_result1_upvr.onActivated;
	})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return React_upvr.createElement("Frame", module, {})
end)