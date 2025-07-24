-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:45
-- Luau version 6, Types version 3
-- Time taken: 0.001297 seconds

local module_4_upvr = {}
module_4_upvr.__index = module_4_upvr
function module_4_upvr.__tostring(arg1) -- Line 3
	local module_2 = {}
	for i, v in pairs(arg1) do
		table.insert(module_2, string.format("%s = %s", tostring(i), tostring(v)))
	end
	table.sort(module_2)
	return "<HttpResponse: "..table.concat(module_2, ", ")..'>'
end
function module_4_upvr.success(arg1, arg2) -- Line 14
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local module = {}
	module.responseCode = arg1
	module.responseBody = arg2
	return setmetatable(module, module_4_upvr)
end
function module_4_upvr.error(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local module_3 = {}
	module_3.HttpError = arg1
	return setmetatable(module_3, module_4_upvr)
end
return module_4_upvr