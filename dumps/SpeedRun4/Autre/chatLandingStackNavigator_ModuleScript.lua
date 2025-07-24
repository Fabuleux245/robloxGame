-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:49
-- Luau version 6, Types version 3
-- Time taken: 0.002024 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local RoactNavigation = require(Parent.RoactNavigation)
local EnumScreens = require(AppChat.EnumScreens)
local default_upvr = require(Parent.SocialCommon).Experiments.NewChatTabExperimentation.default
local FFlagEnableAppChatFocusableFixes_upvr = require(Parent.SharedFlags).FFlagEnableAppChatFocusableFixes
local createOverlayTopBarStackNavigatorWithFocus_upvr = require(AppChat.Navigators.createOverlayTopBarStackNavigatorWithFocus)
local createOverlayTopBarStackNavigator_upvr = require(script:FindFirstAncestor("Navigators").createOverlayTopBarStackNavigator)
local function wrapScreenInOverlayNavigator(arg1, arg2) -- Line 27
	--[[ Upvalues[3]:
		[1]: FFlagEnableAppChatFocusableFixes_upvr (readonly)
		[2]: createOverlayTopBarStackNavigatorWithFocus_upvr (readonly)
		[3]: createOverlayTopBarStackNavigator_upvr (readonly)
	]]
	if FFlagEnableAppChatFocusableFixes_upvr then
		local module_3 = {}
		local tbl_9 = {}
		tbl_9[arg1] = arg2
		module_3[1] = tbl_9
		return createOverlayTopBarStackNavigatorWithFocus_upvr(module_3)
	end
	local module_4 = {}
	local tbl_8 = {}
	tbl_8[arg1] = arg2
	module_4[1] = tbl_8
	return createOverlayTopBarStackNavigator_upvr(module_4)
end
local tbl_2 = {
	backButtonEnabled = true;
	tabBarVisible = true;
	overlayEnabled = true;
	overlayTransparency = 0.5;
}
local var14 = true
tbl_2.absorbInput = var14
local var19
if require(Parent.SharedFlags).FFlagRemoveUnderlyingPageUsageEnabled then
	var14 = nil
else
	var14 = false
end
tbl_2.renderUnderlyingPage = var14
local module = {}
local tbl_7 = {}
local tbl_6 = {
	screen = require(AppChat.Components.ChatLanding.ChatLandingScreenWithSwitchNavigator);
}
if require(AppChat.Flags.getFFlagAppChatRemoveDynamicRequires)() then
	function var19() -- Line 56
		--[[ Upvalues[1]:
			[1]: default_upvr (readonly)
		]]
		if default_upvr.isEnabled() and default_upvr:getConnectTabLeadsToChatTab() then
			return {
				backButtonEnabled = false;
				tabBarVisible = true;
			}
		end
		return {}
	end
elseif default_upvr.isEnabled() and default_upvr:getConnectTabLeadsToChatTab() then
	var19 = {}
	var19.backButtonEnabled = false
	var19.tabBarVisible = true
else
	var19 = {}
end
tbl_6.navigationOptions = var19
tbl_7[EnumScreens.ChatLanding] = tbl_6
local tbl_3 = {}
local tbl = {}
var19 = wrapScreenInOverlayNavigator(EnumScreens.CreateNewChat, require(AppChat.Components.CreateNewChat.CreateNewChatScreen))
tbl.screen = var19
tbl.navigationOptions = tbl_2
tbl_3.CreateNewChatScreenWrapper = tbl
local tbl_5 = {}
var19 = {}
var19.screen = wrapScreenInOverlayNavigator(EnumScreens.EditChatMembers, require(AppChat.Components.EditChatMembers.EditChatMembersScreen))
var19.navigationOptions = tbl_2
tbl_5.EditChatMembersScreenWrapper = var19
module[1] = tbl_7
module[2] = tbl_3
module[3] = tbl_5
if require(Parent.SocialExperiments).SquadQuickStartExperimentation.getPartyQuickStartChangesEnabled() and require(Parent.SharedFlags).FFlagEnablePartyQuickStartButton then
	local tbl_4 = {}
	var19 = {}
	var19.screen = wrapScreenInOverlayNavigator(EnumScreens.QuickStartSquadInviteFriends, require(AppChat.Components.Squads.QuickStartSquadInviteFriendsScreen))
	var19.navigationOptions = tbl_2
	tbl_4.CreatePartyQuickStartWrapper = var19
	table.insert(module, tbl_4)
end
local module_2 = {}
var19 = RoactNavigation.StackPresentationStyle.Overlay
module_2.mode = var19
return RoactNavigation.createRobloxStackNavigator(module, module_2)