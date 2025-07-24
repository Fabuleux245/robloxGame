-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:22
-- Luau version 6, Types version 3
-- Time taken: 0.001708 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Parent_3 = Parent.Parent
local function _(arg1) -- Line 12, Named "isComponent"
	local type_result1 = type(arg1)
	local var5 = true
	if type_result1 ~= "function" then
		if type_result1 ~= "table" then
			var5 = false
		else
			var5 = true
		end
	end
	return var5
end
local React_upvr = require(Parent_3.React)
local Events_upvr = require(Parent.Events)
local Object_upvr = require(Parent_3.LuauPolyfill).Object
local withNavigation_upvr = require(Parent_2.withNavigation)
return function(arg1) -- Line 17
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Events_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: withNavigation_upvr (readonly)
	]]
	local type_result1_2 = type(arg1)
	local var12 = true
	if type_result1_2 ~= "function" then
		if type_result1_2 ~= "table" then
			var12 = false
		else
			var12 = true
		end
	end
	assert(var12, "withNavigationFocus must be called with a Roact component (stateful or functional)")
	local any_extend_result1 = React_upvr.Component:extend("NavigationFocusComponent")
	function any_extend_result1.init(arg1_2) -- Line 21
		arg1_2.state = {
			isFocused = arg1_2.props.navigation.isFocused();
		}
	end
	function any_extend_result1.didMount(arg1_3) -- Line 27
		--[[ Upvalues[1]:
			[1]: Events_upvr (copied, readonly)
		]]
		local navigation = arg1_3.props.navigation
		arg1_3.subscriptions = {navigation.addListener(Events_upvr.WillFocus, function() -- Line 31
			--[[ Upvalues[1]:
				[1]: arg1_3 (readonly)
			]]
			arg1_3:setState({
				isFocused = true;
			})
		end), navigation.addListener(Events_upvr.WillBlur, function() -- Line 37
			--[[ Upvalues[1]:
				[1]: arg1_3 (readonly)
			]]
			arg1_3:setState({
				isFocused = false;
			})
		end)}
	end
	function any_extend_result1.willUnmount(arg1_4) -- Line 46
		for _, v in arg1_4.subscriptions do
			v.remove()
		end
	end
	function any_extend_result1.render(arg1_5) -- Line 52
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Object_upvr (copied, readonly)
		]]
		return React_upvr.createElement(arg1, Object_upvr.assign(table.clone(arg1_5.props), {
			isFocused = arg1_5.state.isFocused;
		}))
	end
	return withNavigation_upvr(any_extend_result1, {
		forwardRef = false;
	})
end