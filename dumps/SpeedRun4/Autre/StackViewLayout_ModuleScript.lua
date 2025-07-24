-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:17
-- Luau version 6, Types version 3
-- Time taken: 0.006590 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent.Parent
local Object_upvr = require(Parent.LuauPolyfill).Object
local React_upvr = require(Parent.React)
local tbl_2_upvr = {
	absorbInput = true;
	absorbInputSelectable = true;
	overlayEnabled = false;
	overlayColor3 = Color3.new(0, 0, 0);
	overlayTransparency = 0.7;
}
local StackViewOverlayFrame_upvr = require(Parent_3.StackViewOverlayFrame)
function tbl_2_upvr.renderOverlay(arg1, arg2, arg3) -- Line 22
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: StackViewOverlayFrame_upvr (readonly)
	]]
	local module_4 = {}
	module_4.navigationOptions = arg1
	module_4.initialTransitionValue = arg2
	module_4.transitionChangedSignal = arg3
	return React_upvr.createElement(StackViewOverlayFrame_upvr, module_4)
end
tbl_2_upvr.transparent = false
local function _(arg1, arg2) -- Line 34, Named "calculateTransitionValue"
	return math.max(math.min(1 + arg2 - arg1, 1), 0)
end
local any_extend_result1 = React_upvr.Component:extend("StackViewLayout")
function any_extend_result1.init(arg1) -- Line 40
	arg1:setState({})
	arg1._isMounted = false
	arg1._positionLastValue = arg1.props.transitionProps.navigation.state.index
	function arg1._renderScene(arg1_2) -- Line 47
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_renderInnerScene(arg1_2)
	end
	function arg1._subscribeToOverlayUpdates(arg1_3) -- Line 51
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local index_upvr = arg1.props.transitionProps.scene.index
		return arg1.props.transitionProps.position:onStep(function(arg1_4) -- Line 55
			--[[ Upvalues[2]:
				[1]: arg1_3 (readonly)
				[2]: index_upvr (readonly)
			]]
			arg1_3(math.max(math.min(1 + arg1_4 - index_upvr, 1), 0))
		end)
	end
end
local StackViewCard_upvr = require(Parent_3.StackViewCard)
function any_extend_result1._renderCard(arg1, arg2, arg3) -- Line 61
	--[[ Upvalues[3]:
		[1]: Object_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: StackViewCard_upvr (readonly)
	]]
	local transitionProps = arg1.props.transitionProps
	local lastTransitionProps = arg1.props.lastTransitionProps
	local var17
	if lastTransitionProps then
		var17 = lastTransitionProps.scene.index
	end
	local module = {}
	local screenInterpolator = arg1.state.transitionConfig.screenInterpolator
	if screenInterpolator then
		local tbl = {
			initialPositionValue = var17;
		}
		tbl.scene = arg2
		module = screenInterpolator(Object_upvr.assign(table.clone(transitionProps), tbl))
	end
	local module_2 = {
		key = "card_"..tostring(arg2.key);
	}
	module_2.scene = arg2
	local _renderScene_2 = arg1._renderScene
	module_2.renderScene = _renderScene_2
	if arg3.overlayEnabled or arg3.transparent then
		_renderScene_2 = nil
	else
		_renderScene_2 = arg3.cardColor3
	end
	module_2.cardColor3 = _renderScene_2
	return React_upvr.createElement(StackViewCard_upvr, Object_upvr.assign(table.clone(transitionProps), module, module_2))
end
local SceneView_upvr = require(Parent_2.SceneView)
function any_extend_result1._renderInnerScene(arg1, arg2) -- Line 96
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: SceneView_upvr (readonly)
	]]
	return React_upvr.createElement(SceneView_upvr, {
		screenProps = arg1.props.screenProps;
		navigation = arg2.descriptor.navigation;
		component = arg2.descriptor.getComponent();
	})
end
function any_extend_result1.render(arg1) -- Line 109
	--[[ Upvalues[3]:
		[1]: Object_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_3 = {}
	for _, v in arg1.props.transitionProps.scenes do
		local var34
		if var34 < arg1.state.topMostOpaqueSceneIndex then
			var34 = v.isActive
			local var35 = not var34
		end
		if v.descriptor.options then
			var34 = Object_upvr.assign(table.clone(tbl_2_upvr), v.descriptor.options)
		else
			var34 = table.clone(tbl_2_upvr)
		end
		if var34.overlayEnabled then
		end
		local var38
		if not var35 and var34.absorbInput then
			var38 = React_upvr.createElement("TextButton", {
				Active = true;
				Selectable = var34.absorbInputSelectable;
				AutoButtonColor = false;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, 0);
				Text = ' ';
				ZIndex = 2 * v.index - 1;
			})
		end
		module_3[tostring(v.key)] = React_upvr.createElement(React_upvr.Fragment, {}, {
			AbsorbInput = var38;
			[tostring(v.index)] = React_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ClipsDescendants = false;
				ZIndex = 2 * v.index;
				Visible = not var35;
			}, {
				StationaryContent = React_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
					ClipsDescendants = true;
					BorderSizePixel = 0;
					ZIndex = 1;
				}, {
					Overlay = var34.renderOverlay(var34, math.max(math.min(1 + arg1._positionLastValue - v.index, 1), 0), arg1._subscribeToOverlayUpdates);
				});
				DynamicContent = React_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
					ClipsDescendants = false;
					BorderSizePixel = 0;
					ZIndex = 2;
				}, {
					["card_"..v.key] = arg1:_renderCard(v, var34);
				});
			});
		})
	end
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		ClipsDescendants = false;
		BorderSizePixel = 0;
	}, module_3)
end
local StackPresentationStyle_upvr = require(Parent_3.StackPresentationStyle)
local StackViewTransitionConfigs_upvr = require(Parent_3.StackViewTransitionConfigs)
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 204
	--[[ Upvalues[4]:
		[1]: StackPresentationStyle_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: StackViewTransitionConfigs_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
	local var50
	if arg1.mode ~= StackPresentationStyle_upvr.Modal then
		if arg1.mode ~= StackPresentationStyle_upvr.Overlay then
		else
		end
	end
	local len = #arg1.transitionProps.scenes
	-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [69] 49. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [69] 49. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 23. Error Block 29 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.14]
	if nil then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [33] 23. Error Block 29 end (CF ANALYSIS FAILED)
end
function any_extend_result1.didMount(arg1) -- Line 243
	arg1._isMounted = true
	arg1._positionDisconnector = arg1.props.transitionProps.position:onStep(function(...) -- Line 246
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:_onPositionStep(...)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 251
	arg1._isMounted = false
	if arg1._positionDisconnector then
		arg1._positionDisconnector()
		arg1._positionDisconnector = nil
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 260
	local position = arg1.props.transitionProps.position
	if position ~= arg2.transitionProps.position then
		arg1._positionDisconnector()
		arg1._positionDisconnector = position:onStep(function(...) -- Line 265
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_onPositionStep(...)
		end)
	end
end
function any_extend_result1._onPositionStep(arg1, arg2) -- Line 271
	if arg1._isMounted then
		arg1._positionLastValue = arg2
	end
end
return any_extend_result1