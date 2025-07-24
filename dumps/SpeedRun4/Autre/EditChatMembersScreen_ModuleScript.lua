-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:55
-- Luau version 6, Types version 3
-- Time taken: 0.003806 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local EnumScreens_upvr = require(AppChat.EnumScreens)
local ArgCheck_upvr = require(Parent.ArgCheck)
local Roact_upvr = require(Parent.Roact)
local Logger_upvr = require(script.Parent.Logger)
local any_extend_result1 = Roact_upvr.PureComponent:extend("EditChatMembersScreen")
any_extend_result1.defaultProps = {}
local FFlagRenameFriendsToConnectionsAppChat_upvr = require(Parent.SharedFlags).FFlagRenameFriendsToConnectionsAppChat
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
local TopBarContext_upvr = require(AppChat.TopBarContext)
local withLocalization_upvr = require(Parent.Localization).withLocalization
local createSystemMenuButton_upvr = require(AppChat.Components.SelectChatMembers.createSystemMenuButton)
function any_extend_result1.navigationOptions() -- Line 21
	--[[ Upvalues[8]:
		[1]: FFlagRenameFriendsToConnectionsAppChat_upvr (readonly)
		[2]: UniversalAppPolicy_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: TopBarContext_upvr (readonly)
		[5]: EnumScreens_upvr (readonly)
		[6]: ArgCheck_upvr (readonly)
		[7]: withLocalization_upvr (readonly)
		[8]: createSystemMenuButton_upvr (readonly)
	]]
	local module = {}
	local tbl_2 = {}
	local var16
	if FFlagRenameFriendsToConnectionsAppChat_upvr and UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections() then
		var16 = "Feature.Chat.Label.AddConnections"
	else
		var16 = "Feature.Chat.Label.AddFriends"
	end
	tbl_2.raw = var16
	var16 = true
	tbl_2.shouldLocalize = var16
	module.headerText = tbl_2
	module.backButtonEnabled = true
	function module.renderRight() -- Line 33
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: TopBarContext_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
			[4]: ArgCheck_upvr (copied, readonly)
			[5]: withLocalization_upvr (copied, readonly)
			[6]: createSystemMenuButton_upvr (copied, readonly)
		]]
		local module_2 = {}
		local function render(arg1) -- Line 35
			--[[ Upvalues[4]:
				[1]: EnumScreens_upvr (copied, readonly)
				[2]: ArgCheck_upvr (copied, readonly)
				[3]: withLocalization_upvr (copied, readonly)
				[4]: createSystemMenuButton_upvr (copied, readonly)
			]]
			local any_getScreenTopBar_result1_upvr = arg1.getScreenTopBar(EnumScreens_upvr.EditChatMembers)
			ArgCheck_upvr.isType(any_getScreenTopBar_result1_upvr, "table", "screenTopBar")
			return withLocalization_upvr({
				systemButtonText = "Feature.Chat.Action.Add";
				networkErrorText = "Feature.Chat.Response.NetworkError";
				invalidParticipantText = "Feature.Chat.Toast.Error.InvalidUserSelected";
			})(function(arg1_2) -- Line 43
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
		module_2.render = render
		return Roact_upvr.createElement(TopBarContext_upvr.Consumer, module_2)
	end
	return module
end
function any_extend_result1.init(arg1) -- Line 56
	--[[ Upvalues[3]:
		[1]: Logger_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
		[3]: ArgCheck_upvr (readonly)
	]]
	function arg1.navigateToConversation(arg1_3) -- Line 57
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Conversation: {} from {screen}", arg1_3)
		local tbl_3 = {}
		tbl_3.conversationId = arg1_3
		arg1.props.navigation.navigate(EnumScreens_upvr.ChatConversation, tbl_3)
	end
	function arg1.navigateToToast(arg1_4) -- Line 62
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Toast from {screen}")
		arg1.props.navigation.navigate(EnumScreens_upvr.RoactChatToast, arg1_4)
	end
	function arg1.setSystemButtonActivated(arg1_5) -- Line 67
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local any_getScreenProps_result1_2 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
		ArgCheck_upvr.isNotNil(any_getScreenProps_result1_2, "setScreenTopBar in screenProps")
		local tbl = {}
		tbl.systemButtonActivated = arg1_5
		any_getScreenProps_result1_2(EnumScreens_upvr.EditChatMembers, tbl)
	end
	function arg1.setSystemButtonEnabled(arg1_6) -- Line 76
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local any_getScreenProps_result1 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
		ArgCheck_upvr.isNotNil(any_getScreenProps_result1, "setScreenTopBar in screenProps")
		local tbl_4 = {}
		tbl_4.systemButtonEnabled = arg1_6
		any_getScreenProps_result1(EnumScreens_upvr.EditChatMembers, tbl_4)
	end
end
local EditChatMembersContainer_upvr = require(script.Parent.EditChatMembersContainer)
function any_extend_result1.render(arg1) -- Line 86
	--[[ Upvalues[4]:
		[1]: ArgCheck_upvr (readonly)
		[2]: Logger_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: EditChatMembersContainer_upvr (readonly)
	]]
	local any_isNotNil_result1 = ArgCheck_upvr.isNotNil(arg1.props.navigation, "navigation in EditChatMembersScreen")
	local any_getParam_result1 = any_isNotNil_result1.getParam("conversation", nil)
	if not any_getParam_result1 then
		Logger_upvr:warning("Conversation info required to open {screen}")
		return nil
	end
	return Roact_upvr.createElement(EditChatMembersContainer_upvr, {
		topBarHeight = any_isNotNil_result1.getScreenProps("topBarHeight", 0);
		conversation = any_getParam_result1;
		navigateToConversation = arg1.navigateToConversation;
		navigateToToast = arg1.navigateToToast;
		setSystemButtonActivated = arg1.setSystemButtonActivated;
		setSystemButtonEnabled = arg1.setSystemButtonEnabled;
	})
end
function any_extend_result1.didMount(arg1) -- Line 105
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
	arg1.setSystemButtonEnabled(false)
end
return any_extend_result1