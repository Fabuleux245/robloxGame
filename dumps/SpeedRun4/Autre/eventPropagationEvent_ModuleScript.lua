-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:52
-- Luau version 6, Types version 3
-- Time taken: 0.000676 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2, arg3, arg4, arg5) -- Line 18
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		cancelled = false;
	}
	module.phase = arg4
	module.currentInstance = arg2
	module.targetInstance = arg1
	module.eventName = arg3
	local var3
	if type(arg5) == "table" and not table.isfrozen(arg5) then
		var3 = table.freeze(arg5)
	else
		var3 = arg5
	end
	module.eventData = var3
	var3 = setmetatable
	var3(module, module_2_upvr)
	return module
end
function module_2_upvr.cancel(arg1) -- Line 39
	arg1.cancelled = true
end
return module_2_upvr