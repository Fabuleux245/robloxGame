-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:14
-- Luau version 6, Types version 3
-- Time taken: 0.010519 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Array_upvr = require(Parent.LuauPolyfill).Array
local Events_upvr = require(Parent_2.Events)
local any_extend_result1 = require(Parent.React).Component:extend("NavigationEventManager")
function any_extend_result1.didMount(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: Events_upvr (readonly)
	]]
	local navigation_8 = arg1.props.navigation
	arg1._actionSubscription = navigation_8.addListener(Events_upvr.Action, function(...) -- Line 16
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_handleAction(...)
	end)
	arg1._willFocusSubscription = navigation_8.addListener(Events_upvr.WillFocus, function(...) -- Line 20
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_handleWillFocus(...)
	end)
	arg1._willBlurSubscription = navigation_8.addListener(Events_upvr.WillBlur, function(...) -- Line 24
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_handleWillBlur(...)
	end)
	arg1._didFocusSubscription = navigation_8.addListener(Events_upvr.DidFocus, function(...) -- Line 28
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_handleDidFocus(...)
	end)
	arg1._didBlurSubscription = navigation_8.addListener(Events_upvr.DidBlur, function(...) -- Line 32
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_handleDidBlur(...)
	end)
	arg1._refocusSubscription = navigation_8.addListener(Events_upvr.Refocus, function(...) -- Line 36
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_handleRefocus(...)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 41
	if arg1._actionSubscription then
		arg1._actionSubscription.remove()
	end
	if arg1._willFocusSubscription then
		arg1._willFocusSubscription.remove()
	end
	if arg1._willBlurSubscription then
		arg1._willBlurSubscription.remove()
	end
	if arg1._didFocusSubscription then
		arg1._didFocusSubscription.remove()
	end
	if arg1._didBlurSubscription then
		arg1._didBlurSubscription.remove()
	end
	if arg1._refocusSubscription then
		arg1._refocusSubscription.remove()
	end
end
function any_extend_result1._handleAction(arg1, arg2) -- Line 62
	--[[ Upvalues[1]:
		[1]: Events_upvr (readonly)
	]]
	local state_2 = arg2.state
	local lastState_8 = arg2.lastState
	local action = arg2.action
	if not arg1.props.navigation.isFocused() then
	else
		local var22
		if lastState_8 and lastState_8.routes then
			var22 = lastState_8.routes[lastState_8.index]
		end
		local var23 = state_2.routes[state_2.index]
		local tbl_4 = {
			context = "%s:%s_%s":format(var23.key, tostring(action.type), arg2.context or "Root");
			state = var23;
			lastState = var22;
			action = action;
			type = arg2.type;
		}
		local var25 = var22
		if var25 then
			var25 = var22.key
		end
		if var25 ~= var23.key then
			arg1:_emitWillFocus(var23.key, tbl_4)
			if var22 and var22.key then
				arg1:_emitWillBlur(var22.key, tbl_4)
			end
		end
		if lastState_8 and lastState_8.isTransitioning ~= state_2.isTransitioning and state_2.isTransitioning == false then
			if arg1._lastWillBlurKey then
				arg1:_emitDidBlur(arg1._lastWillBlurKey, tbl_4)
			end
			if arg1._lastWillFocusKey then
				arg1:_emitDidFocus(arg1._lastWillFocusKey, tbl_4)
			end
		end
		arg1.props.onEvent(var23.key, Events_upvr.Action, tbl_4)
	end
end
function any_extend_result1._handleWillFocus(arg1, arg2) -- Line 113
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local lastState_2 = arg2.lastState
	local action_5 = arg2.action
	local navigation_9 = arg1.props.navigation
	local var38_upvr = navigation_9.state.routes[navigation_9.state.index]
	local var39
	if lastState_2 then
		local routes_4 = lastState_2.routes
		if routes_4 then
			if lastState_2 then
				routes_4 = Array_upvr.findIndex
				routes_4 = routes_4(lastState_2.routes, function(arg1_3) -- Line 125
					--[[ Upvalues[1]:
						[1]: var38_upvr (readonly)
					]]
					local var42
					if arg1_3.key ~= var38_upvr.key then
						var42 = false
					else
						var42 = true
					end
					return var42
				end)
			else
				routes_4 = -1
			end
			if 0 < routes_4 then
				var39 = lastState_2.routes[routes_4]
			end
		end
	end
	arg1:_emitWillFocus(var38_upvr.key, {
		context = "%s:%s_%s":format(var38_upvr.key, tostring(action_5.type), arg2.context or "Root");
		state = var38_upvr;
		lastState = var39;
		action = action_5;
		type = arg2.type;
	})
end
function any_extend_result1._handleWillBlur(arg1, arg2) -- Line 143
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local lastState_7 = arg2.lastState
	local action_2 = arg2.action
	local navigation_6 = arg1.props.navigation
	local var47_upvr = navigation_6.state.routes[navigation_6.state.index]
	local var48
	if lastState_7 then
		local routes = lastState_7.routes
		if routes then
			if lastState_7 then
				routes = Array_upvr.findIndex
				routes = routes(lastState_7.routes, function(arg1_4) -- Line 155
					--[[ Upvalues[1]:
						[1]: var47_upvr (readonly)
					]]
					local var51
					if arg1_4.key ~= var47_upvr.key then
						var51 = false
					else
						var51 = true
					end
					return var51
				end)
			else
				routes = -1
			end
			if 0 < routes then
				var48 = lastState_7.routes[routes]
			end
		end
	end
	arg1:_emitWillBlur(var47_upvr.key, {
		context = "%s:%s_%s":format(var47_upvr.key, tostring(action_2.type), arg2.context or "Root");
		state = var47_upvr;
		lastState = var48;
		action = action_2;
		type = arg2.type;
	})
end
function any_extend_result1._handleDidFocus(arg1, arg2) -- Line 173
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local lastState_3 = arg2.lastState
	local action_6 = arg2.action
	local navigation_3 = arg1.props.navigation
	if arg1._lastWillFocusKey then
		local any_findIndex_result1_2 = Array_upvr.findIndex(navigation_3.state.routes, function(arg1_7) -- Line 182
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var69
			if arg1_7.key ~= arg1._lastWillFocusKey then
				var69 = false
			else
				var69 = true
			end
			return var69
		end)
		if 0 < any_findIndex_result1_2 then
			local var71_upvr = navigation_3.state.routes[any_findIndex_result1_2]
			local var72
			if lastState_3 then
				local routes_5 = lastState_3.routes
				if routes_5 then
					if lastState_3 then
						routes_5 = Array_upvr.findIndex
						routes_5 = routes_5(lastState_3.routes, function(arg1_8) -- Line 192
							--[[ Upvalues[1]:
								[1]: var71_upvr (readonly)
							]]
							local var75
							if arg1_8.key ~= var71_upvr.key then
								var75 = false
							else
								var75 = true
							end
							return var75
						end)
					else
						routes_5 = -1
					end
					if 0 < routes_5 then
						var72 = lastState_3.routes[routes_5]
					end
				end
			end
			arg1:_emitDidFocus(var71_upvr.key, {
				context = "%s:%s_%s":format(var71_upvr.key, tostring(action_6.type), arg2.context or "Root");
				state = var71_upvr;
				lastState = var72;
				action = action_6;
				type = arg2.type;
			})
		end
	end
end
function any_extend_result1._handleDidBlur(arg1, arg2) -- Line 212
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local lastState = arg2.lastState
	local action_8 = arg2.action
	local navigation_2 = arg1.props.navigation
	if arg1._lastWillBlurKey then
		local any_findIndex_result1_3 = Array_upvr.findIndex(navigation_2.state.routes, function(arg1_9) -- Line 221
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var81
			if arg1_9.key ~= arg1._lastWillBlurKey then
				var81 = false
			else
				var81 = true
			end
			return var81
		end)
		if 0 < any_findIndex_result1_3 then
			local var83_upvr = navigation_2.state.routes[any_findIndex_result1_3]
			local var84
			if lastState then
				local routes_3 = lastState.routes
				if routes_3 then
					if lastState then
						routes_3 = Array_upvr.findIndex
						routes_3 = routes_3(lastState.routes, function(arg1_10) -- Line 231
							--[[ Upvalues[1]:
								[1]: var83_upvr (readonly)
							]]
							local var87
							if arg1_10.key ~= var83_upvr.key then
								var87 = false
							else
								var87 = true
							end
							return var87
						end)
					else
						routes_3 = -1
					end
					if 0 < routes_3 then
						var84 = lastState.routes[routes_3]
					end
				end
			end
			arg1:_emitDidBlur(var83_upvr.key, {
				context = "%s:%s_%s":format(var83_upvr.key, tostring(action_8.type), arg2.context or "Root");
				state = var83_upvr;
				lastState = var84;
				action = action_8;
				type = arg2.type;
			})
		end
	end
end
function any_extend_result1._handleRefocus(arg1) -- Line 251
	--[[ Upvalues[1]:
		[1]: Events_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	arg1.props.onEvent(navigation.state.routes[navigation.state.index].key, Events_upvr.Refocus)
end
function any_extend_result1._emitWillFocus(arg1, arg2, arg3) -- Line 259
	--[[ Upvalues[1]:
		[1]: Events_upvr (readonly)
	]]
	if arg1._lastWillBlurKey == arg2 then
		arg1._lastWillBlurKey = nil
	end
	if arg1._lastWillFocusKey == arg2 then
	else
		arg1._lastDidFocusKey = nil
		arg1._lastWillFocusKey = arg2
		local navigation_7 = arg1.props.navigation
		arg1.props.onEvent(arg2, Events_upvr.WillFocus, arg3)
		if type(navigation_7.state.isTransitioning) ~= "boolean" or navigation_7.state.isTransitioning ~= true and not navigation_7._dangerouslyGetParent() then
			arg1:_emitDidFocus(arg2, arg3)
		end
	end
end
function any_extend_result1._emitWillBlur(arg1, arg2, arg3) -- Line 284
	--[[ Upvalues[1]:
		[1]: Events_upvr (readonly)
	]]
	if arg1._lastWillFocusKey == arg2 then
		arg1._lastWillFocusKey = nil
	end
	if arg1._lastWillBlurKey == arg2 then
	else
		arg1._lastDidBlurKey = nil
		arg1._lastWillBlurKey = arg2
		local navigation_4 = arg1.props.navigation
		arg1.props.onEvent(arg2, Events_upvr.WillBlur, arg3)
		if type(navigation_4.state.isTransitioning) ~= "boolean" or navigation_4.state.isTransitioning ~= true and not navigation_4._dangerouslyGetParent() then
			arg1:_emitDidBlur(arg2, arg3)
		end
	end
end
function any_extend_result1._emitDidFocus(arg1, arg2, arg3) -- Line 309
	--[[ Upvalues[1]:
		[1]: Events_upvr (readonly)
	]]
	if arg1._lastWillFocusKey ~= arg2 or arg1._lastDidFocusKey == arg2 then
	else
		arg1._lastDidFocusKey = arg2
		arg1.props.onEvent(arg2, Events_upvr.DidFocus, arg3)
	end
end
function any_extend_result1._emitDidBlur(arg1, arg2, arg3) -- Line 321
	--[[ Upvalues[1]:
		[1]: Events_upvr (readonly)
	]]
	if arg1._lastWillBlurKey ~= arg2 or arg1._lastDidBlurKey == arg2 then
	else
		arg1._lastDidBlurKey = arg2
		arg1.props.onEvent(arg2, Events_upvr.DidBlur, arg3)
	end
end
function any_extend_result1.render(arg1) -- Line 333
	return nil
end
return any_extend_result1