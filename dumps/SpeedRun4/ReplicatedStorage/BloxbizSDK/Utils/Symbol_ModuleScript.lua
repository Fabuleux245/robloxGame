-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:38
-- Luau version 6, Types version 3
-- Time taken: 0.000724 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local tbl_upvr = {}
function module_upvr.new(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if tbl_upvr[arg1] then
		return tbl_upvr[arg1]
	end
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1._name = arg1
	local var8 = arg2
	if not var8 then
		var8 = {}
	end
	for i, v in pairs(var8) do
		setmetatable_result1[i] = v
		local var12
	end
	tbl_upvr[arg1] = var12
	return var12
end
function module_upvr.__tostring(arg1) -- Line 22
	return string.format("Symbol(%q)", arg1._name)
end
return module_upvr