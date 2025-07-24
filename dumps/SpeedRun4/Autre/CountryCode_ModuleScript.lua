-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:52
-- Luau version 6, Types version 3
-- Time taken: 0.000618 seconds

local module_upvr = {
	new = function() -- Line 4, Named "new"
		return {}
	end;
}
function module_upvr.fromJSON(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	any_new_result1.name = arg1.name
	any_new_result1.code = arg1.code
	any_new_result1.prefix = arg1.prefix
	any_new_result1.localizedName = arg1.localizedName
	any_new_result1.isDefault = arg1.isDefault
	return any_new_result1
end
return module_upvr