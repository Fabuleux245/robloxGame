-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:54
-- Luau version 6, Types version 3
-- Time taken: 0.002832 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local React_upvr = require(Parent_2.React)
local invariant_upvr = require(Parent.utils.invariant)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local NavigationFocusEvents_upvr = require(Parent.views.NavigationFocusEvents)
return function(arg1, arg2, arg3) -- Line 12
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: NavigationFocusEvents_upvr (readonly)
	]]
	local any_extend_result1 = React_upvr.Component:extend("Navigator")
	any_extend_result1.router = arg2
	any_extend_result1.navigationOptions = arg3.navigationOptions
	function any_extend_result1.init(arg1_2) -- Line 20
		arg1_2.state = {
			descriptors = {};
			transitioningDescriptors = {};
			screenProps = arg1_2.props.screenProps;
		}
	end
	function any_extend_result1.getDerivedStateFromProps(arg1_3, arg2_2) -- Line 32
		--[[ Upvalues[4]:
			[1]: invariant_upvr (copied, readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: Object_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local descriptors_upvr = arg2_2.descriptors
		local navigation_2_upvr = arg1_3.navigation
		local screenProps_upvr = arg1_3.screenProps
		local var15
		if navigation_2_upvr == nil then
			var15 = false
		else
			var15 = true
		end
		invariant_upvr(var15, "The navigation prop is missing for this navigator. ".."In react-navigation v3 and v4 you must set up your app container directly. ".."More info: https://reactnavigation.org/docs/en/app-containers.html")
		var15 = navigation_2_upvr.state
		local routes = var15.routes
		var15 = invariant_upvr
		if type(routes) ~= "table" then
		else
		end
		var15(true, "No \"routes\" found in navigation state. ".."Did you try to pass the navigation prop of a React component to a Navigator child? ".."See https://reactnavigation.org/docs/en/custom-navigators.html#navigator-navigation-prop")
		var15 = Array_upvr.reduce
		var15 = var15(routes, function(arg1_4, arg2_3) -- Line 55
			--[[ Upvalues[5]:
				[1]: descriptors_upvr (readonly)
				[2]: screenProps_upvr (readonly)
				[3]: arg2_2 (readonly)
				[4]: arg2 (copied, readonly)
				[5]: navigation_2_upvr (readonly)
			]]
			if descriptors_upvr and descriptors_upvr[arg2_3.key] and arg2_3 == descriptors_upvr[arg2_3.key].state and screenProps_upvr == arg2_2.screenProps then
				arg1_4[arg2_3.key] = descriptors_upvr[arg2_3.key]
				return arg1_4
			end
			local any_getChildNavigation_result1 = navigation_2_upvr.getChildNavigation(arg2_3.key)
			local tbl_2 = {
				key = arg2_3.key;
				getComponent = function() -- Line 65
					--[[ Upvalues[2]:
						[1]: arg2 (copied, readonly)
						[2]: arg2_3 (readonly)
					]]
					return arg2.getComponentForRouteName(arg2_3.routeName)
				end;
				options = arg2.getScreenOptions(any_getChildNavigation_result1, screenProps_upvr);
			}
			tbl_2.state = arg2_3
			tbl_2.navigation = any_getChildNavigation_result1
			arg1_4[arg2_3.key] = tbl_2
			return arg1_4
		end, {})
		if navigation_2_upvr.state.isTransitioning then
		end
		return {
			descriptors = var15;
			transitioningDescriptors = Object_upvr.assign({}, arg2_2.transitioningDescriptors, descriptors_upvr, Array_upvr.reduce(routes, function(arg1_5, arg2_4) -- Line 92
				--[[ Upvalues[1]:
					[1]: Object_upvr (copied, readonly)
				]]
				arg1_5[arg2_4.key] = Object_upvr.None
				return arg1_5
			end, {}));
			screenProps = screenProps_upvr;
		}
	end
	function any_extend_result1.render(arg1_6) -- Line 111
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: NavigationFocusEvents_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Object_upvr (copied, readonly)
			[5]: arg3 (readonly)
		]]
		local navigation = arg1_6.props.navigation
		local descriptors_upvr_2 = arg1_6.state.descriptors
		local module = {}
		local tbl_3 = {
			navigation = navigation;
		}
		local transitioningDescriptors_upvr = arg1_6.state.transitioningDescriptors
		function tbl_3.onEvent(arg1_7, arg2_5, arg3_2) -- Line 121
			--[[ Upvalues[2]:
				[1]: descriptors_upvr_2 (readonly)
				[2]: transitioningDescriptors_upvr (readonly)
			]]
			if descriptors_upvr_2[arg1_7] then
				descriptors_upvr_2[arg1_7].navigation.emit(arg2_5, arg3_2)
			elseif transitioningDescriptors_upvr[arg1_7] then
				transitioningDescriptors_upvr[arg1_7].navigation.emit(arg2_5, arg3_2)
			end
		end
		module.Events = React_upvr.createElement(NavigationFocusEvents_upvr, tbl_3)
		local tbl = {
			screenProps = arg1_6.state.screenProps;
			navigation = navigation;
		}
		tbl.navigationConfig = arg3
		tbl.descriptors = descriptors_upvr_2
		module.View = React_upvr.createElement(arg1, Object_upvr.assign(table.clone(arg1_6.props), tbl))
		return React_upvr.createElement(React_upvr.Fragment, {}, module)
	end
	return any_extend_result1
end