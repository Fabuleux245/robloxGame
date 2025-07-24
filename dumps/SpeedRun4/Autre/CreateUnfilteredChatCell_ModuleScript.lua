-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:30
-- Luau version 6, Types version 3
-- Time taken: 0.002304 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl_2_upvr = {
	bodyText = "Placeholder body";
	subTitleText = "Placeholder subtitle";
	iconImage = nil;
	cellHeight = 48;
	onActivated = function() -- Line 39, Named "onActivated"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local React_upvr = require(Parent.React)
local FlexIconWithTextCell_upvr = require(AppChat.Components.Cells.FlexIconWithTextCell)
return function(arg1) -- Line 44, Named "CreateUnfilteredChatCell"
	--[[ Upvalues[10]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useAnalytics_upvr (readonly)
		[5]: useTokens_upvr (readonly)
		[6]: useIsInExperience_upvr (readonly)
		[7]: useEffectOnMount_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: FlexIconWithTextCell_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	useEffectOnMount_upvr(function() -- Line 52
		--[[ Upvalues[3]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_join_result1_upvr (readonly)
		]]
		if useAnalytics_upvr_result1_upvr then
			useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ChatDetailsCreateUnfilteredChatCellRendered, {
				conversationId = any_join_result1_upvr.conversationId;
			})
		end
	end)
	local module = {}
	local tbl = {
		LayoutOrder = any_join_result1_upvr.layoutOrder;
		onActivated = any_join_result1_upvr.onActivated;
		primaryIcon = any_join_result1_upvr.iconImage;
		showDivider = false;
		Size = UDim2.new(1, 0, 0, any_join_result1_upvr.cellHeight);
		style = any_join_result1_upvr.style or useStyle_upvr();
		Text = any_join_result1_upvr.bodyText;
		SubTitleText = any_join_result1_upvr.subTitleText;
	}
	local isLoading = any_join_result1_upvr.isLoading
	tbl.isDisabled = isLoading
	if useIsInExperience_upvr() then
		isLoading = useTokens_upvr().Color.None.Transparency
	else
		isLoading = nil
	end
	tbl.BackgroundTransparency = isLoading
	module.CreateUnfilteredChatRow = React_upvr.createElement(FlexIconWithTextCell_upvr, tbl)
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = any_join_result1_upvr.layoutOrder;
		Size = UDim2.fromScale(1, 0);
	}, module)
end