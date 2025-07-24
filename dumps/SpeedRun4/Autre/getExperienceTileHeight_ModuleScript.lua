-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:40
-- Luau version 6, Types version 3
-- Time taken: 0.000429 seconds

local getExperienceTileRelativeHeight_upvr = require(script.Parent.getExperienceTileRelativeHeight)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 18
	--[[ Upvalues[1]:
		[1]: getExperienceTileRelativeHeight_upvr (readonly)
	]]
	local getExperienceTileRelativeHeight_upvr_result1 = getExperienceTileRelativeHeight_upvr(arg1, arg3, arg4, arg5, arg6)
	return math.floor(arg2 * getExperienceTileRelativeHeight_upvr_result1.Scale + getExperienceTileRelativeHeight_upvr_result1.Offset)
end