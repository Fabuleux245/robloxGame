-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:22
-- Luau version 6, Types version 3
-- Time taken: 0.002084 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Roact_upvr = require(AppChat.Parent.Roact)
local Logger_upvr = require(script.Parent.Logger)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ParticipantDialogScreen")
any_extend_result1.defaultProps = {
	navigation = nil;
}
local GenericDialogType_upvr = require(script.Parent.Parent.Dialogs.GenericDialogType)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local RoactChatAnalytics_upvr = require(AppChat.LegacyAnalytics.RoactChatAnalytics)
function any_extend_result1.init(arg1) -- Line 19
	--[[ Upvalues[4]:
		[1]: Logger_upvr (readonly)
		[2]: GenericDialogType_upvr (readonly)
		[3]: EnumScreens_upvr (readonly)
		[4]: RoactChatAnalytics_upvr (readonly)
	]]
	function arg1.onDismiss() -- Line 20
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.navigation.goBack()
	end
	function arg1.openRemoveUserDialog(arg1_2, arg2) -- Line 23
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GenericDialogType_upvr (copied, readonly)
		]]
		Logger_upvr:info("User activated removeFromGroup | userId: {}, conversationId: {}", arg1_2, arg2)
		local tbl = {}
		tbl.conversationId = arg2
		tbl.participantId = arg1_2
		arg1.props.navigation.replace(GenericDialogType_upvr.RemoveUserDialog, tbl)
	end
	function arg1.openViewProfile(arg1_3) -- Line 31
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: Logger_upvr (copied, readonly)
			[4]: RoactChatAnalytics_upvr (copied, readonly)
		]]
		local var13 = arg1.props.navigation.getScreenProps("navigateToLuaAppPages", {})[EnumScreens_upvr.ViewUserProfile]
		if var13 then
			Logger_upvr:info("Navigate To UserProfile from {screen}")
			arg1.props.analytics:navigate(RoactChatAnalytics_upvr.NavigationEvents.ChatDetailsProfile)
			var13(arg1_3, {})
		else
			Logger_upvr:warning("UserProfile page was not set in navigateToLuaAppPages screenProps")
		end
	end
	function arg1.openReportUser(arg1_4, arg2) -- Line 44
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		tbl_2.participantId = arg1_4
		tbl_2.conversationId = arg2
		arg1.props.navigation.replace(EnumScreens_upvr.AppChatReportAbuse, tbl_2)
	end
end
local ParticipantDialogContainer_upvr = require(script.Parent.ParticipantDialogContainer)
function any_extend_result1.render(arg1) -- Line 52
	--[[ Upvalues[3]:
		[1]: Logger_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ParticipantDialogContainer_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	local var18
	if type(navigation) == "nil" then
		var18 = false
	else
		var18 = true
	end
	assert(var18, "ParticipantDialogScreen should be wrapped with Roact Navigation")
	var18 = "conversationId"
	local any_getParam_result1 = navigation.getParam(var18, nil)
	var18 = navigation.getParam("participantId", nil)
	if any_getParam_result1 == nil or var18 == nil then
		Logger_upvr:warning("ConversationId and participantId are required to open {screen}")
		return nil
	end
	return Roact_upvr.createElement(ParticipantDialogContainer_upvr, {
		conversationId = any_getParam_result1;
		participantId = var18;
		showRemoveUserButton = navigation.getParam("showRemoveUserButton", false);
		onDismiss = arg1.onDismiss;
		openRemoveUserDialog = arg1.openRemoveUserDialog;
		openReportUser = arg1.openReportUser;
		openViewProfile = arg1.openViewProfile;
	})
end
function any_extend_result1.didMount(arg1) -- Line 77
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
end
return require(AppChat.LegacyAnalytics.connectAnalytics)(function(arg1) -- Line 81
	local module = {}
	module.analytics = arg1
	return module
end)(any_extend_result1)