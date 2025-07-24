-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:19
-- Luau version 6, Types version 3
-- Time taken: 0.000882 seconds

local module = {}
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.GetInstance(arg1, arg2) -- Line 14
	if arg1.InstancePoolsByClass[arg2] == nil then
		arg1.InstancePoolsByClass[arg2] = {}
	end
	local len = #arg1.InstancePoolsByClass[arg2]
	if 0 < len then
		table.remove(arg1.InstancePoolsByClass[arg2])
		return arg1.InstancePoolsByClass[arg2][len]
	end
	return Instance.new(arg2)
end
function tbl_upvr.ReturnInstance(arg1, arg2) -- Line 27
	if arg1.InstancePoolsByClass[arg2.ClassName] == nil then
		arg1.InstancePoolsByClass[arg2.ClassName] = {}
	end
	if #arg1.InstancePoolsByClass[arg2.ClassName] < arg1.PoolSizePerType then
		table.insert(arg1.InstancePoolsByClass[arg2.ClassName], arg2)
	else
		arg2:Destroy()
	end
end
function module.new(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.InstancePoolsByClass = {}
	setmetatable_result1.Name = "ObjectPool"
	setmetatable_result1.PoolSizePerType = arg1
	return setmetatable_result1
end
return module