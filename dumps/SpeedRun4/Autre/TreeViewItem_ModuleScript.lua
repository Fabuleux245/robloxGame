-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:11
-- Luau version 6, Types version 3
-- Time taken: 0.002235 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2) -- Line 19
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._id = arg1
	module._parent = arg2
	module._children = {}
	return module
end
function module_2_upvr.getValue(arg1) -- Line 29
	return arg1._value
end
function module_2_upvr.getLabel(arg1) -- Line 33
	return arg1._label
end
function module_2_upvr.getChildren(arg1) -- Line 37
	return arg1._children
end
function module_2_upvr.getId(arg1) -- Line 41
	return arg1._id
end
function module_2_upvr.getStackDepth(arg1) -- Line 45
	if arg1._parent == nil then
		return 0
	end
	return 1 + arg1._parent:getStackDepth()
end
function module_2_upvr.setLabelAndValue(arg1, arg2, arg3) -- Line 53
	arg1._label = arg2
	arg1._value = arg3
end
function module_2_upvr.getOrMakeChildById(arg1, arg2) -- Line 58
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	for _, v in ipairs(arg1._children) do
		if v:getId() == arg2 then
			return v
		end
	end
	local any_new_result1 = module_2_upvr.new(arg2, arg1)
	table.insert(arg1._children, any_new_result1)
	return any_new_result1
end
function module_2_upvr.removeChildren(arg1) -- Line 70
	if not arg1._children then
	else
		for _, v_3 in ipairs(arg1._children) do
			v_3:removeChildren()
			v_3 = nil
		end
		arg1._id = nil
		arg1._parent = nil
		arg1._children = nil
	end
end
function module_2_upvr.removeChild(arg1, arg2) -- Line 82
	for _, v_2 in ipairs(arg1._children) do
		if v_2:getId() == arg2 then
			v_2:removeChildren()
			return
		end
	end
end
return module_2_upvr