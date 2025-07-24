-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:52
-- Luau version 6, Types version 3
-- Time taken: 0.004931 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local EnumScreens_upvr = require(AppChat.EnumScreens)
local ArgCheck_upvr = require(Parent.ArgCheck)
local Roact_upvr = require(Parent.Roact)
local Logger_upvr = require(script.Parent.Logger)
local any_extend_result1 = Roact_upvr.PureComponent:extend("CreateNewChatScreen")
any_extend_result1.defaultProps = {}
local GetFFlagAppChatRebrandStringUpdates_upvr = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local FFlagRenameFriendsToConnectionsAppChatFullLaunch_upvr = require(Parent.SharedFlags).FFlagRenameFriendsToConnectionsAppChatFullLaunch
local FFlagRenameFriendsToConnectionsAppChat_upvr = require(Parent.SharedFlags).FFlagRenameFriendsToConnectionsAppChat
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
local TopBarContext_upvr = require(AppChat.TopBarContext)
local withLocalization_upvr = require(Parent.Localization).withLocalization
local createSystemMenuButton_upvr = require(AppChat.Components.SelectChatMembers.createSystemMenuButton)
function any_extend_result1.navigationOptions() -- Line 24
	--[[ Upvalues[11]:
		[1]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[2]: SquadExperimentation_upvr (readonly)
		[3]: FFlagRenameFriendsToConnectionsAppChatFullLaunch_upvr (readonly)
		[4]: FFlagRenameFriendsToConnectionsAppChat_upvr (readonly)
		[5]: UniversalAppPolicy_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: TopBarContext_upvr (readonly)
		[8]: EnumScreens_upvr (readonly)
		[9]: ArgCheck_upvr (readonly)
		[10]: withLocalization_upvr (readonly)
		[11]: createSystemMenuButton_upvr (readonly)
	]]
	local module = {}
	local tbl_5 = {}
	local var19
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		if FFlagRenameFriendsToConnectionsAppChatFullLaunch_upvr or FFlagRenameFriendsToConnectionsAppChat_upvr and UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections() then
			var19 = "Feature.Chat.Heading.PartyWithConnections"
		else
			var19 = "Feature.Chat.Heading.PartyWithFriends"
		end
	elseif FFlagRenameFriendsToConnectionsAppChatFullLaunch_upvr or FFlagRenameFriendsToConnectionsAppChat_upvr and UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections() then
		var19 = "Feature.Chat.Heading.ChatWithConnections"
	else
		var19 = "Feature.Chat.Heading.ChatWithFriends"
	end
	tbl_5.raw = var19
	var19 = true
	tbl_5.shouldLocalize = var19
	module.headerText = tbl_5
	module.backButtonEnabled = true
	function module.renderRight() -- Line 43
		--[[ Upvalues[8]:
			[1]: Roact_upvr (copied, readonly)
			[2]: TopBarContext_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
			[4]: ArgCheck_upvr (copied, readonly)
			[5]: withLocalization_upvr (copied, readonly)
			[6]: GetFFlagAppChatRebrandStringUpdates_upvr (copied, readonly)
			[7]: SquadExperimentation_upvr (copied, readonly)
			[8]: createSystemMenuButton_upvr (copied, readonly)
		]]
		local module_4 = {}
		local function render(arg1) -- Line 45
			--[[ Upvalues[6]:
				[1]: EnumScreens_upvr (copied, readonly)
				[2]: ArgCheck_upvr (copied, readonly)
				[3]: withLocalization_upvr (copied, readonly)
				[4]: GetFFlagAppChatRebrandStringUpdates_upvr (copied, readonly)
				[5]: SquadExperimentation_upvr (copied, readonly)
				[6]: createSystemMenuButton_upvr (copied, readonly)
			]]
			local any_getScreenTopBar_result1_upvr = arg1.getScreenTopBar(EnumScreens_upvr.CreateNewChat)
			ArgCheck_upvr.isType(any_getScreenTopBar_result1_upvr, "table", "screenTopBar")
			local module_2 = {}
			local var23
			if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
				var23 = "Feature.Chat.Action.Create"
			else
				var23 = "Feature.Chat.Action.StartChatWithFriends"
			end
			module_2.systemButtonText = var23
			var23 = "Feature.Chat.Response.NetworkError"
			module_2.networkErrorText = var23
			var23 = "Feature.Chat.Toast.Error.InvalidUserSelected"
			module_2.invalidParticipantText = var23
			return withLocalization_upvr(module_2)(function(arg1_2) -- Line 56
				--[[ Upvalues[2]:
					[1]: createSystemMenuButton_upvr (copied, readonly)
					[2]: any_getScreenTopBar_result1_upvr (readonly)
				]]
				local module_3 = {}
				module_3.localizedStrings = arg1_2
				module_3.isDisabled = not any_getScreenTopBar_result1_upvr.systemButtonEnabled
				module_3.onActivated = any_getScreenTopBar_result1_upvr.systemButtonActivated
				return createSystemMenuButton_upvr(module_3)
			end)
		end
		module_4.render = render
		return Roact_upvr.createElement(TopBarContext_upvr.Consumer, module_4)
	end
	return module
