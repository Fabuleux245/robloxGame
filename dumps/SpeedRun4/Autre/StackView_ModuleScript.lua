-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:16
-- Luau version 6, Types version 3
-- Time taken: 0.003348 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local React_upvr = require(Parent_2.React)
local StackActions_upvr = require(Parent_3.routers.StackActions)
local module_upvr = {
	mode = require(Parent.StackPresentationStyle).Default;
}
local any_extend_result1 = React_upvr.Component:extend("StackView")
function any_extend_result1.init(arg1) -- Line 20
	function arg1._doRender(...) -- Line 21
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_render(...)
	end
	function arg1._doConfigureTransition(...) -- Line 25
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_configureTransition(...)
	end
	function arg1._doOnTransitionStart(...) -- Line 29
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_onTransitionStart(...)
	end
	function arg1._doOnTransitionEnd(...) -- Line 33
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_onTransitionEnd(...)
	end
	function arg1._doOnTransitionStep(...) -- Line 37
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_onTransitionStep(...)
	end
end
local Transitioner_upvr = require(Parent.Transitioner)
function any_extend_result1.render(arg1) -- Line 42
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Transitioner_upvr (readonly)
	]]
	return React_upvr.createElement(Transitioner_upvr, {
		render = arg1._doRender;
		configureTransition = arg1._doConfigureTransition;
		screenProps = arg1.props.screenProps;
		navigation = arg1.props.navigation;
		descriptors = arg1.props.descriptors;
		onTransitionStart = arg1._doOnTransitionStart;
		onTransitionEnd = arg1._doOnTransitionEnd;
		onTransitionStep = arg1._doOnTransitionStep;
	})
end
function any_extend_result1.didMount(arg1) -- Line 61
	--[[ Upvalues[1]:
		[1]: StackActions_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	if navigation.state.isTransitioning then
		navigation.dispatch(StackActions_upvr.completeTransition({
			key = navigation.state.key;
		}))
	end
end
local Object_upvr = require(Parent_2.LuauPolyfill).Object
local StackViewLayout_upvr = require(Parent.StackViewLayout)
function any_extend_result1._render(arg1, arg2, arg3) -- Line 70
	--[[ Upvalues[4]:
		[1]: Object_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: StackViewLayout_upvr (readonly)
	]]
	local module = {
		screenProps = arg1.props.screenProps;
		descriptors = arg1.props.descriptors;
	}
	module.transitionProps = arg2
	module.lastTransitionProps = arg3
	return React_upvr.createElement(StackViewLayout_upvr, Object_upvr.assign(Object_upvr.assign(table.clone(module_upvr), arg1.props.navigationConfig), module))
end
local StackViewTransitionConfigs_upvr = require(Parent.StackViewTransitionConfigs)
function any_extend_result1._configureTransition(arg1, arg2, arg3) -- Line 86
	--[[ Upvalues[1]:
		[1]: StackViewTransitionConfigs_upvr (readonly)
	]]
	return StackViewTransitionConfigs_upvr.getTransitionConfig(arg1.props.navigationConfig.transitionConfig, arg2, arg3, arg1.props.navigationConfig.mode).transitionSpec
end
function any_extend_result1._onTransitionStart(arg1, arg2, arg3) -- Line 95
	local var21
	if not var21 then
		var21 = arg1.props.navigationConfig.onTransitionStart
	end
	if var21 and arg2.index ~= arg3.index then
		var21(arg2.navigation, arg3.navigation)
	end
end
function any_extend_result1._onTransitionEnd(arg1, arg2, arg3) -- Line 106
	--[[ Upvalues[1]:
		[1]: StackActions_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local navigation_2 = arg1.props.navigation
	local var23
	if not arg1.props.onTransitionEnd then
		local onTransitionEnd = arg1.props.navigationConfig.onTransitionEnd
	end
	var23 = arg2.scene.route
	local key = var23.key
	if navigation_2.state.routes[navigation_2.state.index].key ~= key then
		var23 = false
	else
		var23 = true
	end
	if arg2.navigation.state.isTransitioning and var23 then
		navigation_2.dispatch(StackActions_upvr.completeTransition({
			key = navigation_2.state.key;
			toChildKey = key;
		}))
	end
	if onTransitionEnd and arg2.index ~= arg3.index then
		onTransitionEnd(arg2.navigation, arg3.navigation)
	end
end
function any_extend_result1._onTransitionStep(arg1, arg2, arg3, arg4) -- Line 128
	local var27
	if not var27 then
		var27 = arg1.props.navigationConfig.onTransitionStep
	end
	if var27 and arg2.index ~= arg3.index then
		var27(arg2.navigation, arg3.navigation, arg4)
	end
end
return any_extend_result1