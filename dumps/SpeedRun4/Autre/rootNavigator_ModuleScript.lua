-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:52
-- Luau version 6, Types version 3
-- Time taken: 0.001513 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local RoactNavigation = require(Parent.RoactNavigation)
local chatLandingWithDialogsNavigator_upvr = require(script.Parent.chatLandingWithDialogsNavigator)
local any_extend_result1 = Roact_upvr.Component:extend("ChatLandingWithDialogsNavigatorConnector")
any_extend_result1.router = chatLandingWithDialogsNavigator_upvr.router
function any_extend_result1.render(arg1) -- Line 17
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: chatLandingWithDialogsNavigator_upvr (readonly)
	]]
	return Roact_upvr.createElement(chatLandingWithDialogsNavigator_upvr, arg1.props)
end
local module = {}
local tbl_3 = {}
local tbl_2 = {
	screen = require(AppChat.Components.Toast.ToastScreen);
}
local tbl = {
	overlayEnabled = true;
	overlayTransparency = 1;
}
local var12 = false
tbl.absorbInput = var12
if require(Parent.SharedFlags).FFlagRemoveUnderlyingPageUsageEnabled then
	var12 = nil
else
	var12 = false
end
tbl.renderUnderlyingPage = var12
tbl_2.navigationOptions = tbl
tbl_3[require(AppChat.EnumScreens).RoactChatToast] = tbl_2
module[1] = {
	ChatLandingWithDialogs = any_extend_result1;
}
module[2] = tbl_3
return RoactNavigation.createRobloxStackNavigator(module, {
	mode = RoactNavigation.StackPresentationStyle.Overlay;
})