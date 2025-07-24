-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:54
-- Luau version 6, Types version 3
-- Time taken: 0.000519 seconds

local module = {}
local getStackByFiberInDevAndProd_upvr = require(script.Parent.ReactFiberComponentStack).getStackByFiberInDevAndProd
function module.createCapturedValue(arg1, arg2) -- Line 26
	--[[ Upvalues[1]:
		[1]: getStackByFiberInDevAndProd_upvr (readonly)
	]]
	local module_2 = {}
	module_2.value = arg1
	module_2.source = arg2
	module_2.stack = getStackByFiberInDevAndProd_upvr(arg2)
	return module_2
end
return module