-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:30
-- Luau version 6, Types version 3
-- Time taken: 0.000280 seconds

local getModalWindowWidth_upvr = require(script.Parent.getModalWindowWidth)
return function(arg1, arg2) -- Line 9, Named "getPartialPageModalMiddleContentWidth"
	--[[ Upvalues[1]:
		[1]: getModalWindowWidth_upvr (readonly)
	]]
	return getModalWindowWidth_upvr(arg1) - 2 * (arg2 or 24)
end