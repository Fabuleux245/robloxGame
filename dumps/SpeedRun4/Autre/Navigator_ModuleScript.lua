-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:42
-- Luau version 6, Types version 3
-- Time taken: 0.001281 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local RoactNavigation = dependencies.RoactNavigation
local module = {}
local tbl = {}
local tbl_3 = {
	screen = dependencies.SocialLibraries.Components.ToastScreen;
}
local tbl_2 = {
	overlayEnabled = true;
	overlayTransparency = 1;
}
local var11 = false
tbl_2.absorbInput = var11
if require(FriendsLanding.Parent.SharedFlags).FFlagRemoveUnderlyingPageUsageEnabled then
	var11 = nil
else
	var11 = true
end
tbl_2.renderUnderlyingPage = var11
tbl_3.navigationOptions = tbl_2
tbl[require(FriendsLanding.EnumScreens).GenericToast] = tbl_3
module[1] = {
	ModalStackNavigator = {
		screen = require(FriendsLanding.Navigator.ModalStackNavigator);
		navigationOptions = {
			transparent = true;
			absorbInputSelectable = false;
		};
	};
}
module[2] = tbl
return RoactNavigation.createRobloxStackNavigator(module, {
	mode = RoactNavigation.StackPresentationStyle.Overlay;
})