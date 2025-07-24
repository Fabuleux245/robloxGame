-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:19
-- Luau version 6, Types version 3
-- Time taken: 0.000936 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var2 = arg1
	if not var2 then
		var2 = {}
	end
	setmetatable(var2, {
		__index = module_upvr;
	})
	return var2
end
function module_upvr.GetItem(arg1, arg2) -- Line 13
	return arg1[arg2]
end
function module_upvr.SetItem(arg1, arg2, arg3) -- Line 18
	arg1[arg2] = tostring(arg3)
end
function module_upvr.flush(arg1) -- Line 22
end
return module_upvr