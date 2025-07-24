-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:56
-- Luau version 6, Types version 3
-- Time taken: 0.001641 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Foundation_upvr = require(Parent.Foundation)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local React_upvr = require(Parent.React)
local ConversationTitleWithFacePile_upvr = require(AppChat.Components.ChatConversation.ConversationTitleWithFacePile)
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
return function(arg1) -- Line 21, Named "HeaderBarTitleLeftAligned"
	--[[ Upvalues[5]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Foundation_upvr (readonly)
		[4]: ConversationTitleWithFacePile_upvr (readonly)
		[5]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
	]]
	local module_2 = {
		Size = UDim2.new(1, 0, 1, 0);
	}
	local tbl = {
		FillDirection = Enum.FillDirection.Horizontal;
		Padding = UDim.new(0, useTokens_upvr().Gap.Medium);
		SortOrder = Enum.SortOrder.LayoutOrder;
	}
	local Center = Enum.VerticalAlignment.Center
	tbl.VerticalAlignment = Center
	module_2.layout = tbl
	local module = {}
	if arg1.renderLeft then
		Center = React_upvr.createElement
		Center = Center(Foundation_upvr.View, {
			AutomaticSize = Enum.AutomaticSize.XY;
			LayoutOrder = 1;
			ItemLineAlignment = Enum.ItemLineAlignment.Center;
		}, React_upvr.createElement(arg1.renderLeft))
	else
		Center = nil
	end
	module.LeftFrame = Center
	Center = React_upvr.createElement
	Center = Center(Foundation_upvr.View, {
		flexItem = {
			FlexMode = Enum.UIFlexMode.Fill;
		};
		Size = UDim2.new(1, 0, 1, 0);
		LayoutOrder = 2;
	}, {
		ConversationTitle = React_upvr.createElement(ConversationTitleWithFacePile_upvr, {
			titleText = arg1.titleText;
			conversationId = arg1.conversationId;
			navigateToChatDetails = arg1.navigateToChatDetails;
		});
	})
	module.CenterFrame = Center
	if arg1.renderRight then
		Center = React_upvr.createElement
		local tbl_2 = {}
		local var18
		if getFFlagAppChatEnablePaddingConsistency_upvr() and arg1.ignoreRightMargin then
			var18 = nil
		else
			var18 = "padding-right-small"
		end
		tbl_2.tag = var18
		var18 = Enum.AutomaticSize.XY
		tbl_2.AutomaticSize = var18
		var18 = Enum.ItemLineAlignment.Center
		tbl_2.ItemLineAlignment = var18
		var18 = 3
		tbl_2.LayoutOrder = var18
		var18 = React_upvr.createElement(arg1.renderRight)
		Center = Center(Foundation_upvr.View, tbl_2, var18)
	else
		Center = nil
	end
	module.RightFrame = Center
	return React_upvr.createElement(Foundation_upvr.View, module_2, module)
end