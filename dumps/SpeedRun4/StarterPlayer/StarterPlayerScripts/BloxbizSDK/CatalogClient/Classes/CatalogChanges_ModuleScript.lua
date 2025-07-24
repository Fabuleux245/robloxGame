-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:43
-- Luau version 6, Types version 3
-- Time taken: 0.000898 seconds

local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
local module_upvr = require(script.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
function module_upvr_2.new() -- Line 26
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr_2)
	setmetatable_result1.Changes = module_upvr.Value({})
	return setmetatable_result1
end
function module_upvr_2.GetLatestChange(arg1) -- Line 34
	local any_get_result1_3 = arg1.Changes:get()
	return any_get_result1_3[#any_get_result1_3]
end
function module_upvr_2.AddChange(arg1, arg2) -- Line 40
	local any_get_result1 = arg1.Changes:get()
	table.insert(any_get_result1, arg2)
	arg1.Changes:set(any_get_result1)
end
function module_upvr_2.RemoveLatestChange(arg1) -- Line 46
	local any_get_result1_2 = arg1.Changes:get()
	any_get_result1_2[#any_get_result1_2] = nil
	arg1.Changes:set(any_get_result1_2)
end
function module_upvr_2.DropChanges(arg1) -- Line 52
	arg1.Changes:set({})
end
return module_upvr_2