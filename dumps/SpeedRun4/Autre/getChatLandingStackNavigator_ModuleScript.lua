-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:47
-- Luau version 6, Types version 3
-- Time taken: 0.000611 seconds

local function instantTransitionConfig_upvr() -- Line 8, Named "instantTransitionConfig"
	return {
		transitionSpec = {
			frequency = 1000000;
			dampingRatio = 1;
		};
	}
end
local RoactNavigation_upvr = require(script:FindFirstAncestor("AppChat").Parent.RoactNavigation)
local chatLandingStackNavigatorScreens_upvr = require(script.Parent.chatLandingStackNavigatorScreens)
return function(arg1) -- Line 17, Named "getChatLandingStackNavigator"
	--[[ Upvalues[3]:
		[1]: RoactNavigation_upvr (readonly)
		[2]: chatLandingStackNavigatorScreens_upvr (readonly)
		[3]: instantTransitionConfig_upvr (readonly)
	]]
	local module = {}
	local var6
	if arg1 then
		var6 = instantTransitionConfig_upvr
	else
		var6 = nil
	end
	module.transitionConfig = var6
	return RoactNavigation_upvr.createRobloxStackNavigator(chatLandingStackNavigatorScreens_upvr, module)
end