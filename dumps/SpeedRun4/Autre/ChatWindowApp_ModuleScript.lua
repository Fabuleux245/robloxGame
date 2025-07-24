-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:13
-- Luau version 6, Types version 3
-- Time taken: 0.003359 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("ChatWindowApp")
any_extend_result1.defaultProps = {
	LayoutOrder = 1;
	messages = {};
	size = UDim2.fromScale(1, 1);
}
local List_upvr = require(Parent.llama).List
local ChatWindow_upvr = require(script.Parent.UI.ChatWindow)
local var12_upvr = require(ExpChat.memoize)(function(arg1, arg2, arg3) -- Line 23
	--[[ Upvalues[1]:
		[1]: List_upvr (readonly)
	]]
	if not arg2 then
		return List_upvr.map(arg1.windowMessagesInOrder, function(arg1_2) -- Line 25
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.byMessageId[arg1_2]
		end)
	end
	if arg3 then
		local var9 = arg1.windowMessagesInOrderByTabId[arg3.Name]
		if not var9 then
			var9 = {}
		end
		return List_upvr.map(var9, function(arg1_3) -- Line 32
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.byMessageId[arg1_3]
		end)
	end
	return {}
end)
function any_extend_result1.render(arg1) -- Line 42
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ChatWindow_upvr (readonly)
		[3]: var12_upvr (readonly)
	]]
	return Roact_upvr.createElement(ChatWindow_upvr, {
		LayoutOrder = arg1.props.LayoutOrder;
		messages = var12_upvr(arg1.props.messages, arg1.props.isChannelBarVisible, arg1.props.targetTextChannel);
		size = arg1.props.size;
		transparencyValue = arg1.props.transparencyValue;
		textTransparency = arg1.props.textTransparency;
		onHovered = arg1.props.onHovered;
		onUnhovered = arg1.props.onUnhovered;
		mutedUserIds = arg1.props.mutedUserIds;
		verifiedUserIds = arg1.props.verifiedUserIds;
		activateWhisperMode = arg1.props.activateWhisperMode;
		resetTargetChannel = arg1.props.resetTargetChannel;
		visible = arg1.props.visible;
		onAbsoluteSizeChanged = arg1.props.onAbsoluteSizeChanged;
		onAbsolutePositionChanged = arg1.props.onAbsolutePositionChanged;
		chatWindowSettings = arg1.props.chatWindowSettings;
		showTranslationButton = arg1.props.showTranslationButton;
		targetTextChannel = arg1.props.targetTextChannel;
		isChannelBarVisible = arg1.props.isChannelBarVisible;
		onFocus = arg1.props.onFocus;
		onUnfocus = arg1.props.onUnfocus;
	})
end
local GetFFlagUnreduxChatTransparency_upvr = require(Parent.SharedFlags).GetFFlagUnreduxChatTransparency
local GetTransparencyStore_upvr = require(ExpChat.Stores.GetTransparencyStore)
local UserInteraction_upvr = require(ExpChat.Actions.UserInteraction)
return require(Parent.RoactRodux).connect(function(arg1) -- Line 67
	return {
		chatIntervention = arg1.ChatIntervention;
		messages = arg1.Messages;
		mutedUserIds = arg1.MutedUsers;
		verifiedUserIds = arg1.VerifiedUsers;
		targetTextChannel = arg1.TextChannels.targetTextChannel;
	}
end, function(arg1) -- Line 75
	--[[ Upvalues[3]:
		[1]: GetFFlagUnreduxChatTransparency_upvr (readonly)
		[2]: GetTransparencyStore_upvr (readonly)
		[3]: UserInteraction_upvr (readonly)
	]]
	return {
		onFocus = function() -- Line 77, Named "onFocus"
			--[[ Upvalues[4]:
				[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[2]: GetTransparencyStore_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: UserInteraction_upvr (copied, readonly)
			]]
			if GetFFlagUnreduxChatTransparency_upvr() then
				return GetTransparencyStore_upvr(false).setTextboxFocus()
			end
			return arg1(UserInteraction_upvr("focus"))
		end;
		onUnfocus = function() -- Line 83, Named "onUnfocus"
			--[[ Upvalues[4]:
				[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[2]: GetTransparencyStore_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: UserInteraction_upvr (copied, readonly)
			]]
			if GetFFlagUnreduxChatTransparency_upvr() then
				return GetTransparencyStore_upvr(false).clearTextboxFocus()
			end
			return arg1(UserInteraction_upvr("unfocus"))
		end;
	}
end)(any_extend_result1)