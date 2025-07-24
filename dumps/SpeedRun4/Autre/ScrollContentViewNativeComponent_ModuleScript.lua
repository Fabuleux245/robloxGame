-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:50
-- Luau version 6, Types version 3
-- Time taken: 0.001125 seconds

local Parent = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local React_upvr = require(Parent.React)
local any_extend_result1 = React_upvr.Component:extend("ScrollContentViewNativeComponent")
function any_extend_result1.init(arg1, arg2) -- Line 27
	arg1.props = arg2
end
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local Change_upvr = React_upvr.Change
function any_extend_result1.render(arg1) -- Line 31
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Change_upvr (readonly)
		[4]: React_upvr (readonly)
	]]
	local var8
	if Array_upvr.isArray(arg1.props.style) then
		var8 = Array_upvr.reduce
		var8 = var8(arg1.props.style, function(arg1_2, arg2) -- Line 33
			--[[ Upvalues[1]:
				[1]: Object_upvr (copied, readonly)
			]]
			return Object_upvr.assign(arg1_2, arg2)
		end, {})
	else
		var8 = arg1.props.style
	end
	local module = {
		Name = "RCTScrollContentView";
		[Change_upvr.AbsoluteSize] = arg1.props.onLayout;
	}
	local udim2 = UDim2.new(1, 0, 1, 0)
	module.Size = udim2
	if arg1.props.AutomaticSize then
		udim2 = {}
		udim2.AutomaticSize = arg1.props.AutomaticSize
	else
		udim2 = nil
	end
	return React_upvr.createElement("Frame", Object_upvr.assign(module, udim2, var8), arg1.props.children)
end
return any_extend_result1