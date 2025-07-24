-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:50
-- Luau version 6, Types version 3
-- Time taken: 0.001044 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 23
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({
		_weakMap = setmetatable({}, {
			__mode = 'k';
		});
	}, module_upvr)
end
function module_upvr.get(arg1, arg2) -- Line 28
	return arg1._weakMap[arg2]
end
function module_upvr.set(arg1, arg2, arg3) -- Line 32
	arg1._weakMap[arg2] = arg3
	return arg1
end
function module_upvr.has(arg1, arg2) -- Line 37
	local var4
	if arg1._weakMap[arg2] == nil then
		var4 = false
	else
		var4 = true
	end
	return var4
end
return module_upvr