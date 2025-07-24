-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:20
-- Luau version 6, Types version 3
-- Time taken: 0.002826 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local SocialLibraries = require(AppChat.SocialLibraries)
local tbl_upvr = {
	messageUnavailableKey = "Feature.Chat.Message.MessageUnavailable";
	boldTitle = true;
	childWidth = 0;
	isLoading = false;
	Size = UDim2.new(1, 0, 1, 0);
	hideLeftAvatarPadding = false;
	style = Cryo_upvr.Dictionary.join(SocialLibraries.Components.TestStyle, {
		Tokens = {
			Global = {
				Color = {
					None = {};
				};
			};
		};
	});
}
local useIsUserPending_upvr = require(AppChat.Hooks.useIsUserPending)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local FFlagAppChatRemoveUserProfileTitles_upvr = require(AppChat.Flags.FFlagAppChatRemoveUserProfileTitles)
local getConversationTitle_upvr = require(AppChat.Conversations.getConversationTitle)
local getConversationDisplayTitle_upvr = SocialLibraries.Conversation.getConversationDisplayTitle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local PresenceBubbleCellStyled_upvr = require(script.Parent.PresenceBubbleCellStyled)
local Images_upvr = require(Parent.UIBlox).App.ImageSet.Images
return React_upvr.memo(function(arg1) -- Line 59, Named "ConversationCell"
	--[[ Upvalues[11]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useIsUserPending_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: dependencyArray_upvr (readonly)
		[6]: FFlagAppChatRemoveUserProfileTitles_upvr (readonly)
		[7]: getConversationTitle_upvr (readonly)
		[8]: getConversationDisplayTitle_upvr (readonly)
		[9]: useLocalization_upvr (readonly)
		[10]: PresenceBubbleCellStyled_upvr (readonly)
		[11]: Images_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local conversation = any_join_result1_upvr.conversation
	local var21 = conversation
	if not var21 then
		var21 = {}
	end
	local var11_result1 = useIsUserPending_upvr(var21)
	local function var23() -- Line 65
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.onActivated then
			any_join_result1_upvr.onActivated(any_join_result1_upvr.conversation)
		end
	end
	if FFlagAppChatRemoveUserProfileTitles_upvr then
		var23 = getConversationTitle_upvr(conversation)
	else
		var23 = getConversationDisplayTitle_upvr(conversation)
	end
	local subTitleText = any_join_result1_upvr.subTitleText
	if subTitleText then
		subTitleText = any_join_result1_upvr.subTitleText:split('\n')
	end
	if not subTitleText or not subTitleText[1] then
	end
	if var11_result1 then
	end
	local module = {
		boldTitle = any_join_result1_upvr.boldTitle;
		style = any_join_result1_upvr.style;
		childWidth = any_join_result1_upvr.childWidth;
		onActivated = React_upvr.useCallback(var23, dependencyArray_upvr(any_join_result1_upvr.onActivated));
		onCircleActivated = any_join_result1_upvr.onCircleActivated;
		subTitleText = useLocalization_upvr({
			subTitleText = any_join_result1_upvr.messageUnavailableKey;
		}).subTitleText;
	}
	if not var11_result1 or not Images_upvr["icons/status/private_small"] then
	end
	module.subTitleIcon = nil
	module.secondaryTitleText = any_join_result1_upvr.secondaryTitleText
	module.Size = any_join_result1_upvr.Size
	module.isLoading = any_join_result1_upvr.isLoading
	module.avatarCirclePresenceImage = conversation.presenceImage
	module.titleText = var23
	module.thumbnails = conversation.thumbnails
	module.conversationId = conversation.id
	module.hideLeftAvatarPadding = any_join_result1_upvr.hideLeftAvatarPadding
	module.paddingLeft = any_join_result1_upvr.paddingLeft
	module.paddingRight = any_join_result1_upvr.paddingRight
	local children = any_join_result1_upvr.children
	if not children then
		children = {}
	end
	return React_upvr.createElement(PresenceBubbleCellStyled_upvr, module, children)
end)