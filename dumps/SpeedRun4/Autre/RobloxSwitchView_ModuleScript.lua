-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:20
-- Luau version 6, Types version 3
-- Time taken: 0.001864 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	keepVisitedScreensMounted = false;
}
local any_extend_result1 = React_upvr.Component:extend("RobloxSwitchView")
local Object_upvr = require(Parent.LuauPolyfill).Object
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 16
	--[[ Upvalues[2]:
		[1]: Object_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local state = arg1.navigation.state
	local var10
	if not var10 then
		var10 = {}
	end
	var10 = {}
	var10[state.routes[state.index].key] = true
	if Object_upvr.assign(table.clone(tbl_upvr), var10).keepVisitedScreensMounted and arg2.visitedScreenKeys then
		for i in arg2.visitedScreenKeys do
			if arg1.descriptors[i] ~= nil then
				var10[i] = true
			end
		end
	end
	return {
		visitedScreenKeys = var10;
	}
end
function any_extend_result1.init(arg1) -- Line 44
	arg1.state = {}
end
local SceneView_upvr = require(Parent_2.SceneView)
function any_extend_result1.render(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: SceneView_upvr (readonly)
	]]
	local state_2 = arg1.props.navigation.state
	local var18
	for i_2, v in arg1.props.descriptors do
		if i_2 ~= state_2.routes[state_2.index].key then
			var18 = false
		else
			var18 = true
		end
		if arg1.state.visitedScreenKeys[i_2] == true then
			({})["card_"..i_2] = React_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
				ClipsDescendants = false;
				BorderSizePixel = 0;
				Visible = var18;
			}, {
				Content = React_upvr.createElement(SceneView_upvr, {
					component = v.getComponent();
					navigation = v.navigation;
					screenProps = arg1.props.screenProps;
				});
			})
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return React_upvr.createElement("Folder", nil, {})
end
return any_extend_result1