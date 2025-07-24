-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:27
-- Luau version 6, Types version 3
-- Time taken: 0.000605 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 4
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({
		passed = true;
		reasons = {};
	}, module_upvr)
end
function module_upvr.updateReasons(arg1, arg2, arg3) -- Line 13
	if arg2 then
	else
		table.insert(arg1.reasons, table.concat(arg3, '\n'))
		arg1.passed = false
	end
end
function module_upvr.getFinalResults(arg1) -- Line 22
	if arg1.passed then
		return true
	end
	return false, arg1.reasons
end
return module_upvr