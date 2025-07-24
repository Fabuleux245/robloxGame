-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:13
-- Luau version 6, Types version 3
-- Time taken: 0.001456 seconds

local Parent = script.Parent.Parent
local Events = require(Parent.Events)
local tbl_upvr = {
	[Events.WillFocus] = "onWillFocus";
	[Events.DidFocus] = "onDidFocus";
	[Events.WillBlur] = "onWillBlur";
	[Events.DidBlur] = "onDidBlur";
}
local any_extend_result1 = require(Parent.Parent.React).Component:extend("NavigationEvents")
function any_extend_result1.didMount(arg1) -- Line 51
	arg1:subscribeAll()
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 58
	if arg1.props.navigation ~= arg2.navigation then
		arg1:removeAll()
		arg1:subscribeAll()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 66
	arg1:removeAll()
end
function any_extend_result1.getPropListener(arg1, arg2) -- Line 70
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return arg1.props[tbl_upvr[arg2]]
end
function any_extend_result1.subscribeAll(arg1) -- Line 74
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	arg1.subscriptions = {}
	for i_upvr in tbl_upvr do
		arg1.subscriptions[i_upvr] = navigation.addListener(i_upvr, function(...) -- Line 80
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: i_upvr (readonly)
			]]
			local any_getPropListener_result1 = arg1:getPropListener(i_upvr)
			if any_getPropListener_result1 then
				any_getPropListener_result1(...)
			end
		end)
	end
end
function any_extend_result1.removeAll(arg1) -- Line 90
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	for i_2 in tbl_upvr do
		local var11 = arg1.subscriptions[i_2]
		if var11 then
			var11.remove()
			arg1.subscriptions[i_2] = nil
		end
	end
end
function any_extend_result1.render(arg1) -- Line 100
	return nil
end
return require(script.Parent.withNavigation)(any_extend_result1)