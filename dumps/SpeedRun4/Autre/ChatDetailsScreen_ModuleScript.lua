-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:12
-- Luau version 6, Types version 3
-- Time taken: 0.003241 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local Logger_upvr = require(script.Parent.Logger)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatDetailsScreen")
any_extend_result1.defaultProps = {
	navigation = nil;
}
local GetFFlagAppChatRebrandStringUpdates_upvr = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
function any_extend_result1.navigationOptions() -- Line 17
	--[[ Upvalues[2]:
		[1]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[2]: SquadExperimentation_upvr (readonly)
	]]
	local module = {}
	local tbl = {}
	local var12
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		var12 = "Feature.Chat.Label.Details"
	else
		var12 = "Feature.Chat.Label.ChatDetails"
	end
	tbl.raw = var12
	var12 = true
	tbl.shouldLocalize = var12
	module.headerText = tbl
	return module
end
local EnumScreens_upvr = require(AppChat.EnumScreens)
function any_extend_result1.init(arg1) -- Line 28
	--[[ Upvalues[2]:
		[1]: Logger_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
	]]
	function arg1.navigateToEditChatMembers(arg1_2) -- Line 29
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To EditChatMembers from {screen}")
		local tbl_3 = {}
		tbl_3.conversation = arg1_2
		arg1.props.navigation.navigate(EnumScreens_upvr.EditChatMembers, tbl_3)
	end
	function arg1.navigateToToast(arg1_3) -- Line 34
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Toast from {screen}")
		arg1.props.navigation.navigate(EnumScreens_upvr.RoactChatToast, arg1_3)
	end
	function arg1.navigateToDialog(arg1_4, arg2) -- Line 39
		--[[ Upvalues[2]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		Logger_upvr:info("Navigate To {} from {screen}", arg1_4)
		arg1.props.navigation.navigate(arg1_4, arg2)
	end
	function arg1.navigateBack() -- Line 44
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.navigation.isFocused() then
			arg1.props.navigation.goBack()
		end
	end
	function arg1.navigateToConversation(arg1_5) -- Line 50
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Conversation from {screen}")
		local tbl_2 = {}
		tbl_2.conversationId = arg1_5
		arg1.props.navigation.navigate(EnumScreens_upvr.ChatConversation, tbl_2)
	end
	function arg1.navigateToChatLanding() -- Line 55
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To ChatLanding from {screen}")
		if arg1.props.navigation.getScreenProps("wideMode", false) then
			arg1.props.navigation.navigate(EnumScreens_upvr.EmptyConversation)
		else
			arg1.props.navigation.navigate(EnumScreens_upvr.ChatLanding)
		end
	end
end
local ChatDetailsContainer_upvr = require(script.Parent.ChatDetailsContainer)
function any_extend_result1.render(arg1) -- Line 66
	--[[ Upvalues[3]:
		[1]: Logger_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ChatDetailsContainer_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	local var24
	if type(navigation) == "nil" then
		var24 = false
	else
		var24 = true
	end
	assert(var24, "ChatDetailsScreen should be wrapped with Roact Navigation")
	var24 = "conversationId"
	local any_getParam_result1 = navigation.getParam(var24, nil)
	if any_getParam_result1 == nil then
		var24 = Logger_upvr:warning
		var24("ConversationId is required to open {screen}")
		var24 = nil
		return var24
	end
	var24 = Roact_upvr.createElement
	var24 = var24(ChatDetailsContainer_upvr, {
		topBarHeight = navigation.getScreenProps("topBarHeight", 0);
		wideMode = navigation.getScreenProps("wideMode", false);
		conversationId = any_getParam_result1;
		navigateBack = arg1.navigateBack;
		navigateToEditChatMembers = arg1.navigateToEditChatMembers;
		navigateToDialog = arg1.navigateToDialog;
		navigateToToast = arg1.navigateToToast;
		navigateToConversation = arg1.navigateToConversation;
		navigateToChatLanding = arg1.navigateToChatLanding;
	})
	return var24
end
function any_extend_result1.didMount(arg1) -- Line 89
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
end
return any_extend_result1