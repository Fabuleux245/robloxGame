-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:44
-- Luau version 6, Types version 3
-- Time taken: 0.000656 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Roact_upvr = require(FriendsLanding.dependencies).Roact
local MainStackNavigator_upvr = require(FriendsLanding.Navigator.MainStackNavigator)
local any_extend_result1 = Roact_upvr.PureComponent:extend("MainStackNavigatorConnector")
local FriendsLandingHeaderBar_upvr = require(FriendsLanding.Components.FriendsLandingHeaderBar)
function any_extend_result1.render(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: FriendsLandingHeaderBar_upvr (readonly)
		[3]: MainStackNavigator_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		topBar = Roact_upvr.createElement(FriendsLandingHeaderBar_upvr, {
			navigation = arg1.props.navigation;
		});
		navigator = Roact_upvr.createElement(MainStackNavigator_upvr, {
			navigation = arg1.props.navigation;
		});
	})
end
any_extend_result1.router = MainStackNavigator_upvr.router
return any_extend_result1