end
function any_extend_result1.init(arg1) -- Line 69
	--[[ Upvalues[3]:
		[1]: Logger_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
		[3]: ArgCheck_upvr (readonly)
	]]
	function arg1.navigateToConversation(arg1_3) -- Line 70
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Logger_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local navigation = arg1.props.navigation
		Logger_upvr:info("Navigate To Conversation: {} from {screen}", arg1_3)
		if navigation.getScreenProps("wideMode", false) then
			local tbl_4 = {}
			tbl_4.conversationId = arg1_3
			navigation.navigate(EnumScreens_upvr.ChatConversation, tbl_4)
		else
			local tbl = {}
			tbl.conversationId = arg1_3
			navigation.replace(EnumScreens_upvr.ChatConversation, tbl)
		end
	end
	function arg1.navigateToToast(arg1_4) -- Line 81
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Toast from {screen}")
		arg1.props.navigation.navigate(EnumScreens_upvr.RoactChatToast, arg1_4)
	end
	function arg1.setSystemButtonActivated(arg1_5) -- Line 86
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local any_getScreenProps_result1_2 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
		ArgCheck_upvr.isNotNil(any_getScreenProps_result1_2, "setScreenTopBar in screenProps")
		local tbl_2 = {}
		tbl_2.systemButtonActivated = arg1_5
		any_getScreenProps_result1_2(EnumScreens_upvr.CreateNewChat, tbl_2)
	end
	function arg1.setSystemButtonEnabled(arg1_6) -- Line 95
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local any_getScreenProps_result1 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
		ArgCheck_upvr.isNotNil(any_getScreenProps_result1, "setScreenTopBar in screenProps")
		local tbl_3 = {}
		tbl_3.systemButtonEnabled = arg1_6
		any_getScreenProps_result1(EnumScreens_upvr.CreateNewChat, tbl_3)
	end
end
local CreateNewChatContainer_upvr = require(script.Parent.CreateNewChatContainer)
function any_extend_result1.render(arg1) -- Line 105
	--[[ Upvalues[3]:
		[1]: ArgCheck_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: CreateNewChatContainer_upvr (readonly)
	]]
	return Roact_upvr.createElement(CreateNewChatContainer_upvr, {
		topBarHeight = ArgCheck_upvr.isNotNil(arg1.props.navigation, "navigation in CreateNewChatScreen").getScreenProps("topBarHeight", 0);
		navigateToConversation = arg1.navigateToConversation;
		navigateToToast = arg1.navigateToToast;
		setSystemButtonActivated = arg1.setSystemButtonActivated;
		setSystemButtonEnabled = arg1.setSystemButtonEnabled;
	})
end
function any_extend_result1.didMount(arg1) -- Line 117
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
	arg1.setSystemButtonEnabled(false)
end
return any_extend_result1