-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:43
-- Luau version 6, Types version 3
-- Time taken: 0.000632 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local RoactNavigation_upvr = require(FriendsLanding.dependencies).RoactNavigation
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
return RoactNavigation_upvr.createRobloxStackNavigator({{
	[require(FriendsLanding.EnumScreens).FriendsLanding] = {
		screen = require(FriendsLanding.Components.FriendsLandingScreen);
		navigationOptions = require(FriendsLanding.Components.FriendsLandingScreen.NavigationOptions);
	};
}}, {
	transitionConfig = function() -- Line 13, Named "getTransitionConfig"
		--[[ Upvalues[2]:
			[1]: UserGameSettings_upvr (readonly)
			[2]: RoactNavigation_upvr (readonly)
		]]
		if UserGameSettings_upvr.ReducedMotion then
			return RoactNavigation_upvr.StackViewTransitionConfigs.FadeInPlace
		end
		return RoactNavigation_upvr.StackViewTransitionConfigs.SlideFromRight
	end;
})