-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:01
-- Luau version 6, Types version 3
-- Time taken: 0.000431 seconds

local handleInput_upvr = require(script.Parent.handleInput)
return function(arg1) -- Line 7, Named "onRelease"
	--[[ Upvalues[1]:
		[1]: handleInput_upvr (readonly)
	]]
	local module = {}
	module.onRelease = arg1
	return handleInput_upvr(module)
end