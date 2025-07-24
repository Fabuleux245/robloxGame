-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:30
-- Luau version 6, Types version 3
-- Time taken: 0.002717 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl_2_upvr = {
	additionalProps = {
		shareLink = nil;
		placeId = nil;
		universeId = nil;
		senderUserId = nil;
		onDetailsOpened = function() -- Line 24, Named "onDetailsOpened"
		end;
		openGameDetailsPage = function() -- Line 25, Named "openGameDetailsPage"
		end;
	};
	hasTail = false;
	innerPadding = 0;
	isIncoming = false;
	isPending = true;
	isUnfiltered = false;
	isLastMessageInMessageGroup = false;
	maxWidth = 0;
	parentWidth = 0;
	wideMode = false;
}
local Cryo_upvr = require(Parent.Cryo)
local getFFlagAppChatEnableShareLinkGameCards_upvr = require(AppChat.Flags.getFFlagAppChatEnableShareLinkGameCards)
local ShareLinkContainer_upvr = require(AppChat.Components.ChatConversation.GameCardComponents.ShareLinkContainer)
local PlaceIdContainer_upvr = require(AppChat.Components.ChatConversation.GameCardComponents.PlaceIdContainer)
local GameCardContainer_upvr = require(AppChat.Components.ChatConversation.GameCardComponents.GameCardContainer)
local Roact_upvr = require(Parent.Roact)
local ChatBubbleContainerAutomaticSize_upvr = require(script.Parent.Bubble.ChatBubbleContainerAutomaticSize)
return function(arg1) -- Line 38, Named "AssetCardTemp"
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: getFFlagAppChatEnableShareLinkGameCards_upvr (readonly)
		[4]: ShareLinkContainer_upvr (readonly)
		[5]: PlaceIdContainer_upvr (readonly)
		[6]: GameCardContainer_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: ChatBubbleContainerAutomaticSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1 = Cryo_upvr.Dictionary.join(arg1.additionalProps, tbl_2_upvr.additionalProps)
	local var13
	if getFFlagAppChatEnableShareLinkGameCards_upvr() and any_join_result1.shareLink then
	elseif not any_join_result1.placeId or not PlaceIdContainer_upvr then
	end
	if not arg1.parentWidth then
	end
	local wideMode = arg1.wideMode
	if not wideMode then
		var13 = tbl_2_upvr
		wideMode = var13.wideMode
	end
	if arg1.isPending ~= nil then
		var13 = arg1.isPending
	else
		var13 = tbl_2_upvr.isPending
	end
	local module_2 = {}
	local hasTail = arg1.hasTail
	if not hasTail then
		hasTail = tbl_2_upvr.hasTail
	end
	module_2.hasTail = hasTail
	hasTail = arg1.isIncoming
	local var17 = hasTail
	if not var17 then
		var17 = tbl_2_upvr.isIncoming
	end
	module_2.isIncoming = var17
	module_2.isPending = var13
	module_2.isUnfiltered = arg1.isUnfiltered
	module_2.isAssetCard = true
	module_2.LayoutOrder = arg1.LayoutOrder
	local innerPadding = arg1.innerPadding
	if not innerPadding then
		innerPadding = tbl_2_upvr.innerPadding
	end
	module_2.padding = innerPadding
	innerPadding = arg1.isLastMessageInMessageGroup
	local var19 = innerPadding
	if not var19 then
		var19 = tbl_2_upvr.isLastMessageInMessageGroup
	end
	module_2.isLastMessageInMessageGroup = var19
	module_2[Roact_upvr.Change.AbsoluteSize] = arg1[Roact_upvr.Change.AbsoluteSize]
	local module = {}
	local tbl = {
		BackgroundTransparency = 1;
	}
	if wideMode then
	else
	end
	tbl.Size = UDim2.new(0, tbl_2_upvr.parentWidth - 108, 0, 0)
	tbl.AutomaticSize = Enum.AutomaticSize.XY
	module.AssetCard = Roact_upvr.createElement("Frame", tbl, {
		Card = Roact_upvr.createElement(GameCardContainer_upvr, any_join_result1);
	})
	return Roact_upvr.createElement(ChatBubbleContainerAutomaticSize_upvr, module_2, module)
end