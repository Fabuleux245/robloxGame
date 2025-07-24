-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:46
-- Luau version 6, Types version 3
-- Time taken: 0.004649 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local tbl_2_upvr = {
	SetCurrent = "SetCurrent";
	SetOpening = "SetOpening";
	SetOpened = "SetOpened";
	SetClosing = "SetClosing";
	SetClosed = "SetClosed";
}
local ViewState_upvr = require(script.Parent.ViewState)
local function RouteViewStatesReducer_upvr(arg1, arg2) -- Line 73, Named "RouteViewStatesReducer"
	--[[ Upvalues[5]:
		[1]: Array_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: RouteViewStatesReducer_upvr (readonly)
		[4]: ViewState_upvr (readonly)
		[5]: Object_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local function _(arg1_2) -- Line 74
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var16
		if arg1_2.descriptor.key ~= arg2.key then
			var16 = false
		else
			var16 = true
		end
		return var16
	end
	local var17
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 37 start (CF ANALYSIS FAILED)
	for _, v in arg2.navigationState.routes do
		var17 = RouteViewStatesReducer_upvr(var17, {
			type = tbl_2_upvr.SetOpening;
			key = v.key;
			descriptor = arg2.descriptors[v.key];
		})
	end
	for _, v_2 in var17 do
		local var19
		if arg2.descriptors[v_2.descriptor.key] == nil then
			var19 = false
		else
			var19 = true
		end
		if not var19 then
			var17 = RouteViewStatesReducer_upvr(var17, {
				type = tbl_2_upvr.SetClosing;
				key = v_2.descriptor.key;
			})
		end
	end
	do
		return var17
	end
	-- KONSTANTERROR: [14] 11. Error Block 37 end (CF ANALYSIS FAILED)
end
local React_upvr = require(Parent.React)
local FFlagLuaAppEnableLazySwitchRouter_upvr = require(Parent.SharedFlags).FFlagLuaAppEnableLazySwitchRouter
local StackActions_upvr = require(Parent.RoactNavigation).StackActions
return function(arg1) -- Line 147, Named "useStackScreens"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: RouteViewStatesReducer_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: FFlagLuaAppEnableLazySwitchRouter_upvr (readonly)
		[5]: StackActions_upvr (readonly)
		[6]: Array_upvr (readonly)
		[7]: Object_upvr (readonly)
	]]
	local navigation_upvr = arg1.navigation
	local state_upvr = navigation_upvr.state
	local descriptors_upvr = arg1.descriptors
	local any_useReducer_result1_upvr, any_useReducer_result2_upvr = React_upvr.useReducer(RouteViewStatesReducer_upvr, {})
	React_upvr.useLayoutEffect(function() -- Line 157
		--[[ Upvalues[4]:
			[1]: any_useReducer_result2_upvr (readonly)
			[2]: tbl_2_upvr (copied, readonly)
			[3]: state_upvr (readonly)
			[4]: descriptors_upvr (readonly)
		]]
		any_useReducer_result2_upvr({
			type = tbl_2_upvr.SetCurrent;
			navigationState = state_upvr;
			descriptors = descriptors_upvr;
		})
	end, {state_upvr, descriptors_upvr})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_3) -- Line 165
		--[[ Upvalues[3]:
			[1]: FFlagLuaAppEnableLazySwitchRouter_upvr (copied, readonly)
			[2]: navigation_upvr (readonly)
			[3]: StackActions_upvr (copied, readonly)
		]]
		if not FFlagLuaAppEnableLazySwitchRouter_upvr or navigation_upvr.state.isTransitioning then
			local tbl = {
				key = navigation_upvr.state.key;
			}
			tbl.toChildKey = arg1_3
			navigation_upvr.dispatch(StackActions_upvr.completeTransition(tbl))
		end
	end, {navigation_upvr})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_4) -- Line 174
		--[[ Upvalues[3]:
			[1]: any_useReducer_result2_upvr (readonly)
			[2]: tbl_2_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr_2 (readonly)
		]]
		any_useReducer_result2_upvr({
			type = tbl_2_upvr.SetOpened;
			key = arg1_4.descriptor.key;
		})
		any_useCallback_result1_upvr_2(arg1_4.descriptor.key)
	end, {any_useCallback_result1_upvr_2})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_5) -- Line 182
		--[[ Upvalues[2]:
			[1]: any_useReducer_result2_upvr (readonly)
			[2]: tbl_2_upvr (copied, readonly)
		]]
		any_useReducer_result2_upvr({
			type = tbl_2_upvr.SetClosed;
			key = arg1_5.descriptor.key;
		})
	end, {})
	return React_upvr.useMemo(function() -- Line 189
		--[[ Upvalues[5]:
			[1]: Array_upvr (copied, readonly)
			[2]: any_useReducer_result1_upvr (readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: any_useCallback_result1_upvr_3 (readonly)
			[5]: any_useCallback_result1_upvr (readonly)
		]]
		return Array_upvr.map(any_useReducer_result1_upvr, function(arg1_6) -- Line 190
			--[[ Upvalues[3]:
				[1]: Object_upvr (copied, readonly)
				[2]: any_useCallback_result1_upvr_3 (copied, readonly)
				[3]: any_useCallback_result1_upvr (copied, readonly)
			]]
			return Object_upvr.assign({}, arg1_6, {
				setOpened = function() -- Line 192, Named "setOpened"
					--[[ Upvalues[2]:
						[1]: any_useCallback_result1_upvr_3 (copied, readonly)
						[2]: arg1_6 (readonly)
					]]
					any_useCallback_result1_upvr_3(arg1_6)
				end;
				setClosed = function() -- Line 195, Named "setClosed"
					--[[ Upvalues[2]:
						[1]: any_useCallback_result1_upvr (copied, readonly)
						[2]: arg1_6 (readonly)
					]]
					any_useCallback_result1_upvr(arg1_6)
				end;
			})
		end)
	end, {any_useReducer_result1_upvr, any_useCallback_result1_upvr_3, any_useCallback_result1_upvr})
end