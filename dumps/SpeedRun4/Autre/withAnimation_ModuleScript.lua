-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:46
-- Luau version 6, Types version 3
-- Time taken: 0.002662 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local Otter_upvr = require(Parent.Otter)
local t = require(Parent.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("AnimatedComponent")
any_extend_result1_upvr.validateProps = t.strictInterface({
	values = t.table;
	render = t.callback;
	options = t.optional(t.table);
})
function any_extend_result1_upvr.update(arg1, arg2) -- Line 37
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local tbl = {}
	for i, v in pairs(arg2) do
		if type(i) == "function" then
			i(v)
		else
			tbl[i] = v
		end
	end
	for i_2, _ in pairs(arg1.state) do
		if not arg2[i_2] then
			tbl[i_2] = Roact_upvr.None
		end
	end
	if next(tbl) ~= nil then
		arg1:setState(tbl)
	end
end
function any_extend_result1_upvr.init(arg1) -- Line 56
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	arg1:update(arg1.props.values)
	arg1.motor = Otter_upvr.createGroupMotor(arg1.props.values)
	arg1.motor:onStep(function(arg1_2) -- Line 59
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:update(arg1_2)
	end)
end
function any_extend_result1_upvr.didUpdate(arg1, arg2) -- Line 64
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local values = arg1.props.values
	local props = arg1.props
	local options = props.options
	local var30
	if values == var30 then
		props = false
	else
		props = true
	end
	if options == arg2.options then
		var30 = false
	else
		var30 = true
	end
	if props or var30 then
		for i_3, v_3 in pairs(values) do
			({})[i_3] = Otter_upvr.spring(v_3, options)
			local var35
		end
		arg1.motor:setGoal(var35)
	end
end
function any_extend_result1_upvr.render(arg1) -- Line 80
	return arg1.props.render(arg1.state)
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 85
	if arg1.motor then
		arg1.motor:destroy()
		arg1.motor = nil
	end
end
return function(arg1, arg2, arg3) -- Line 92
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
	]]
	local module = {}
	module.values = arg1
	module.options = arg3
	module.render = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, module)
end