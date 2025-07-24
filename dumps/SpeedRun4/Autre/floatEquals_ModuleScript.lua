-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:28
-- Luau version 6, Types version 3
-- Time taken: 0.000702 seconds

local getFFlagUGCValidatePreciseFloatEquals_upvr = require(script.Parent.Parent.flags.getFFlagUGCValidatePreciseFloatEquals)
return function(arg1, arg2, arg3) -- Line 7, Named "floatEquals"
	--[[ Upvalues[1]:
		[1]: getFFlagUGCValidatePreciseFloatEquals_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2
	if getFFlagUGCValidatePreciseFloatEquals_upvr() then
		if math.abs(arg1 - arg2) > (arg3 or 1e-12) then
			var2 = false
		else
			var2 = true
		end
		return var2
	end
	if math.abs(arg1 - arg2) > 1e-12 then
	else
	end
	return true
end