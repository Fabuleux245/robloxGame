-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:48
-- Luau version 6, Types version 3
-- Time taken: 0.014801 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local Object_upvr = LuauPolyfill.Object
local assert_upvr = assert
local function _(arg1) -- Line 20, Named "isStateful"
	return not arg1.navigation
end
local function validateProps_upvr(arg1) -- Line 24, Named "validateProps"
	--[[ Upvalues[2]:
		[1]: Object_upvr (readonly)
		[2]: assert_upvr (readonly)
	]]
	local var6
	if arg1.persistenceKey then
		var6 = "please see the navigation state persistence docs for more information. "
		warn("You passed persistenceKey prop to a navigator. ".."The persistenceKey prop was replaced by a more flexible persistence mechanism, "..var6.."Passing the persistenceKey prop is a no-op.")
	end
	if not arg1.navigation then
	else
		local tbl_5 = {}
		var6 = Object_upvr
		tbl_5.navigation = var6.None
		var6 = Object_upvr
		tbl_5.screenProps = var6.None
		var6 = Object_upvr
		tbl_5.persistNavigationState = var6.None
		var6 = Object_upvr
		tbl_5.loadNavigationState = var6.None
		var6 = Object_upvr
		tbl_5.externalDispatchConnector = var6.None
		local any_assign_result1 = Object_upvr.assign(table.clone(arg1), tbl_5)
		if next(any_assign_result1) ~= nil then
			var6 = "unclear if it should own its own state. Remove props: %q ":format(table.concat(Object_upvr.keys(any_assign_result1), ", "))
			error("This navigator has both navigation and container props, so it is "..var6.."if the navigator should get its state from the navigation prop. If the ".."navigator should maintain its own state, do not pass a navigation prop.")
		end
		local persistNavigationState_3 = arg1.persistNavigationState
		local loadNavigationState = arg1.loadNavigationState
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var6 = true
			return loadNavigationState ~= nil
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var6 = false
			return type(persistNavigationState_3) == "function"
		end
		if persistNavigationState_3 ~= nil or INLINED() or INLINED_2() then
			if type(loadNavigationState) ~= "function" then
				var6 = false
			else
				var6 = true
			end
		end
		assert_upvr(var6, "both persistNavigationState and loadNavigationState must either be undefined, or be functions")
	end
