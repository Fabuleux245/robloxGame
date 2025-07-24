-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:22
-- Luau version 6, Types version 3
-- Time taken: 0.002205 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Parent_3 = Parent.Parent
local function _(arg1) -- Line 11, Named "isComponent"
	local type_result1_2 = type(arg1)
	local var5 = true
	if type_result1_2 ~= "function" then
		if type_result1_2 ~= "table" then
			var5 = false
		else
			var5 = true
		end
	end
	return var5
end
local Object_upvr = require(Parent_3.LuauPolyfill).Object
local React_upvr = require(Parent_3.React)
local NavigationContext_upvr = require(Parent_2.NavigationContext)
local invariant_upvr = require(Parent.utils.invariant)
return function(arg1, arg2) -- Line 35
	--[[ Upvalues[4]:
		[1]: Object_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: NavigationContext_upvr (readonly)
		[4]: invariant_upvr (readonly)
	]]
	local type_result1 = type(arg1)
	local var12 = true
	if type_result1 ~= "function" then
		if type_result1 ~= "table" then
			var12 = false
		else
			var12 = true
		end
	end
	assert(var12, "withNavigation must be called with a Roact component (stateful or functional)")
	local any_assign_result1_upvr = Object_upvr.assign({
		forwardRef = true;
	}, arg2)
	return function(arg1_2) -- Line 39
		--[[ Upvalues[6]:
			[1]: React_upvr (copied, readonly)
			[2]: NavigationContext_upvr (copied, readonly)
			[3]: invariant_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Object_upvr (copied, readonly)
			[6]: any_assign_result1_upvr (readonly)
		]]
		local module = {}
		local navigation_upvr = arg1_2.navigation
		function module.render(arg1_3) -- Line 42
			--[[ Upvalues[7]:
				[1]: navigation_upvr (readonly)
				[2]: invariant_upvr (copied, readonly)
				[3]: React_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: Object_upvr (copied, readonly)
				[6]: arg1_2 (readonly)
				[7]: any_assign_result1_upvr (copied, readonly)
			]]
			local var18 = navigation_upvr or arg1_3
			local var19 = "unable to get access to navigation from props or context."
			invariant_upvr(var18, "withNavigation and withNavigationFocus can only ".."be used on a view hierarchy of a navigator. The wrapped component is "..var19)
			local module_2 = {
				navigation = var18;
			}
			if any_assign_result1_upvr.forwardRef then
				var19 = arg1_2.onRef
			else
				var19 = Object_upvr.None
			end
			module_2.ref = var19
			return React_upvr.createElement(arg1, Object_upvr.assign(table.clone(arg1_2), module_2))
		end
		return React_upvr.createElement(NavigationContext_upvr.Consumer, module)
	end
end