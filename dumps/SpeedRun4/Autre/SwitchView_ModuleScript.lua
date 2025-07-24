-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:21
-- Luau version 6, Types version 3
-- Time taken: 0.000476 seconds

local React_upvr = require(script.Parent.Parent.Parent.Parent.React)
local SceneView_upvr = require(script.Parent.Parent.SceneView)
return function(arg1) -- Line 8, Named "SwitchView"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: SceneView_upvr (readonly)
	]]
	local state = arg1.navigation.state
	local var4 = arg1.descriptors[state.routes[state.index].key]
	return React_upvr.createElement(SceneView_upvr, {
		component = var4.getComponent();
		navigation = var4.navigation;
		screenProps = arg1.screenProps;
	})
end