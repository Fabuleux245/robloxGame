-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:42
-- Luau version 6, Types version 3
-- Time taken: 0.000565 seconds

local getFFlagUGCValidatePreciseVectorPrint_upvr = require(script.Parent.Parent.flags.getFFlagUGCValidatePreciseVectorPrint)
local module_upvr = {}
return function(arg1, arg2) -- Line 11, Named "prettyPrintVector3"
	--[[ Upvalues[2]:
		[1]: getFFlagUGCValidatePreciseVectorPrint_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if getFFlagUGCValidatePreciseVectorPrint_upvr() then
		local var3 = arg2 or 2
		if not module_upvr[var3] then
			local formatted = string.format("%%.%df", var3)
			module_upvr[var3] = string.format("%s, %s, %s", formatted, formatted, formatted)
		end
		return string.format(module_upvr[var3], arg1.X, arg1.Y, arg1.Z)
	end
	return string.format("%.2f, %.2f, %.2f", arg1.X, arg1.Y, arg1.Z)
end