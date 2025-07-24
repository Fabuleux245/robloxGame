-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:51
-- Luau version 6, Types version 3
-- Time taken: 0.000768 seconds

local function _(arg1, arg2) -- Line 5, Named "round"
	local var1 = 10 ^ (arg2 or 0)
	return math.floor(arg1 * var1 + 0.5) / var1
end
local Cryo_upvr = require(script.Parent.Parent.Parent.Cryo)
return function(arg1) -- Line 10, Named "valueToString"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local typeof_result1 = typeof(arg1)
	if arg1 == Cryo_upvr.None then
		return "not defined"
	end
	if typeof_result1 == "Vector3" then
		return string.format("%d, %d, %d", math.floor(arg1.X * 100 + 0.5) / 100, math.floor(arg1.Y * 100 + 0.5) / 100, math.floor(arg1.Z * 100 + 0.5) / 100)
	end
	if typeof_result1 == "Color3" then
		return string.format("%d, %d, %d", math.floor(arg1.r * 255), math.floor(arg1.g * 255), math.floor(arg1.b * 255))
	end
	return tostring(arg1)
end