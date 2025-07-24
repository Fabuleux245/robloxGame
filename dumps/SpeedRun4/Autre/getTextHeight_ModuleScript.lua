-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:26
-- Luau version 6, Types version 3
-- Time taken: 0.000346 seconds

local GetTextSize_upvr = require(script.Parent.GetTextSize)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 6, Named "getTextHeight"
	--[[ Upvalues[1]:
		[1]: GetTextSize_upvr (readonly)
	]]
	return GetTextSize_upvr(arg1, arg3, arg2, Vector2.new(arg4, math.min(10000, arg5 or 10000))).Y
end