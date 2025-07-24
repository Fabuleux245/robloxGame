-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:20
-- Luau version 6, Types version 3
-- Time taken: 0.000867 seconds

local Parent = script.Parent
local React_upvr = require(Parent.Parent.Parent.React)
local any_extend_result1 = React_upvr.PureComponent:extend("SceneView")
local NavigationContext_upvr = require(Parent.NavigationContext)
function any_extend_result1.render(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: NavigationContext_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	return React_upvr.createElement(NavigationContext_upvr.Provider, {
		value = navigation;
	}, {
		Scene = React_upvr.createElement(arg1.props.component, {
			screenProps = arg1.props.screenProps;
			navigation = navigation;
		});
	})
end
return any_extend_result1