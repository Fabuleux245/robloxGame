-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:52
-- Luau version 6, Types version 3
-- Time taken: 0.002079 seconds

local Parent = script.Parent
local getChildrenNavigationCache_upvr = require(Parent.getChildrenNavigationCache)
local getChildNavigation_2_upvr = require(Parent.getChildNavigation)
local Events_upvr = require(Parent.Events)
local Object_upvr = require(Parent.Parent.LuauPolyfill).Object
local getNavigationActionCreators_upvr = require(Parent.routers.getNavigationActionCreators)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 13
	--[[ Upvalues[5]:
		[1]: getChildrenNavigationCache_upvr (readonly)
		[2]: getChildNavigation_2_upvr (readonly)
		[3]: Events_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: getNavigationActionCreators_upvr (readonly)
	]]
	local any_getActionCreators_result1 = arg1.getActionCreators(arg2, nil)
	local module_upvr = {
		actions = any_getActionCreators_result1;
	}
	module_upvr.router = arg1
	module_upvr.state = arg2
	module_upvr.dispatch = arg3
	module_upvr.getScreenProps = arg5
	function module_upvr._dangerouslyGetParent() -- Line 24
		return nil
	end
	function module_upvr.isFirstRouteInParent() -- Line 27
		return true
	end
	module_upvr._childrenNavigation = getChildrenNavigationCache_upvr(arg6())
	function module_upvr.getChildNavigation(arg1_2) -- Line 33
		--[[ Upvalues[3]:
			[1]: getChildNavigation_2_upvr (copied, readonly)
			[2]: module_upvr (readonly)
			[3]: arg6 (readonly)
		]]
		return getChildNavigation_2_upvr(module_upvr, arg1_2, arg6)
	end
	function module_upvr.isFocused(arg1_3) -- Line 37
		--[[ Upvalues[1]:
			[1]: arg6 (readonly)
		]]
		local state = arg6().state
		local var15 = true
		if arg1_3 ~= nil then
			if state.routes[state.index].key ~= arg1_3 then
				var15 = false
			else
				var15 = true
			end
		end
		return var15
	end
	function module_upvr.addListener(arg1_4, arg2_2) -- Line 45
		--[[ Upvalues[2]:
			[1]: Events_upvr (copied, readonly)
			[2]: arg4 (readonly)
		]]
		if arg1_4 ~= Events_upvr.Action then
			local module = {}
			local function remove() -- Line 47
			end
			module.remove = remove
			return module
		end
		arg4[arg2_2] = true
		return {
			remove = function() -- Line 51, Named "remove"
				--[[ Upvalues[2]:
					[1]: arg4 (copied, readonly)
					[2]: arg2_2 (readonly)
				]]
				arg4[arg2_2] = nil
			end;
		}
	end
	local any_assign_result1_upvr = Object_upvr.assign(getNavigationActionCreators_upvr(module_upvr.state), any_getActionCreators_result1)
	for i_upvr, _ in any_assign_result1_upvr do
		module_upvr[i_upvr] = function(...) -- Line 61
			--[[ Upvalues[3]:
				[1]: module_upvr (readonly)
				[2]: any_assign_result1_upvr (readonly)
				[3]: i_upvr (readonly)
			]]
			module_upvr.dispatch(any_assign_result1_upvr[i_upvr](...))
		end
	end
	return module_upvr
end