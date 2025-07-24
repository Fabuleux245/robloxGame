-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:44
-- Luau version 6, Types version 3
-- Time taken: 0.001797 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local RoactNavigation = dependencies.RoactNavigation
local EnumScreens = require(FriendsLanding.EnumScreens)
local Roact_upvr = dependencies.Roact
local FriendsLandingContext_upvr = require(FriendsLanding.FriendsLandingContext)
local DiscoverabilityOverlay_upvr = dependencies.DiscoverabilityOverlay
Roact_upvr.PureComponent:extend("DiscoverabilityWrapped").render = function(arg1) -- Line 18, Named "render"
	--[[ Upvalues[3]:
		[1]: FriendsLandingContext_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: DiscoverabilityOverlay_upvr (readonly)
	]]
	return FriendsLandingContext_upvr.with(function(arg1_2) -- Line 19
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: DiscoverabilityOverlay_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local module = {
			navigation = arg1.props.navigation;
		}
		module.context = arg1_2
		return Roact_upvr.createElement(DiscoverabilityOverlay_upvr, module)
	end)
end
return RoactNavigation.createRobloxStackNavigator({{
	MainStackNavigator = {
		screen = require(FriendsLanding.Navigator.MainStackNavigatorConnector);
		navigationOptions = {
			overlayTransparency = 1;
		};
	};
}, {
	[EnumScreens.FilterByModal] = {
		screen = require(FriendsLanding.Components.FriendsLandingFilter);
	};
}, {
	[EnumScreens.ContextualMenu] = require(FriendsLanding.Components.FriendsLandingContextualMenu);
}, {
	[EnumScreens.ProfileQRCodePage] = require(FriendsLanding.Navigator.ProfileQRCodePageWrapper);
}}, {
	defaultNavigationOptions = {
		overlayEnabled = true;
		absorbInput = true;
		absorbInputSelectable = false;
	};
	mode = RoactNavigation.StackPresentationStyle.Overlay;
})