-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:29
-- Luau version 6, Types version 3
-- Time taken: 0.000288 seconds

local trimStart_upvr = require(script.Parent.trimStart)
local trimEnd_upvr = require(script.Parent.trimEnd)
return function(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: trimStart_upvr (readonly)
		[2]: trimEnd_upvr (readonly)
	]]
	return trimStart_upvr(trimEnd_upvr(arg1))
end