end
local var11_upvw = 0
local React_upvr = require(Parent_2.React)
local NavigationActions_upvr = require(Parent.NavigationActions)
local urlToPathAndParams_upvr = require(Parent.routers.pathUtils).urlToPathAndParams
local console_upvr = LuauPolyfill.console
local Events_upvr = require(Parent.Events)
local getNavigation_upvr = require(Parent.getNavigation)
local NavigationContext_upvr = require(Parent.views.NavigationContext)
return {
	createAppContainer = function(arg1, arg2) -- Line 117, Named "createAppContainer"
		--[[ Upvalues[11]:
			[1]: assert_upvr (readonly)
			[2]: React_upvr (readonly)
			[3]: validateProps_upvr (readonly)
			[4]: NavigationActions_upvr (readonly)
			[5]: urlToPathAndParams_upvr (readonly)
			[6]: console_upvr (readonly)
			[7]: var11_upvw (read and write)
			[8]: Events_upvr (readonly)
			[9]: getNavigation_upvr (readonly)
			[10]: NavigationContext_upvr (readonly)
			[11]: Object_upvr (readonly)
		]]
		local var19 = false
		if type(arg1) == "table" then
			if arg1.router == nil then
				var19 = false
			else
				var19 = true
			end
		end
		assert_upvr(var19, "AppComponent must be a navigator or a stateful Roact component with a 'router' field")
		local any_extend_result1 = React_upvr.Component:extend(string.format("NavigationContainer(%s)", tostring(arg1)))
		any_extend_result1.router = arg1.router
		function any_extend_result1.getDerivedStateFromProps(arg1_2) -- Line 128
			--[[ Upvalues[1]:
				[1]: validateProps_upvr (copied, readonly)
			]]
			validateProps_upvr(arg1_2)
			return nil
		end
		function any_extend_result1.init(arg1_3) -- Line 133
			--[[ Upvalues[3]:
				[1]: validateProps_upvr (copied, readonly)
				[2]: NavigationActions_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			validateProps_upvr(arg1_3.props)
			arg1_3._actionEventSubscribers = {}
			arg1_3._initialAction = NavigationActions_upvr.init()
			local var21
			if arg1_3:_isStateful() and not arg1_3.props.loadNavigationState then
				var21 = arg1.router.getStateForAction(arg1_3._initialAction)
			end
			arg1_3.state = {
				nav = var21;
			}
		end
		function any_extend_result1._updateExternalDispatchConnector(arg1_4) -- Line 155
			if arg1_4._disconnectExternalDispatch then
				arg1_4._disconnectExternalDispatch()
				arg1_4._disconnectExternalDispatch = nil
			end
			local externalDispatchConnector = arg1_4.props.externalDispatchConnector
			if externalDispatchConnector ~= nil then
				arg1_4._disconnectExternalDispatch = externalDispatchConnector(function(...) -- Line 163
					--[[ Upvalues[1]:
						[1]: arg1_4 (readonly)
					]]
					if arg1_4._isMounted then
						return arg1_4:dispatch(...)
					end
					return false
				end)
			end
		end
		function any_extend_result1._renderLoading(arg1_5) -- Line 174
			local renderLoading = arg1_5.props.renderLoading
			if renderLoading then
				renderLoading = arg1_5.props.renderLoading()
			end
			return renderLoading
		end
		function any_extend_result1._isStateful(arg1_6) -- Line 178
			return not arg1_6.props.navigation
		end
		function any_extend_result1._handleOpenURL(arg1_7, arg2_2) -- Line 182
			--[[ Upvalues[2]:
				[1]: urlToPathAndParams_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			if arg1_7.props.enableURLHandling == false then
			else
				local var14_result1 = urlToPathAndParams_upvr(arg2_2.url, arg1_7.props.uriPrefix)
				if var14_result1 then
					local any_getActionForPathAndParams_result1_3 = arg1.router.getActionForPathAndParams(var14_result1.path, var14_result1.params)
					if any_getActionForPathAndParams_result1_3 then
						arg1_7:dispatch(any_getActionForPathAndParams_result1_3)
					end
				end
			end
		end
		function any_extend_result1._onNavigationStateChange(arg1_8, arg2_3, arg3, arg4) -- Line 201
			--[[ Upvalues[1]:
				[1]: console_upvr (copied, readonly)
			]]
			local onNavigationStateChange = arg1_8.props.onNavigationStateChange
			if onNavigationStateChange == nil and arg1_8:_isStateful() and _G.REACT_NAV_LOGGING then
				console_upvr.group("Navigation Dispatch: ")
				console_upvr.log("Action: ", arg4)
				console_upvr.log("New State: ", arg3)
				console_upvr.log("Last State: ", arg2_3)
				console_upvr.groupEnd()
			elseif type(onNavigationStateChange) == "function" then
				onNavigationStateChange(arg2_3, arg3, arg4)
			end
		end
		function any_extend_result1.didUpdate(arg1_9, arg2_4) -- Line 218
			if arg1_9._navState == arg1_9.state.nav then
				arg1_9._navState = nil
			end
			if arg1_9.props.externalDispatchConnector ~= arg2_4.externalDispatchConnector then
				arg1_9:_updateExternalDispatchConnector()
			end
		end
		function any_extend_result1.didMount(arg1_10) -- Line 231
			--[[ Upvalues[5]:
				[1]: var11_upvw (copied, read and write)
				[2]: console_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: arg1 (readonly)
				[5]: Events_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			arg1_10._isMounted = true
			arg1_10:_updateExternalDispatchConnector()
			local var42
			if not arg1_10:_isStateful() then
			else
				var42 = _G
				if var42.__DEV__ then
					var42 = arg1_10.props
					if not var42.detached then
						var42 = 0
						if var42 < var11_upvw then
							var42 = console_upvr
							var42 = "You should only render one navigator explicitly in your app, and other".." navigators should be rendered by including them in that navigator.".." Full details at: ".."https://reactnavigation.org/docs/4.x/common-mistakes#explicitly-rendering-more-than-one-navigator"
							var42.warn(var42)
						end
					end
				end
				var11_upvw += 1
				if arg2 then
					arg2:listenForLuaURLs(function(arg1_12) -- Line 256
						--[[ Upvalues[1]:
							[1]: arg1_10 (readonly)
						]]
						local tbl_2 = {}
						tbl_2.url = arg1_12
						arg1_10:_handleOpenURL(tbl_2)
					end, false)
				end
				local var45
				var42 = nil
				if arg1_10.props.enableURLHandling ~= false then
					local any_getStartupParams_result1 = arg1_10:getStartupParams()
					var45 = any_getStartupParams_result1.parsedUrl
					var42 = any_getStartupParams_result1.userProvidedStartupState
				end
				if not arg1_10.state.nav then
				end
				if var42 then
				end
				if var45 then
					local any_getActionForPathAndParams_result1_upvw = arg1.router.getActionForPathAndParams(var45.path, var45.params)
					if any_getActionForPathAndParams_result1_upvw then
						local any_getStateForAction_result1 = arg1.router.getStateForAction(any_getActionForPathAndParams_result1_upvw, var42)
					end
				end
				local function dispatchAction() -- Line 300
					--[[ Upvalues[3]:
						[1]: arg1_10 (readonly)
						[2]: Events_upvr (copied, readonly)
						[3]: any_getActionForPathAndParams_result1_upvw (read and write)
					]]
					for i_2 in arg1_10._actionEventSubscribers do
						i_2({
							type = Events_upvr.Action;
							action = any_getActionForPathAndParams_result1_upvw;
							state = arg1_10.state.nav;
							lastState = nil;
						})
					end
				end
				if any_getStateForAction_result1 == arg1_10.state.nav then
					spawn(dispatchAction)
					return
				end
				arg1_10:setState({
					nav = any_getStateForAction_result1;
				}, dispatchAction)
			end
		end
		function any_extend_result1.getStartupParams(arg1_13) -- Line 326
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: urlToPathAndParams_upvr (copied, readonly)
			]]
			local props = arg1_13.props
			local loadNavigationState_2_upvr = props.loadNavigationState
			local var54_upvw
			local var55_upvw
			if arg2 then
				pcall(function() -- Line 334
					--[[ Upvalues[2]:
						[1]: var54_upvw (read and write)
						[2]: arg2 (copied, readonly)
					]]
					var54_upvw = arg2:getLastLuaURL()
				end)
			end
			if loadNavigationState_2_upvr then
				local function var57() -- Line 340
					--[[ Upvalues[2]:
						[1]: var55_upvw (read and write)
						[2]: loadNavigationState_2_upvr (readonly)
					]]
					var55_upvw = loadNavigationState_2_upvr()
				end
				pcall(var57)
			end
			local module = {}
			var57 = var54_upvw
			local var59 = var57
			if var59 then
				var59 = urlToPathAndParams_upvr(var54_upvw, props.uriPrefix)
			end
			module.parsedUrl = var59
			module.userProvidedStartupState = var55_upvw
			return module
		end
		function any_extend_result1._persistNavigationState(arg1_14, arg2_5) -- Line 353
			local persistNavigationState = arg1_14.props.persistNavigationState
			if persistNavigationState then
				local pcall_result1, pcall_result2_2 = pcall(persistNavigationState, arg2_5)
				if not pcall_result1 then
					warn("Uncaught error while calling persistNavigationState()! ".."You should handle exceptions thrown from persistNavigationState(), ".."ignoring them may result in undefined behavior.\n"..pcall_result2_2)
				end
			end
		end
		function any_extend_result1.willUnmount(arg1_15) -- Line 369
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: var11_upvw (copied, read and write)
			]]
			arg1_15._isMounted = false
			if arg2 then
				arg2:stopListeningForLuaURLs()
			end
			if arg1_15._disconnectExternalDispatch then
				arg1_15._disconnectExternalDispatch()
				arg1_15._disconnectExternalDispatch = nil
			end
			if arg1_15:_isStateful() then
				var11_upvw -= 1
			end
		end
		function any_extend_result1.dispatch(arg1_16, arg2_6) -- Line 395
			--[[ Upvalues[3]:
				[1]: assert_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Events_upvr (copied, readonly)
			]]
			local var66_upvw
			if arg1_16.props.navigation then
				var66_upvw = arg1_16.props
				return var66_upvw.navigation.dispatch(arg2_6)
			end
			local _navState = arg1_16._navState
			if not _navState then
				_navState = arg1_16.state.nav
			end
			arg1_16._navState = _navState
			local _navState_2_upvr = arg1_16._navState
			if _navState_2_upvr == nil then
				var66_upvw = false
			else
				var66_upvw = true
			end
			assert_upvr(var66_upvw, "should be set in constructor if stateful")
			var66_upvw = arg1.router
			var66_upvw = arg2_6
			local any_getStateForAction_result1_3 = var66_upvw.getStateForAction(var66_upvw, _navState_2_upvr)
			var66_upvw = any_getStateForAction_result1_3
			if any_getStateForAction_result1_3 == nil then
				var66_upvw = _navState_2_upvr
			end
			local function dispatchActionEvents_upvr() -- Line 411, Named "dispatchActionEvents"
				--[[ Upvalues[5]:
					[1]: arg1_16 (readonly)
					[2]: Events_upvr (copied, readonly)
					[3]: arg2_6 (readonly)
					[4]: var66_upvw (read and write)
					[5]: _navState_2_upvr (readonly)
				]]
				for i in arg1_16._actionEventSubscribers do
					local tbl = {
						type = Events_upvr.Action;
					}
					tbl.action = arg2_6
					tbl.state = var66_upvw
					tbl.lastState = _navState_2_upvr
					i(tbl)
				end
			end
			if any_getStateForAction_result1_3 == nil then
				dispatchActionEvents_upvr()
				return true
			end
			if var66_upvw ~= _navState_2_upvr then
				arg1_16._navState = var66_upvw
				arg1_16:setState({
					nav = var66_upvw;
				}, function() -- Line 436
					--[[ Upvalues[5]:
						[1]: arg1_16 (readonly)
						[2]: _navState_2_upvr (readonly)
						[3]: var66_upvw (read and write)
						[4]: arg2_6 (readonly)
						[5]: dispatchActionEvents_upvr (readonly)
					]]
					arg1_16:_onNavigationStateChange(_navState_2_upvr, var66_upvw, arg2_6)
					task.defer(dispatchActionEvents_upvr)
					arg1_16:_persistNavigationState(var66_upvw)
				end)
				return true
			end
			dispatchActionEvents_upvr()
			return false
		end
		function any_extend_result1._getScreenProps(arg1_17, arg2_7, arg3) -- Line 450
			if arg2_7 == nil then
				return arg1_17.props.screenProps
			end
			local screenProps = arg1_17.props.screenProps
			if screenProps == nil or screenProps[arg2_7] == nil then
				return arg3
			end
			return screenProps[arg2_7]
		end
		function any_extend_result1.render(arg1_18) -- Line 465
			--[[ Upvalues[6]:
				[1]: getNavigation_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: assert_upvr (copied, readonly)
				[4]: React_upvr (copied, readonly)
				[5]: NavigationContext_upvr (copied, readonly)
				[6]: Object_upvr (copied, readonly)
			]]
			local navigation = arg1_18.props.navigation
			local var76
			if arg1_18:_isStateful() then
				var76 = arg1_18.state
				local nav = var76.nav
				if not nav then
					var76 = arg1_18:_renderLoading()
					return var76
				end
				var76 = arg1_18._navigation
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var76 = arg1_18._navigation.state
					return var76 ~= nav
				end
				if not var76 or INLINED_3() then
					var76 = getNavigation_upvr
					var76 = var76(arg1.router, nav, function(...) -- Line 478
						--[[ Upvalues[1]:
							[1]: arg1_18 (readonly)
						]]
						return arg1_18:dispatch(...)
					end, arg1_18._actionEventSubscribers, function(...) -- Line 482
						--[[ Upvalues[1]:
							[1]: arg1_18 (readonly)
						]]
						return arg1_18:_getScreenProps(...)
					end, function() -- Line 485
						--[[ Upvalues[1]:
							[1]: arg1_18 (readonly)
						]]
						return arg1_18._navigation
					end)
					arg1_18._navigation = var76
				end
				navigation = arg1_18._navigation
			end
			if navigation == nil then
				var76 = false
			else
				var76 = true
			end
			assert_upvr(var76, "failed to get navigation")
			var76 = React_upvr
			var76 = NavigationContext_upvr.Provider
			return var76.createElement(var76, {
				value = navigation;
			}, {
				AppComponent = React_upvr.createElement(arg1, Object_upvr.assign(table.clone(arg1_18.props), {
					navigation = navigation;
				}));
			})
		end
		return any_extend_result1
	end;
	_TESTING_ONLY_reset_container_count = function() -- Line 72, Named "_TESTING_ONLY_reset_container_count"
		--[[ Upvalues[1]:
			[1]: var11_upvw (read and write)
		]]
		var11_upvw = 0
	end;
}