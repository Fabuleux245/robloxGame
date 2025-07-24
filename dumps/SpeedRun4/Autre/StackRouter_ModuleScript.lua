-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:02
-- Luau version 6, Types version 3
-- Time taken: 0.037851 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local NavigationActions_upvr = require(Parent.NavigationActions)
local StackActions_upvr = require(script.Parent.StackActions)
local function var5_upvr() -- Line 28
	return {}
end
local function _(arg1) -- Line 32, Named "behavesLikePushAction"
	--[[ Upvalues[2]:
		[1]: NavigationActions_upvr (readonly)
		[2]: StackActions_upvr (readonly)
	]]
	local var6 = true
	if arg1.type ~= NavigationActions_upvr.Navigate then
		if arg1.type ~= StackActions_upvr.Push then
			var6 = false
		else
			var6 = true
		end
	end
	return var6
end
local function _(arg1) -- Line 36, Named "isResetToRootStack"
	--[[ Upvalues[1]:
		[1]: StackActions_upvr (readonly)
	]]
	local var7 = false
	if arg1.type == StackActions_upvr.Reset then
		if arg1.key ~= nil then
			var7 = false
		else
			var7 = true
		end
	end
	return var7
end
local function mapToRouteName_upvr(arg1) -- Line 40, Named "mapToRouteName"
	return next(arg1)
end
local function foldToRoutes_upvr(arg1, arg2, arg3) -- Line 45, Named "foldToRoutes"
	local next_result1, next_result2 = next(arg2)
	arg1[next_result1] = next_result2
	return arg1
