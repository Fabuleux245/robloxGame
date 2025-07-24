-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:27
-- Luau version 6, Types version 3
-- Time taken: 0.000475 seconds

local GetTextSize_upvr = require(script.Parent.GetTextSize)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 16, Named "getWrappedTextWithIcon"
	--[[ Upvalues[1]:
		[1]: GetTextSize_upvr (readonly)
	]]
	return string.rep(' ', math.ceil((arg4 + arg5) / (GetTextSize_upvr("  ", arg2, arg3, Vector2.new(0, 0)) - GetTextSize_upvr(' ', arg2, arg3, Vector2.new(0, 0))).X))..arg1
end