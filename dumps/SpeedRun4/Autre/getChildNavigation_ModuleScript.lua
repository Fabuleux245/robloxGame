-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:50
-- Luau version 6, Types version 3
-- Time taken: 0.008146 seconds

local LuauPolyfill = require(script.Parent.Parent.LuauPolyfill)
local function _(arg1) -- Line 12, Named "createParamGetter"
	return function(arg1_2, arg2) -- Line 13
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local params_2 = arg1.params
		if params_2 and params_2[arg1_2] ~= nil then
			return params_2[arg1_2]
		end
		return arg2
	end
end
local getChildrenNavigationCache_upvr = require(script.Parent.getChildrenNavigationCache)
local Array_upvr = LuauPolyfill.Array
local getChildRouter_upvr = require(script.Parent.getChildRouter)
local Object_upvr = LuauPolyfill.Object
local getNavigationActionCreators_upvr = require(script.Parent.routers.getNavigationActionCreators)
local getEventManager_upvr = require(script.Parent.getEventManager)
local function getChildNavigation(arg1, arg2, arg3) -- Line 24
	--[[ Upvalues[7]:
		[1]: getChildrenNavigationCache_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: getChildRouter_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: getNavigationActionCreators_upvr (readonly)
		[6]: getChildNavigation (readonly)
		[7]: getEventManager_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local getChildrenNavigationCache_upvr_result1_2 = getChildrenNavigationCache_upvr(arg1)
	local any_findIndex_result1 = Array_upvr.findIndex(arg1.state.routes, function(arg1_8) -- Line 27
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var61
		if arg1_8.key ~= arg2 then
			var61 = false
		else
			var61 = true
		end
		return var61
	end)
	local var63
	if any_findIndex_result1 < 1 then
		return nil
	end
	local var64_upvr = arg1.state.routes[any_findIndex_result1]
	local var65 = getChildrenNavigationCache_upvr_result1_2[arg2]
	if var65 and var65.state == var64_upvr then
		return var65
	end
	var63 = var64_upvr.routeName
	local var6_result1 = getChildRouter_upvr(arg1.router, var63)
	local var67
	var63 = var64_upvr.routes
	if var63 then
		var63 = type(var64_upvr.index)
		if var63 == "number" then
			var63 = var64_upvr.routes
			var67 = var63[var64_upvr.index]
		end
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var63 = var6_result1.getActionCreators(var67, var64_upvr.key)
		return var63
	end
	if not var6_result1 or not INLINED_2() then
		var63 = {}
	end
	if arg1.actions then
	else
	end
	local any_getActionCreators_result1 = arg1.router.getActionCreators(var64_upvr, arg1.state.key)
	if not any_getActionCreators_result1 then
		any_getActionCreators_result1 = {}
	end
	local var69 = var63
	if not var69 then
		var69 = {}
	end
	local var8_result1 = getNavigationActionCreators_upvr(var64_upvr)
	if not var8_result1 then
		var8_result1 = {}
	end
	local any_assign_result1 = Object_upvr.assign({}, any_getActionCreators_result1, var69, var8_result1)
	local tbl_3 = {}
	for i, v_upvr in any_assign_result1 do
		tbl_3[i] = function(...) -- Line 66
			--[[ Upvalues[2]:
				[1]: v_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			return arg1.dispatch(v_upvr(...))
		end
	end
	local arg3_result1_7 = arg3()
	if arg3_result1_7 then
		i = Array_upvr
		v_upvr = arg3_result1_7.state
		i = v_upvr.routes
		v_upvr = var64_upvr
		if i.indexOf(i, v_upvr) ~= 1 then
		else
		end
	end
	if var65 and var65.isFirstRouteInParent() == true then
		v_upvr = Object_upvr
		i = v_upvr.assign
		v_upvr = table.clone(var65)
		local tbl_6 = {
			state = var64_upvr;
			router = var6_result1;
			actions = any_assign_result1;
			getParam = function(arg1_9, arg2_4) -- Line 13
				--[[ Upvalues[1]:
					[1]: var64_upvr (readonly)
				]]
				local params = var64_upvr.params
				if params and params[arg1_9] ~= nil then
					return params[arg1_9]
				end
				return arg2_4
			end;
		}
		local var78_upvw
		local function getChildNavigation(arg1_10) -- Line 88
			--[[ Upvalues[4]:
				[1]: getChildNavigation (copied, readonly)
				[2]: var78_upvw (read and write)
				[3]: arg3 (readonly)
				[4]: arg2 (readonly)
			]]
			return getChildNavigation(var78_upvw, arg1_10, function() -- Line 89
				--[[ Upvalues[2]:
					[1]: arg3 (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				local arg3_result1_6 = arg3()
				if arg3_result1_6 then
					return arg3_result1_6.getChildNavigation(arg2)
				end
				return nil
			end)
		end
		tbl_6.getChildNavigation = getChildNavigation
		i = i(v_upvr, tbl_3, tbl_6)
		var78_upvw = i
		local var81 = var78_upvw
		getChildrenNavigationCache_upvr_result1_2[arg2] = var81
		return var81
	end
	i = arg2
	local getEventManager_upvr_result1 = getEventManager_upvr(i)
	i = nil
	local tbl_4 = {
		state = var64_upvr;
		router = var6_result1;
		actions = any_assign_result1;
		getParam = function(arg1_11, arg2_5) -- Line 13
			--[[ Upvalues[1]:
				[1]: var64_upvr (readonly)
			]]
			local params_3 = var64_upvr.params
			if params_3 and params_3[arg1_11] ~= nil then
				return params_3[arg1_11]
			end
			return arg2_5
		end;
	}
	local var86_upvw
	function tbl_4.getChildNavigation(arg1_12) -- Line 109
		--[[ Upvalues[4]:
			[1]: getChildNavigation (copied, readonly)
			[2]: var86_upvw (read and write)
			[3]: arg3 (readonly)
			[4]: arg2 (readonly)
		]]
		return getChildNavigation(var86_upvw, arg1_12, function() -- Line 110
			--[[ Upvalues[2]:
				[1]: arg3 (copied, readonly)
				[2]: arg2 (copied, readonly)
			]]
			local arg3_result1_3 = arg3()
			if arg3_result1_3 then
				return arg3_result1_3.getChildNavigation(arg2)
			end
			return nil
		end)
	end
	function tbl_4.isFocused() -- Line 115
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: arg2 (readonly)
		]]
		local arg3_result1_2 = arg3()
		if not arg3_result1_2 then
			return false
		end
		if not arg3_result1_2.isFocused() then
			return false
		end
		local state_2 = arg3_result1_2.state
		if state_2.routes[state_2.index].key == arg2 then
			return true
		end
		return false
	end
	local var91_upvw = true
	function tbl_4.isFirstRouteInParent() -- Line 135
		--[[ Upvalues[1]:
			[1]: var91_upvw (read and write)
		]]
		return var91_upvw
	end
	tbl_4.dispatch = arg1.dispatch
	tbl_4.getScreenProps = arg1.getScreenProps
	tbl_4._dangerouslyGetParent = arg3
	tbl_4.addListener = getEventManager_upvr_result1.addListener
	tbl_4.emit = getEventManager_upvr_result1.emit
	var86_upvw = Object_upvr.assign(table.clone(tbl_3), tbl_4)
	getChildrenNavigationCache_upvr_result1_2[arg2] = var86_upvw
	return var86_upvw
end
return getChildNavigation