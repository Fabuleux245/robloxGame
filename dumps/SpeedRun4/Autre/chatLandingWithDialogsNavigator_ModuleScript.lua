-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:50
-- Luau version 6, Types version 3
-- Time taken: 0.001855 seconds

-- KONSTANTERROR: [0] 1. Error Block 65 start (CF ANALYSIS FAILED)
local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local ChatDetails = AppChat.Components.ChatDetails
local GenericDialogType = require(ChatDetails.Dialogs.GenericDialogType)
local ChatConversation = AppChat.Components.ChatConversation
local FFlagRemoveUnderlyingPageUsageEnabled = require(Parent.SharedFlags).FFlagRemoveUnderlyingPageUsageEnabled
local chatLandingStackNavigator_upvr = require(script.Parent.chatLandingStackNavigator)
local any_extend_result1 = Roact_upvr.Component:extend("ChatLandingStackNavigatorConnector")
any_extend_result1.router = chatLandingStackNavigator_upvr.router
local FFlagAppChatFixDialogClipping_upvr = require(AppChat.Flags.FFlagAppChatFixDialogClipping)
function any_extend_result1.render(arg1) -- Line 39
	--[[ Upvalues[3]:
		[1]: FFlagAppChatFixDialogClipping_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: chatLandingStackNavigator_upvr (readonly)
	]]
	if FFlagAppChatFixDialogClipping_upvr then
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			ClipsDescendants = true;
		}, {
			ChatLandingStackNavigator = Roact_upvr.createElement(chatLandingStackNavigator_upvr, arg1.props);
		})
	end
	return Roact_upvr.createElement(chatLandingStackNavigator_upvr, arg1.props)
end
;({})[require(AppChat.EnumScreens).ChatLandingStack] = any_extend_result1
local tbl_2 = {
	screen = require(ChatDetails.EditChatGroupNameDialog.EditChatGroupNameDialogScreen);
}
local tbl = {
	backButtonEnabled = true;
}
local var16 = true
tbl.overlayEnabled = var16
if FFlagRemoveUnderlyingPageUsageEnabled then
	var16 = nil
else
	var16 = false
end
tbl.renderUnderlyingPage = var16
tbl_2.navigationOptions = tbl
;({})[GenericDialogType.EditChatGroupNameDialog] = tbl_2
local tbl_4 = {
	screen = require(ChatDetails.LeaveGroupDialog.LeaveGroupDialogScreen);
}
local tbl_3 = {
	backButtonEnabled = true;
	overlayEnabled = true;
}
if FFlagRemoveUnderlyingPageUsageEnabled then
	-- KONSTANTWARNING: GOTO [215] #131
end
-- KONSTANTERROR: [0] 1. Error Block 65 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [214] 130. Error Block 73 start (CF ANALYSIS FAILED)
tbl_3.renderUnderlyingPage = false
tbl_4.navigationOptions = tbl_3
;({})[GenericDialogType.LeaveGroupDialog] = tbl_4
;({}).screen = require(ChatDetails.ParticipantDialog.ParticipantDialogScreen)
local _ = {
	backButtonEnabled = true;
	overlayEnabled = true;
}
if FFlagRemoveUnderlyingPageUsageEnabled then
	-- KONSTANTWARNING: GOTO [238] #147
end
-- KONSTANTERROR: [214] 130. Error Block 73 end (CF ANALYSIS FAILED)