end
local validateRouteConfigArray_upvr = require(script.Parent.validateRouteConfigArray)
local validateRouteConfigMap_upvr = require(script.Parent.validateRouteConfigMap)
local Array_upvr = LuauPolyfill.Array
local roblox_upvr = require(script.Parent["ChildIsScreenRouterSymbol.roblox"])
local Object_upvr = LuauPolyfill.Object
local KeyGenerator_upvr = require(Parent.utils.KeyGenerator)
local createPathParser_upvr = require(script.Parent.pathUtils).createPathParser
local invariant_upvr = require(Parent.utils.invariant)
local getScreenForRouteName_upvr = require(script.Parent.getScreenForRouteName)
local StateUtils_upvr = require(Parent.StateUtils)
local createConfigGetter_upvr = require(script.Parent.createConfigGetter)
return function(arg1, arg2) -- Line 51
	--[[ Upvalues[16]:
		[1]: validateRouteConfigArray_upvr (readonly)
		[2]: validateRouteConfigMap_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: foldToRoutes_upvr (readonly)
		[5]: mapToRouteName_upvr (readonly)
		[6]: roblox_upvr (readonly)
		[7]: var5_upvr (readonly)
		[8]: NavigationActions_upvr (readonly)
		[9]: StackActions_upvr (readonly)
		[10]: Object_upvr (readonly)
		[11]: KeyGenerator_upvr (readonly)
		[12]: createPathParser_upvr (readonly)
		[13]: invariant_upvr (readonly)
		[14]: getScreenForRouteName_upvr (readonly)
		[15]: StateUtils_upvr (readonly)
		[16]: createConfigGetter_upvr (readonly)
	]]
	validateRouteConfigArray_upvr(arg1)
	local var34 = arg2
	if not var34 then
		var34 = {}
	end
	local var35_upvw = var34
	local var12_result1_upvr = validateRouteConfigMap_upvr(Array_upvr.reduce(arg1, foldToRoutes_upvr, {}))
	local order = var35_upvw.order
	if not order then
		order = Array_upvr.map(arg1, mapToRouteName_upvr)
	end
	local tbl_26_upvr = {}
	for _, v in order do
		local var39 = var12_result1_upvr[v]
		local var40
		if type(var39) == "table" and var39.screen then
			var40 = var39.screen
		else
			var40 = var39
		end
		if type(var40) == "table" and var40.router then
			tbl_26_upvr[v] = var40.router
		else
			tbl_26_upvr[v] = roblox_upvr
		end
	end
	local getCustomActionCreators_upvr = var35_upvw.getCustomActionCreators
	if not getCustomActionCreators_upvr then
		getCustomActionCreators_upvr = var5_upvr
	end
	local initialRouteName_upvr = var35_upvw.initialRouteName
	if not initialRouteName_upvr then
		initialRouteName_upvr = order[1]
	end
	local var43
	if Array_upvr.indexOf(order, initialRouteName_upvr) < var43 then
		var43 = ""
		for _, v_2 in order do
			var43 = var43..v_2..','
		end
		error(string.format("Invalid initialRouteName '%s'. Must be one of [%s]", initialRouteName_upvr, var43), 2)
	end
	local var44_upvr = tbl_26_upvr[initialRouteName_upvr]
	local initialRouteParams_upvr = var35_upvw.initialRouteParams
	local function getInitialState_upvr(arg1_2) -- Line 97, Named "getInitialState"
		--[[ Upvalues[11]:
			[1]: tbl_26_upvr (readonly)
			[2]: NavigationActions_upvr (copied, readonly)
			[3]: StackActions_upvr (copied, readonly)
			[4]: roblox_upvr (copied, readonly)
			[5]: Object_upvr (copied, readonly)
			[6]: KeyGenerator_upvr (copied, readonly)
			[7]: var44_upvr (readonly)
			[8]: initialRouteName_upvr (readonly)
			[9]: initialRouteParams_upvr (readonly)
			[10]: var12_result1_upvr (readonly)
			[11]: var35_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var65 = tbl_26_upvr[arg1_2.routeName]
		local var66 = true
		if arg1_2.type ~= NavigationActions_upvr.Navigate then
			if arg1_2.type ~= StackActions_upvr.Push then
				var66 = false
			else
				var66 = true
			end
		end
		if var66 and var65 ~= nil then
			var66 = {}
			if var65 ~= roblox_upvr then
				local action_4 = arg1_2.action
				if not action_4 then
					action_4 = NavigationActions_upvr.init
					action_4 = action_4({
						params = arg1_2.params;
					})
				end
				var66 = var65.getStateForAction(action_4)
			end
			local module_23 = {
				key = "StackRouterRoot";
				isTransitioning = false;
				index = 1;
			}
			local tbl_14 = {}
			local tbl_18 = {}
			local key_2 = arg1_2.key
			if not key_2 then
				key_2 = KeyGenerator_upvr.generateKey()
			end
			tbl_18.key = key_2
			tbl_18.routeName = arg1_2.routeName
			tbl_14[1] = Object_upvr.assign({
				params = arg1_2.params;
			}, var66, tbl_18)
			module_23.routes = tbl_14
			return module_23
		end
		local var74
		if var44_upvr ~= nil and var44_upvr ~= roblox_upvr then
			var74 = var44_upvr.getStateForAction(NavigationActions_upvr.navigate({
				routeName = initialRouteName_upvr;
				params = initialRouteParams_upvr;
			}))
		end
		local var76 = false
		if type(var12_result1_upvr[initialRouteName_upvr]) == "table" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var76 = var12_result1_upvr[initialRouteName_upvr].params
			local var77
		end
		if var76 or var74.params or arg1_2.params or initialRouteParams_upvr then
			local var78 = Object_upvr
			if var76 then
				var77 = var76
			else
			end
			var77 = var74.params
			if not var77 then
				var77 = {}
			end
			local params = arg1_2.params
			if not params then
				params = {}
			end
			tbl_18 = initialRouteParams_upvr
			local var80 = tbl_18
			if not var80 then
				var80 = {}
			end
		end
		local tbl_8 = {
			params = var78.assign({}, var77, params, var80);
			routeName = initialRouteName_upvr;
		}
		local key_4 = arg1_2.key
		if not key_4 then
			key_4 = var35_upvw.initialRouteKey
			if not key_4 then
				key_4 = KeyGenerator_upvr.generateKey()
			end
		end
		tbl_8.key = key_4
		var74 = Object_upvr.assign(table.clone(var74), tbl_8)
		return {
			key = "StackRouterRoot";
			isTransitioning = false;
			index = 1;
			routes = {var74};
		}
	end
	local function getParamsForRouteAndAction_upvr(arg1_3, arg2_2) -- Line 162, Named "getParamsForRouteAndAction"
		--[[ Upvalues[2]:
			[1]: Object_upvr (copied, readonly)
			[2]: var12_result1_upvr (readonly)
		]]
		if arg2_2.params == Object_upvr.None then
			return nil
		end
		local var85 = var12_result1_upvr[arg1_3]
		if type(var85) == "table" and var85.params then
			return Object_upvr.assign(table.clone(var85.params), arg2_2.params)
		end
		if arg2_2.params then
			return Object_upvr.assign({}, arg2_2.params)
		end
		return nil
	end
	local createPathParser_upvr_result1 = createPathParser_upvr(tbl_26_upvr, var12_result1_upvr, var35_upvw)
	for i_3, v_3 in tbl_26_upvr do
		if v_3 ~= roblox_upvr then
			({})[i_3] = v_3
		end
	end
	local module_9 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_9.childRouters = {}
	module_9._CHILD_IS_SCREEN = roblox_upvr
	function module_9.getComponentForState(arg1_4) -- Line 199
		--[[ Upvalues[5]:
			[1]: invariant_upvr (copied, readonly)
			[2]: tbl_26_upvr (readonly)
			[3]: roblox_upvr (copied, readonly)
			[4]: getScreenForRouteName_upvr (copied, readonly)
			[5]: var12_result1_upvr (readonly)
		]]
		local var88
		if not var88 then
			var88 = {}
		end
		local routeName = var88.routeName
		invariant_upvr(routeName, "There is no route defined for index '%d'. ".."Make sure that you passed in a navigation state with a ".."valid stack index.", arg1_4.index)
		local var90 = tbl_26_upvr[routeName]
		if var90 ~= nil and var90 ~= roblox_upvr then
			return tbl_26_upvr[routeName].getComponentForState(var88)
		end
		return getScreenForRouteName_upvr(var12_result1_upvr, routeName)
	end
	function module_9.getComponentForRouteName(arg1_5) -- Line 220
		--[[ Upvalues[2]:
			[1]: getScreenForRouteName_upvr (copied, readonly)
			[2]: var12_result1_upvr (readonly)
		]]
		return getScreenForRouteName_upvr(var12_result1_upvr, arg1_5)
	end
	function module_9.getActionCreators(arg1_6, arg2_3) -- Line 224
		--[[ Upvalues[5]:
			[1]: Object_upvr (copied, readonly)
			[2]: getCustomActionCreators_upvr (readonly)
			[3]: StackActions_upvr (copied, readonly)
			[4]: invariant_upvr (copied, readonly)
			[5]: NavigationActions_upvr (copied, readonly)
		]]
		return Object_upvr.assign(table.clone(getCustomActionCreators_upvr(arg1_6, arg2_3)), {
			pop = function(arg1_7, arg2_4) -- Line 226, Named "pop"
				--[[ Upvalues[2]:
					[1]: StackActions_upvr (copied, readonly)
					[2]: Object_upvr (copied, readonly)
				]]
				local module_22 = {}
				module_22.n = arg1_7
				local var93 = arg2_4
				if not var93 then
					var93 = {}
				end
				return StackActions_upvr.pop(Object_upvr.assign(module_22, var93))
			end;
			popToTop = function(arg1_8) -- Line 229, Named "popToTop"
				--[[ Upvalues[1]:
					[1]: StackActions_upvr (copied, readonly)
				]]
				return StackActions_upvr.popToTop(arg1_8)
			end;
			push = function(arg1_9, arg2_5, arg3) -- Line 232, Named "push"
				--[[ Upvalues[1]:
					[1]: StackActions_upvr (copied, readonly)
				]]
				local module_17 = {}
				module_17.routeName = arg1_9
				module_17.params = arg2_5
				module_17.action = arg3
				return StackActions_upvr.push(module_17)
			end;
			replace = function(arg1_10, arg2_6, arg3, arg4) -- Line 239, Named "replace"
				--[[ Upvalues[3]:
					[1]: StackActions_upvr (copied, readonly)
					[2]: arg1_6 (readonly)
					[3]: invariant_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
				local var95
				if type(arg1_10) == "string" then
					var95 = StackActions_upvr
					var95 = {}
					var95.routeName = arg1_10
					var95.params = arg2_6
					var95.action = arg3
					var95.key = arg1_6.key
					var95.newKey = arg4
					return var95.replace(var95)
				end
				if type(arg1_10) ~= "table" then
					var95 = false
				else
					var95 = true
				end
				invariant_upvr(var95, "replaceWith must be a table or string")
				if arg2_6 ~= nil then
					var95 = false
					-- KONSTANTWARNING: GOTO [43] #32
				end
				-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [42] 31. Error Block 32 start (CF ANALYSIS FAILED)
				var95 = true
				invariant_upvr(var95, "params must not be provided to .replace() when specifying a table")
				if arg3 ~= nil then
					var95 = false
					-- KONSTANTWARNING: GOTO [50] #38
				end
				-- KONSTANTERROR: [42] 31. Error Block 32 end (CF ANALYSIS FAILED)
			end;
			reset = function(arg1_11, arg2_7) -- Line 257, Named "reset"
				--[[ Upvalues[2]:
					[1]: StackActions_upvr (copied, readonly)
					[2]: arg2_3 (readonly)
				]]
				local var96 = arg2_7
				if arg2_7 == nil then
					var96 = #arg1_11
				end
				local module_21 = {}
				module_21.actions = arg1_11
				module_21.index = var96
				module_21.key = arg2_3
				return StackActions_upvr.reset(module_21)
			end;
			dismiss = function() -- Line 269, Named "dismiss"
				--[[ Upvalues[2]:
					[1]: NavigationActions_upvr (copied, readonly)
					[2]: arg2_3 (readonly)
				]]
				local module_6 = {}
				module_6.key = arg2_3
				return NavigationActions_upvr.back(module_6)
			end;
		})
	end
	function module_9.getStateForAction(arg1_12, arg2_8) -- Line 277
		--[[ Upvalues[11]:
			[1]: getInitialState_upvr (readonly)
			[2]: StackActions_upvr (copied, readonly)
			[3]: NavigationActions_upvr (copied, readonly)
			[4]: tbl_26_upvr (readonly)
			[5]: roblox_upvr (copied, readonly)
			[6]: StateUtils_upvr (copied, readonly)
			[7]: Object_upvr (copied, readonly)
			[8]: invariant_upvr (copied, readonly)
			[9]: Array_upvr (copied, readonly)
			[10]: getParamsForRouteAndAction_upvr (readonly)
			[11]: KeyGenerator_upvr (copied, readonly)
		]]
		if not arg2_8 then
			return getInitialState_upvr(arg1_12)
		end
		local var197 = arg2_8.routes[arg2_8.index]
		local var198 = false
		if arg1_12.type == StackActions_upvr.Reset then
			if arg1_12.key ~= nil then
				var198 = false
			else
				var198 = true
			end
		end
		if not var198 then
			if arg1_12.type ~= NavigationActions_upvr.Navigate then
				local var199 = tbl_26_upvr[var197.routeName]
				if var199 ~= nil and var199 ~= roblox_upvr then
					local any_getStateForAction_result1 = var199.getStateForAction(arg1_12, var197)
					local var201
					if any_getStateForAction_result1 ~= nil and any_getStateForAction_result1 ~= var197 then
						if arg1_12.type ~= NavigationActions_upvr.SetParams then
							var201 = false
						else
							var201 = true
						end
						do
							return StateUtils_upvr.replaceAt(arg2_8, var197.key, any_getStateForAction_result1, var201)
						end
						-- KONSTANTWARNING: GOTO [154] #106
					end
					-- KONSTANTWARNING: GOTO [154] #106
				end
				-- KONSTANTWARNING: GOTO [154] #106
			end
		end
		if arg1_12.type == NavigationActions_upvr.Navigate then
			for i_4 = #arg2_8.routes, 1, -1 do
				local var202 = arg2_8.routes[i_4]
				local var203 = tbl_26_upvr[var202.routeName]
				local var204
				if arg1_12.routeName == var202.routeName then
					if arg1_12.action then
						var204 = arg1_12.action
					end
				end
				local function INLINED_7() -- Internal function, doesn't exist in bytecode
					local var205
					return var203 ~= roblox_upvr
				end
				local function INLINED_8() -- Internal function, doesn't exist in bytecode
					local any_getStateForAction_result1_7 = var203.getStateForAction(var204, var202)
					return any_getStateForAction_result1_7 == nil
				end
				if var203 ~= nil and INLINED_7() and (INLINED_8() or any_getStateForAction_result1_7 ~= var202) then
					if any_getStateForAction_result1_7 then
						var205 = any_getStateForAction_result1_7.key
					else
						var205 = var202.key
					end
					local any_replaceAndPrune_result1 = StateUtils_upvr.replaceAndPrune(arg2_8, var205, any_getStateForAction_result1_7 or var202)
					var205 = arg2_8.index
					if var205 ~= any_replaceAndPrune_result1.index then
						var205 = arg1_12.immediate
						if var205 == true then
						else
						end
					end
					var205 = Object_upvr.assign
					var205 = var205(table.clone(any_replaceAndPrune_result1), {
						isTransitioning = true;
					})
					return var205
				end
			end
		end
		local var209 = true
		if arg1_12.type ~= NavigationActions_upvr.Navigate then
			if arg1_12.type ~= StackActions_upvr.Push then
				var209 = false
			else
				var209 = true
			end
		end
		if var209 then
			local var215
			if tbl_26_upvr[arg1_12.routeName] ~= nil then
				var215 = tbl_26_upvr
				local var211 = var215[arg1_12.routeName]
				var215 = invariant_upvr
				local var212 = true
				var204 = StackActions_upvr
				if arg1_12.type == var204.Push then
					if arg1_12.key ~= nil then
						var212 = false
					else
						var212 = true
					end
				end
				var215(var212, "StackRouter does not support key on the push action")
				function var215(arg1_20) -- Line 349
					--[[ Upvalues[1]:
						[1]: arg1_12 (readonly)
					]]
					local var214
					if arg1_20.routeName ~= arg1_12.routeName then
						var214 = false
					else
						var214 = true
					end
					return var214
				end
				if arg1_12.key then
					function var215(arg1_21) -- Line 353
						--[[ Upvalues[1]:
							[1]: arg1_12 (readonly)
						]]
						local var216
						if arg1_21.key ~= arg1_12.key then
							var216 = false
						else
							var216 = true
						end
						return var216
					end
				end
				local any_findIndex_result1_4 = Array_upvr.findIndex(arg2_8.routes, var215)
				var204 = StackActions_upvr
				if arg1_12.type ~= var204.Push and 0 < any_findIndex_result1_4 then
					if arg2_8.index == any_findIndex_result1_4 and not arg1_12.params then
						return nil
					end
					var204 = 1
					local var218
					if arg1_12.params then
						var204 = arg2_8.routes
						local var219 = var204[any_findIndex_result1_4]
						var204 = Object_upvr.assign
						local tbl_10 = {}
						var205 = arg1_12.params
						if var205 == Object_upvr.None then
							var205 = Object_upvr
							var218 = var205.None
						else
							var205 = var219.params
							if not var205 then
								var218 = table.clone
								var205 = arg1_12.params
								var218 = var218(var205)
							else
								var205 = Object_upvr
								var218 = var205.assign
								var205 = table.clone(var219.params)
								var218 = var218(var205, arg1_12.params)
							end
						end
						tbl_10.params = var218
						var204 = var204(table.clone(var219), tbl_10)
						Array_upvr.slice(arg2_8.routes, var204, any_findIndex_result1_4 + 1)[any_findIndex_result1_4] = var204
					end
					var219 = arg2_8.isTransitioning
					local var221 = var219
					var204 = arg2_8.index
					if var204 ~= any_findIndex_result1_4 then
						var204 = arg1_12.immediate
						if var204 == true then
							var221 = false
						else
							var221 = true
						end
					end
					var204 = Object_upvr.assign
					local tbl_22 = {
						isTransitioning = var221;
						index = any_findIndex_result1_4;
					}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_22.routes = Array_upvr.slice(arg2_8.routes, var204, any_findIndex_result1_4 + 1)
					var204 = var204(table.clone(arg2_8), tbl_22)
					return var204
				end
				local var223
				if var211 ~= roblox_upvr then
					local action_6 = arg1_12.action
					if not action_6 then
						var204 = NavigationActions_upvr
						action_6 = var204.init
						var204 = {}
						var204.params = getParamsForRouteAndAction_upvr(arg1_12.routeName, arg1_12)
						action_6 = action_6(var204)
					end
					var204 = Object_upvr.assign
					local tbl_16 = {
						routeName = arg1_12.routeName;
					}
					local key_11 = arg1_12.key
					if not key_11 then
						key_11 = KeyGenerator_upvr.generateKey()
					end
					tbl_16.key = key_11
					var204 = var204({
						params = getParamsForRouteAndAction_upvr(arg1_12.routeName, arg1_12);
					}, var211.getStateForAction(action_6), tbl_16)
					var223 = var204
				else
					local tbl_21 = {}
					var204 = getParamsForRouteAndAction_upvr(arg1_12.routeName, arg1_12)
					tbl_21.params = var204
					var204 = arg1_12.routeName
					tbl_21.routeName = var204
					var204 = arg1_12.key
					if not var204 then
						var204 = KeyGenerator_upvr.generateKey()
					end
					tbl_21.key = var204
					var223 = tbl_21
				end
				local var229 = var223
				local module_15 = {}
				if arg1_12.immediate == true then
					var229 = false
				else
					var229 = true
				end
				module_15.isTransitioning = var229
				return Object_upvr.assign(StateUtils_upvr.push(arg2_8, var229), module_15)
			end
		end
		if arg1_12.type == StackActions_upvr.Push then
			if tbl_26_upvr[arg1_12.routeName] == nil then
				return arg2_8
			end
		end
		local var231 = true
		if arg1_12.type ~= NavigationActions_upvr.Navigate then
			if arg1_12.type ~= StackActions_upvr.Push then
				var231 = false
			else
				var231 = true
			end
		end
		if var231 then
			for i_5 in tbl_26_upvr do
				if tbl_26_upvr[i_5] ~= nil then
					local var232
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if tbl_26_upvr[i_5] ~= roblox_upvr then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						var232 = NavigationActions_upvr
						local any_getStateForAction_result1_3 = tbl_26_upvr[i_5].getStateForAction(var232.init())
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						var232 = arg1_12
						local any_getStateForAction_result1_6 = tbl_26_upvr[i_5].getStateForAction(var232, any_getStateForAction_result1_3)
						var232 = nil
						if any_getStateForAction_result1_6 == nil then
							var232 = any_getStateForAction_result1_3
						elseif any_getStateForAction_result1_6 ~= any_getStateForAction_result1_3 then
							var232 = any_getStateForAction_result1_6
						end
						if var232 then
							local tbl_5 = {
								routeName = i_5;
							}
							local key_7 = arg1_12.key
							if not key_7 then
								key_7 = KeyGenerator_upvr.generateKey()
							end
							tbl_5.key = key_7
							local any_assign_result1_2 = Object_upvr.assign(table.clone(var232), tbl_5)
							local module_14 = {}
							if arg1_12.immediate == true then
								any_assign_result1_2 = false
							else
								any_assign_result1_2 = true
							end
							module_14.isTransitioning = any_assign_result1_2
							return Object_upvr.assign(StateUtils_upvr.push(arg2_8, any_assign_result1_2), module_14)
						end
					end
				end
			end
		end
		if arg1_12.type == StackActions_upvr.PopToTop then
			if arg1_12.key then
				if arg2_8.key ~= arg1_12.key then
					return arg2_8
				end
			end
			if 1 < arg2_8.index then
				local module_13 = {}
				if arg1_12.immediate == true then
					i_5 = false
				else
					i_5 = true
				end
				module_13.isTransitioning = i_5
				i_5 = 1
				module_13.index = i_5
				i_5 = {}
				i_5[1] = arg2_8.routes[1]
				module_13.routes = i_5
				return Object_upvr.assign(table.clone(arg2_8), module_13)
			end
			return arg2_8
		end
		if arg1_12.type == StackActions_upvr.Replace then
			if arg1_12.key == nil then
				if 0 < #arg2_8.routes then
					-- KONSTANTWARNING: GOTO [600] #415
				end
			end
			local any_findIndex_result1_3 = Array_upvr.findIndex(arg2_8.routes, function(arg1_22) -- Line 496
				--[[ Upvalues[1]:
					[1]: arg1_12 (readonly)
				]]
				local var241
				if arg1_22.key ~= arg1_12.key then
					var241 = false
				else
					var241 = true
				end
				return var241
			end)
			if 0 < any_findIndex_result1_3 then
				local var243 = tbl_26_upvr[arg1_12.routeName]
				local tbl_17 = {}
				if var243 ~= nil then
					if var243 ~= roblox_upvr then
						local action = arg1_12.action
						if not action then
							action = NavigationActions_upvr.init
							action = action({
								params = getParamsForRouteAndAction_upvr(arg1_12.routeName, arg1_12);
							})
						end
						tbl_17 = var243.getStateForAction(action)
					end
				end
				local clone_3 = table.clone(arg2_8.routes)
				;({}).params = getParamsForRouteAndAction_upvr(arg1_12.routeName, arg1_12)
				local tbl_20 = {
					routeName = arg1_12.routeName;
				}
				local newKey = arg1_12.newKey
				if not newKey then
					newKey = KeyGenerator_upvr.generateKey()
				end
				tbl_20.key = newKey
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				clone_3[any_findIndex_result1_3] = Object_upvr.assign({}, tbl_17, tbl_20)
				return Object_upvr.assign(table.clone(arg2_8), {
					routes = clone_3;
				})
			end
		end
		if arg1_12.type == StackActions_upvr.CompleteTransition and (arg1_12.key == nil or arg1_12.key == arg2_8.key) or arg1_12.toChildKey == arg2_8.routes[arg2_8.index].key and arg2_8.isTransitioning then
			return Object_upvr.assign(table.clone(arg2_8), {
				isTransitioning = false;
			})
		end
		if arg1_12.type == NavigationActions_upvr.SetParams then
			local key_10_upvr = arg1_12.key
			local any_findIndex_result1 = Array_upvr.findIndex(arg2_8.routes, function(arg1_23) -- Line 545
				--[[ Upvalues[1]:
					[1]: key_10_upvr (readonly)
				]]
				local var254
				if arg1_23.key ~= key_10_upvr then
					var254 = false
				else
					var254 = true
				end
				return var254
			end)
			if 0 < any_findIndex_result1 then
				local var256 = arg2_8.routes[any_findIndex_result1]
				local None = Object_upvr.None
				if arg1_12.params ~= Object_upvr.None then
					if var256.params and arg1_12.params then
						None = Object_upvr.assign(table.clone(var256.params), arg1_12.params)
					elseif var256.params then
						None = table.clone(var256.params)
					elseif arg1_12.params then
						None = table.clone(arg1_12.params)
					else
						None = {}
					end
				end
				local clone_2 = table.clone(arg2_8.routes)
				clone_2[any_findIndex_result1] = Object_upvr.assign(table.clone(var256), {
					params = None;
				})
				return Object_upvr.assign(table.clone(arg2_8), {
					routes = clone_2;
				})
			end
		end
		key_10_upvr = arg1_12.type
		local var261
		if var261 == StackActions_upvr.Reset then
			var261 = arg1_12.key
			if var261 ~= nil then
				var261 = arg1_12.key
				if var261 ~= arg2_8.key then
					return arg2_8
				end
			end
			if arg1_12.actions then
				var261 = Array_upvr.map
				var261 = var261(arg1_12.actions, function(arg1_24) -- Line 576
					--[[ Upvalues[6]:
						[1]: tbl_26_upvr (copied, readonly)
						[2]: roblox_upvr (copied, readonly)
						[3]: NavigationActions_upvr (copied, readonly)
						[4]: getParamsForRouteAndAction_upvr (copied, readonly)
						[5]: Object_upvr (copied, readonly)
						[6]: KeyGenerator_upvr (copied, readonly)
					]]
					local var263 = tbl_26_upvr[arg1_24.routeName]
					local var264
					if var263 ~= nil and var263 ~= roblox_upvr then
						local action_2 = arg1_24.action
						if not action_2 then
							action_2 = NavigationActions_upvr.init
							action_2 = action_2({
								params = getParamsForRouteAndAction_upvr(arg1_24.routeName, arg1_24);
							})
						end
						var264 = var263.getStateForAction(action_2)
					end
					local module_2 = {
						routeName = arg1_24.routeName;
					}
					local key_9 = arg1_24.key
					if not key_9 then
						key_9 = KeyGenerator_upvr.generateKey()
					end
					module_2.key = key_9
					return Object_upvr.assign({
						params = getParamsForRouteAndAction_upvr(arg1_24.routeName, arg1_24);
					}, var264, module_2)
				end)
			else
				var261 = {}
			end
			return Object_upvr.assign(table.clone(arg2_8), {
				routes = var261;
				index = arg1_12.index;
			})
		end
		if arg1_12.type == NavigationActions_upvr.Back or arg1_12.type == StackActions_upvr.Pop then
			local key_8_upvr = arg1_12.key
			local n = arg1_12.n
			if arg1_12.type == StackActions_upvr.Pop and arg1_12.prune == false and key_8_upvr then
				local any_findIndex_result1_5 = Array_upvr.findIndex(arg2_8.routes, function(arg1_25) -- Line 617
					--[[ Upvalues[1]:
						[1]: key_8_upvr (readonly)
					]]
					local var274
					if arg1_25.key ~= key_8_upvr then
						var274 = false
					else
						var274 = true
					end
					return var274
				end)
				if 0 < any_findIndex_result1_5 then
					local any_concat_result1 = Array_upvr.concat(Array_upvr.slice(arg2_8.routes, 1, math.max(any_findIndex_result1_5 - (n or 1), 1) + 1), Array_upvr.slice(arg2_8.routes, any_findIndex_result1_5 + 1))
					if 0 < #any_concat_result1 then
						local module_8 = {
							routes = any_concat_result1;
						}
						local len = #any_concat_result1
						module_8.index = len
						if arg1_12.immediate == true then
							len = false
						else
							len = true
						end
						module_8.isTransitioning = len
						do
							return Object_upvr.assign(table.clone(arg2_8), module_8)
						end
						-- KONSTANTWARNING: GOTO [1040] #715
					end
					-- KONSTANTWARNING: GOTO [1040] #715
				end
			else
				any_findIndex_result1_5 = arg2_8.index
				local var279
				if arg1_12.type == StackActions_upvr.Pop and n ~= nil then
					var279 = math.max(2, arg2_8.index - n + 1)
				elseif key_8_upvr then
					var279 = Array_upvr.findIndex(arg2_8.routes, function(arg1_26) -- Line 642
						--[[ Upvalues[1]:
							[1]: key_8_upvr (readonly)
						]]
						local var281
						if arg1_26.key ~= key_8_upvr then
							var281 = false
						else
							var281 = true
						end
						return var281
					end)
				end
				if 1 < var279 then
					local module_11 = {
						routes = Array_upvr.slice(arg2_8.routes, 1, var279);
					}
					local var283 = var279 - 1
					module_11.index = var283
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if arg1_12.immediate == true then
						var283 = false
					else
						var283 = true
					end
					module_11.isTransitioning = var283
					return Object_upvr.assign(table.clone(arg2_8), module_11)
				end
			end
		end
		if arg1_12.key then
			key_8_upvr = StateUtils_upvr.indexOf(arg2_8, arg1_12.key)
		else
			key_8_upvr = nil
		end
		var279 = arg2_8.routes
		for i_6 = #var279, 1, -1 do
			var279 = arg2_8.routes[i_6]
			local var284 = var279
			local function INLINED_9() -- Internal function, doesn't exist in bytecode
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return tbl_26_upvr[var284.routeName] ~= roblox_upvr
			end
			if var284.key ~= var197.key and (key_8_upvr == 1 or var284.key == arg1_12.key) or tbl_26_upvr[var284.routeName] ~= nil and INLINED_9() then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local any_getStateForAction_result1_4 = tbl_26_upvr[var284.routeName].getStateForAction(arg1_12, var284)
				if any_getStateForAction_result1_4 == nil then
					return arg2_8
				end
				if any_getStateForAction_result1_4 ~= var284 then
					return StateUtils_upvr.replaceAt(arg2_8, var284.key, any_getStateForAction_result1_4, arg1_12.preserveFocus)
				end
			end
		end
		return arg2_8
	end
	local getPathAndParamsForRoute_upvr = createPathParser_upvr_result1.getPathAndParamsForRoute
	function module_9.getPathAndParamsForState(arg1_27) -- Line 696
		--[[ Upvalues[1]:
			[1]: getPathAndParamsForRoute_upvr (readonly)
		]]
		return getPathAndParamsForRoute_upvr(arg1_27.routes[arg1_27.index])
	end
	local getActionForPathAndParams_2_upvr = createPathParser_upvr_result1.getActionForPathAndParams
	function module_9.getActionForPathAndParams(arg1_28, arg2_9) -- Line 701
		--[[ Upvalues[1]:
			[1]: getActionForPathAndParams_2_upvr (readonly)
		]]
		return getActionForPathAndParams_2_upvr(arg1_28, arg2_9)
	end
	module_9.getScreenOptions = createConfigGetter_upvr(var12_result1_upvr, var35_upvw.defaultNavigationOptions)
	return module_9
end