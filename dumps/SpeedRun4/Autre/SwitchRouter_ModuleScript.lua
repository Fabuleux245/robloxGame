-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:04
-- Luau version 6, Types version 3
-- Time taken: 0.022682 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local function defaultActionCreators_upvr() -- Line 20, Named "defaultActionCreators"
	return {}
end
local function mapToRouteName_upvr(arg1) -- Line 24, Named "mapToRouteName"
	return next(arg1)
end
local function foldToRoutes_upvr(arg1, arg2) -- Line 29, Named "foldToRoutes"
	local next_result1, next_result2 = next(arg2)
	arg1[next_result1] = next_result2
	return arg1
end
local validateRouteConfigArray_upvr = require(script.Parent.validateRouteConfigArray)
local validateRouteConfigMap_upvr = require(script.Parent.validateRouteConfigMap)
local Array_upvr = LuauPolyfill.Array
local BackBehavior_upvr = require(Parent.BackBehavior)
local getScreenForRouteName_upvr = require(script.Parent.getScreenForRouteName)
local Object_upvr = LuauPolyfill.Object
local createPathParser_upvr = require(script.Parent.pathUtils).createPathParser
local NavigationActions_upvr = require(Parent.NavigationActions)
local createConfigGetter_upvr = require(script.Parent.createConfigGetter)
local SwitchActions_upvr = require(script.Parent.SwitchActions)
local StackActions_upvr = require(Parent.routers.StackActions)
local invariant_upvr = require(Parent.utils.invariant)
return function(arg1, arg2) -- Line 35
	--[[ Upvalues[15]:
		[1]: validateRouteConfigArray_upvr (readonly)
		[2]: validateRouteConfigMap_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: foldToRoutes_upvr (readonly)
		[5]: mapToRouteName_upvr (readonly)
		[6]: defaultActionCreators_upvr (readonly)
		[7]: BackBehavior_upvr (readonly)
		[8]: getScreenForRouteName_upvr (readonly)
		[9]: Object_upvr (readonly)
		[10]: createPathParser_upvr (readonly)
		[11]: NavigationActions_upvr (readonly)
		[12]: createConfigGetter_upvr (readonly)
		[13]: SwitchActions_upvr (readonly)
		[14]: StackActions_upvr (readonly)
		[15]: invariant_upvr (readonly)
	]]
	validateRouteConfigArray_upvr(arg1)
	local var22 = arg2
	if not var22 then
		var22 = {}
	end
	local var23 = var22
	local validateRouteConfigMap_upvr_result1_upvr = validateRouteConfigMap_upvr(Array_upvr.reduce(arg1, foldToRoutes_upvr, {}))
	local order_upvr = var23.order
	if not order_upvr then
		order_upvr = Array_upvr.map(arg1, mapToRouteName_upvr)
	end
	local getCustomActionCreators_upvr = var23.getCustomActionCreators
	if not getCustomActionCreators_upvr then
		getCustomActionCreators_upvr = defaultActionCreators_upvr
	end
	local initialRouteParams_upvr = var23.initialRouteParams
	local initialRouteName_upvr = var23.initialRouteName
	if not initialRouteName_upvr then
		initialRouteName_upvr = order_upvr[1]
	end
	local backBehavior_upvr = var23.backBehavior
	if not backBehavior_upvr then
		backBehavior_upvr = BackBehavior_upvr.None
	end
	local var30_upvw = true
	if var23.resetOnBlur ~= nil then
		var30_upvw = var23.resetOnBlur
	end
	local any_indexOf_result1_upvr = Array_upvr.indexOf(order_upvr, initialRouteName_upvr)
	if any_indexOf_result1_upvr < 1 then
		error("Invalid initialRouteName '%s'. Should be one of %s":format(initialRouteName_upvr, table.concat(Array_upvr.map(order_upvr, function(arg1_2) -- Line 61
			return "\"%s\"":format(arg1_2)
		end), ", ")), 2)
	end
	local tbl_upvr = {}
	for _, v in order_upvr do
		local var10_result1 = getScreenForRouteName_upvr(validateRouteConfigMap_upvr_result1_upvr, v)
		if type(var10_result1) == "table" and var10_result1.router then
			tbl_upvr[v] = var10_result1.router
		else
			tbl_upvr[v] = false
		end
	end
	local function _(arg1_3, arg2_2) -- Line 80, Named "getParamsForRoute"
		--[[ Upvalues[2]:
			[1]: validateRouteConfigMap_upvr_result1_upvr (readonly)
			[2]: Object_upvr (copied, readonly)
		]]
		local var35 = validateRouteConfigMap_upvr_result1_upvr[arg1_3]
		if type(var35) == "table" and var35.params then
			if arg2_2 then
				return Object_upvr.assign(table.clone(var35.params), arg2_2)
			end
			return table.clone(var35.params)
		end
		return arg2_2
	end
	local var12_result1 = createPathParser_upvr(tbl_upvr, validateRouteConfigMap_upvr_result1_upvr, var23)
	local function resetChildRoute_upvr(arg1_4) -- Line 95, Named "resetChildRoute"
		--[[ Upvalues[6]:
			[1]: initialRouteName_upvr (readonly)
			[2]: initialRouteParams_upvr (readonly)
			[3]: validateRouteConfigMap_upvr_result1_upvr (readonly)
			[4]: Object_upvr (copied, readonly)
			[5]: tbl_upvr (readonly)
			[6]: NavigationActions_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var37
		if arg1_4 == initialRouteName_upvr then
			var37 = initialRouteParams_upvr
		else
			var37 = nil
		end
		local var38 = validateRouteConfigMap_upvr_result1_upvr[arg1_4]
		if type(var38) == "table" and var38.params then
			if var37 then
				local _ = Object_upvr.assign(table.clone(var38.params), var37)
			else
			end
		else
		end
		local var40 = tbl_upvr[arg1_4]
		if var40 then
			local module_6 = {}
			module_6.key = arg1_4
			module_6.routeName = arg1_4
			module_6.params = var37
			return Object_upvr.assign(table.clone(var40.getStateForAction(NavigationActions_upvr.init())), module_6)
		end
		local module_9 = {}
		module_9.key = arg1_4
		module_9.routeName = arg1_4
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_9.params = var37
		return module_9
	end
	local function getNextState_upvr(arg1_5, arg2_3, arg3) -- Line 118, Named "getNextState"
		--[[ Upvalues[7]:
			[1]: var30_upvw (read and write)
			[2]: resetChildRoute_upvr (readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: backBehavior_upvr (readonly)
			[5]: BackBehavior_upvr (copied, readonly)
			[6]: NavigationActions_upvr (copied, readonly)
			[7]: Array_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var43 = arg3
		if arg2_3 and arg3 and arg2_3.index ~= arg3.index and var30_upvw then
			local clone_2 = table.clone(arg3.routes)
			clone_2[arg2_3.index] = resetChildRoute_upvr(arg2_3.routes[arg2_3.index].routeName)
			var43 = Object_upvr.assign(table.clone(arg3), {
				routes = clone_2;
			})
		end
		if backBehavior_upvr ~= BackBehavior_upvr.History or arg2_3 and var43 and var43.index == arg2_3.index then
			return var43
		end
		if arg2_3 then
		else
		end
		if arg1_5.type == NavigationActions_upvr.Navigate then
			local key_upvr = var43.routes[var43.index].key
			local function var47(arg1_6) -- Line 136
				--[[ Upvalues[1]:
					[1]: key_upvr (readonly)
				]]
				local var48
				if arg1_6 == key_upvr then
					var48 = false
				else
					var48 = true
				end
				return var48
			end
			table.insert(Array_upvr.filter({}, var47), key_upvr)
		else
			key_upvr = arg1_5.type
			if key_upvr == NavigationActions_upvr.Back then
				key_upvr = table.clone
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				key_upvr = key_upvr(Array_upvr.filter({}, var47))
				local var49 = key_upvr
				key_upvr = table.remove
				key_upvr(var49, #var49)
			end
		end
		key_upvr = Object_upvr.assign
		key_upvr = key_upvr(table.clone(var43), {
			routeKeyHistory = var49;
		})
		return key_upvr
	end
	local function getInitialState_upvr() -- Line 148, Named "getInitialState"
		--[[ Upvalues[6]:
			[1]: Array_upvr (copied, readonly)
			[2]: order_upvr (readonly)
			[3]: resetChildRoute_upvr (readonly)
			[4]: any_indexOf_result1_upvr (readonly)
			[5]: backBehavior_upvr (readonly)
			[6]: BackBehavior_upvr (copied, readonly)
		]]
		local any_map_result1 = Array_upvr.map(order_upvr, resetChildRoute_upvr)
		local module_11 = {
			routes = any_map_result1;
			index = any_indexOf_result1_upvr;
		}
		if backBehavior_upvr == BackBehavior_upvr.History then
			module_11.routeKeyHistory = {any_map_result1[any_indexOf_result1_upvr].key}
		end
		return module_11
	end
	local module = {
		childRouters = tbl_upvr;
		getActionCreators = function(arg1_7, arg2_4) -- Line 165, Named "getActionCreators"
			--[[ Upvalues[1]:
				[1]: getCustomActionCreators_upvr (readonly)
			]]
			return getCustomActionCreators_upvr(arg1_7, arg2_4)
		end;
		getScreenOptions = createConfigGetter_upvr(validateRouteConfigMap_upvr_result1_upvr, var23.defaultNavigationOptions);
		getStateForAction = function(arg1_8, arg2_5) -- Line 171, Named "getStateForAction"
			--[[ Upvalues[14]:
				[1]: getInitialState_upvr (readonly)
				[2]: NavigationActions_upvr (copied, readonly)
				[3]: Array_upvr (copied, readonly)
				[4]: initialRouteName_upvr (readonly)
				[5]: initialRouteParams_upvr (readonly)
				[6]: Object_upvr (copied, readonly)
				[7]: SwitchActions_upvr (copied, readonly)
				[8]: getNextState_upvr (readonly)
				[9]: tbl_upvr (readonly)
				[10]: order_upvr (readonly)
				[11]: backBehavior_upvr (readonly)
				[12]: BackBehavior_upvr (copied, readonly)
				[13]: any_indexOf_result1_upvr (readonly)
				[14]: StackActions_upvr (copied, readonly)
			]]
			if arg2_5 then
				local _ = table.clone(arg2_5)
			else
			end
			if not arg2_5 then
				local getInitialState_upvr_result1 = getInitialState_upvr()
			end
			if arg1_8.type == NavigationActions_upvr.Init then
				local params_upvr = arg1_8.params
				if params_upvr then
					getInitialState_upvr_result1.routes = Array_upvr.map(getInitialState_upvr_result1.routes, function(arg1_16) -- Line 181
						--[[ Upvalues[4]:
							[1]: initialRouteName_upvr (copied, readonly)
							[2]: initialRouteParams_upvr (copied, readonly)
							[3]: Object_upvr (copied, readonly)
							[4]: params_upvr (readonly)
						]]
						-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
						local var107
						local function INLINED_4() -- Internal function, doesn't exist in bytecode
							var107 = initialRouteParams_upvr
							return var107
						end
						if arg1_16.routeName ~= initialRouteName_upvr or not INLINED_4() then
							var107 = {}
						end
						local module_2 = {}
						if arg1_16.params then
							local _ = Object_upvr.assign(table.clone(arg1_16.params), params_upvr, var107)
						else
						end
						module_2.params = Object_upvr.assign(table.clone(params_upvr), var107)
						return Object_upvr.assign(table.clone(arg1_16), module_2)
					end)
				end
			end
			params_upvr = arg1_8.type
			local var110
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				params_upvr = arg1_8.key
				return params_upvr == nil
			end
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				params_upvr = arg1_8.key
				return params_upvr == getInitialState_upvr_result1.key
			end
			if params_upvr == SwitchActions_upvr.JumpTo and (INLINED_5() or INLINED_6()) then
				params_upvr = arg1_8.params
				local var111_upvr = params_upvr
				var110 = Array_upvr
				var110 = getInitialState_upvr_result1.routes
				local any_findIndex_result1_upvr = var110.findIndex(var110, function(arg1_17) -- Line 194
					--[[ Upvalues[1]:
						[1]: arg1_8 (readonly)
					]]
					local var113
					if arg1_17.routeName ~= arg1_8.routeName then
						var113 = false
					else
						var113 = true
					end
					return var113
				end)
				var110 = 1
				if any_findIndex_result1_upvr < var110 then
					var110 = error
					var110("There is no route named '%s' in the navigator with the key '%s'.\n":format(arg1_8.routeName, arg1_8.key).."Must be one of: "..table.concat(Array_upvr.map(getInitialState_upvr_result1.routes, function(arg1_18) -- Line 206
						return arg1_18.routeName
					end), ','))
				end
				var110 = getInitialState_upvr_result1.routes
				if var111_upvr then
					return getInitialState_upvr_result1.routes.map(function(arg1_19, arg2_9) -- Line 216
						--[[ Upvalues[3]:
							[1]: any_findIndex_result1_upvr (readonly)
							[2]: Object_upvr (copied, readonly)
							[3]: var111_upvr (readonly)
						]]
						if arg2_9 == any_findIndex_result1_upvr then
							return Object_upvr.assign(table.clone(arg1_19), {
								params = Object_upvr.assign(table.clone(arg1_19.params), var111_upvr);
							})
						end
						return arg1_19
					end)
				end
				return getNextState_upvr(arg1_8, nil, Object_upvr.assign(table.clone(getInitialState_upvr_result1), {
					routes = var110;
					index = any_findIndex_result1_upvr;
				}))
			end
			var110 = getInitialState_upvr_result1.index
			local var119 = getInitialState_upvr_result1.routes[var110]
			var110 = tbl_upvr
			if var110[order_upvr[getInitialState_upvr_result1.index]] then
				var110 = var110[order_upvr[getInitialState_upvr_result1.index]].getStateForAction(arg1_8, var119)
				if not var110 and arg2_5 then
					return nil
				end
				if var110 and var110 ~= var119 then
					local clone_7 = table.clone(getInitialState_upvr_result1.routes)
					clone_7[getInitialState_upvr_result1.index] = var110
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					return getNextState_upvr(arg1_8, nil, Object_upvr.assign(table.clone(getInitialState_upvr_result1), {
						routes = clone_7;
					}))
				end
			end
			var110 = true
			if arg1_8.key ~= nil then
				if arg1_8.key ~= var119.key then
					var110 = false
				else
					var110 = true
				end
			end
			if arg1_8.type == NavigationActions_upvr.Back then
				if var110 and backBehavior_upvr == BackBehavior_upvr.InitialRoute then
					local _ = any_indexOf_result1_upvr
				else
					if var110 then
						if backBehavior_upvr == BackBehavior_upvr.Order then
							-- KONSTANTWARNING: GOTO [246] #180
						end
					end
					if var110 and backBehavior_upvr == BackBehavior_upvr.History and 1 < #getInitialState_upvr_result1.routeKeyHistory then
					end
				end
			end
			local var124 = false
			if arg1_8.type == NavigationActions_upvr.Navigate then
				local any_indexOf_result1_upvw = Array_upvr.indexOf(order_upvr, getInitialState_upvr_result1.routeKeyHistory[#getInitialState_upvr_result1.routeKeyHistory - 1])
				if Array_upvr.find(order_upvr, function(arg1_20, arg2_10) -- Line 274
					--[[ Upvalues[2]:
						[1]: arg1_8 (readonly)
						[2]: any_indexOf_result1_upvw (read and write)
					]]
					if arg1_20 == arg1_8.routeName then
						any_indexOf_result1_upvw = arg2_10
						return true
					end
					return false
				end) == nil then
					var124 = false
				else
					var124 = true
				end
				if var124 then
					local var127 = getInitialState_upvr_result1.routes[any_indexOf_result1_upvw]
					local var128 = tbl_upvr[arg1_8.routeName]
					local var129 = var127
					if arg1_8.action and var128 and var128.getStateForAction(arg1_8.action, var127) then
						var129 = var128.getStateForAction(arg1_8.action, var127)
					end
					local var130
					if arg1_8.params then
						local tbl_2 = {}
						if arg1_8.params == Object_upvr.None then
							var130 = Object_upvr.None
						elseif var129.params then
							var130 = Object_upvr.assign(table.clone(var129.params), arg1_8.params)
						else
							var130 = table.clone(arg1_8.params)
						end
						tbl_2.params = var130
						var129 = Object_upvr.assign(table.clone(var129), tbl_2)
					end
					if var129 ~= var127 then
						local clone_6 = table.clone(getInitialState_upvr_result1.routes)
						clone_6[any_indexOf_result1_upvw] = var129
						var130 = getInitialState_upvr_result1
						var130 = {}
						var130.routes = clone_6
						var130.index = any_indexOf_result1_upvw
						var130 = arg1_8
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						return getNextState_upvr(var130, nil, Object_upvr.assign(table.clone(var130), var130))
					end
					if var129 == var127 and getInitialState_upvr_result1.index == any_indexOf_result1_upvw then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if nil then
							return nil
						end
					end
				end
			end
			if arg1_8.type == NavigationActions_upvr.SetParams then
				local key_upvr_2 = arg1_8.key
				local any_findIndex_result1 = Array_upvr.findIndex(getInitialState_upvr_result1.routes, function(arg1_21) -- Line 320
					--[[ Upvalues[1]:
						[1]: key_upvr_2 (readonly)
					]]
					local var135
					if arg1_21.key ~= key_upvr_2 then
						var135 = false
					else
						var135 = true
					end
					return var135
				end)
				if 0 < any_findIndex_result1 then
					local var137 = getInitialState_upvr_result1.routes[any_findIndex_result1]
					local None = Object_upvr.None
					if arg1_8.params ~= Object_upvr.None then
						if var137.params and arg1_8.params then
							None = Object_upvr.assign(table.clone(var137.params), arg1_8.params)
						elseif var137.params then
							None = table.clone(var137.params)
						elseif arg1_8.params then
							None = table.clone(arg1_8.params)
						else
							None = {}
						end
					end
					local clone_5 = table.clone(getInitialState_upvr_result1.routes)
					clone_5[any_findIndex_result1] = Object_upvr.assign(table.clone(var137), {
						params = None;
					})
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					return getNextState_upvr(arg1_8, nil, Object_upvr.assign(table.clone(getInitialState_upvr_result1), {
						routes = clone_5;
					}))
				end
			end
			if any_indexOf_result1_upvw ~= getInitialState_upvr_result1.index then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return getNextState_upvr(arg1_8, nil, Object_upvr.assign(table.clone(getInitialState_upvr_result1), {
					index = any_indexOf_result1_upvw;
				}))
			end
			if var124 and not arg2_5 then
				return getInitialState_upvr_result1
			end
			if var124 then
				return table.clone(getInitialState_upvr_result1)
			end
			local var143 = true
			if arg1_8.type ~= NavigationActions_upvr.Back then
				var143 = true
				if arg1_8.type ~= StackActions_upvr.Pop then
					if arg1_8.type ~= StackActions_upvr.PopToTop then
						var143 = false
					else
						var143 = true
					end
				end
			end
			local var144 = not var143
			if not var144 then
				if arg1_8.type == NavigationActions_upvr.Back then
					if arg1_8.key == nil then
					else
						local var145_upvw
					end
				end
			end
			if true then
				var145_upvw = getInitialState_upvr_result1.index
				local routes_upvw_2 = getInitialState_upvr_result1.routes
				Array_upvr.find(order_upvr, function(arg1_22, arg2_11) -- Line 363
					--[[ Upvalues[4]:
						[1]: tbl_upvr (copied, readonly)
						[2]: var145_upvw (read and write)
						[3]: routes_upvw_2 (read and write)
						[4]: arg1_8 (readonly)
					]]
					local var148 = tbl_upvr[arg1_22]
					local var149
					if arg2_11 == var149 then
						var149 = false
						return var149
					end
					var149 = routes_upvw_2[arg2_11]
					if var148 then
						var149 = var148.getStateForAction(arg1_8, var149)
					end
					if not var149 then
						var145_upvw = arg2_11
						return true
					end
					if var149 ~= routes_upvw_2[arg2_11] then
						routes_upvw_2 = table.clone(routes_upvw_2)
						routes_upvw_2[arg2_11] = var149
						var145_upvw = arg2_11
						return true
					end
					return false
				end)
				if arg1_8.preserveFocus then
					var145_upvw = getInitialState_upvr_result1.index
				end
				if var145_upvw ~= getInitialState_upvr_result1.index or routes_upvw_2 ~= getInitialState_upvr_result1.routes then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					return getNextState_upvr(arg1_8, nil, Object_upvr.assign(table.clone(getInitialState_upvr_result1), {
						index = var145_upvw;
						routes = routes_upvw_2;
					}))
				end
			end
			return getInitialState_upvr_result1
		end;
		getComponentForState = function(arg1_23) -- Line 410, Named "getComponentForState"
			--[[ Upvalues[4]:
				[1]: invariant_upvr (copied, readonly)
				[2]: tbl_upvr (readonly)
				[3]: getScreenForRouteName_upvr (copied, readonly)
				[4]: validateRouteConfigMap_upvr_result1_upvr (readonly)
			]]
			local var151 = arg1_23.routes[arg1_23.index]
			if not var151 then
				var151 = {}
			end
			local routeName = var151.routeName
			invariant_upvr(routeName, "There is no route defined for index '%d'. ".."Check that you passed in a navigation state with a ".."valid tab/screen index.", arg1_23.index)
			local var153 = tbl_upvr[routeName]
			if var153 then
				return var153.getComponentForState(arg1_23.routes[arg1_23.index])
			end
			return getScreenForRouteName_upvr(validateRouteConfigMap_upvr_result1_upvr, routeName)
		end;
		getComponentForRouteName = function(arg1_24) -- Line 430, Named "getComponentForRouteName"
			--[[ Upvalues[2]:
				[1]: getScreenForRouteName_upvr (copied, readonly)
				[2]: validateRouteConfigMap_upvr_result1_upvr (readonly)
			]]
			return getScreenForRouteName_upvr(validateRouteConfigMap_upvr_result1_upvr, arg1_24)
		end;
	}
	local getPathAndParamsForRoute_upvr = var12_result1.getPathAndParamsForRoute
	function module.getPathAndParamsForState(arg1_25) -- Line 434
		--[[ Upvalues[1]:
			[1]: getPathAndParamsForRoute_upvr (readonly)
		]]
		return getPathAndParamsForRoute_upvr(arg1_25.routes[arg1_25.index])
	end
	local getActionForPathAndParams_2_upvr = var12_result1.getActionForPathAndParams
	function module.getActionForPathAndParams(arg1_26, arg2_12) -- Line 439
		--[[ Upvalues[1]:
			[1]: getActionForPathAndParams_2_upvr (readonly)
		]]
		return getActionForPathAndParams_2_upvr(arg1_26, arg2_12)
	end
	return module
end