-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:56
-- Luau version 6, Types version 3
-- Time taken: 0.000452 seconds

local GlobalConfig_upvr = require(script.Parent.Parent.GlobalConfig)
return function(...) -- Line 4, Named "maybeAssert"
	--[[ Upvalues[1]:
		[1]: GlobalConfig_upvr (readonly)
	]]
	if GlobalConfig_upvr.actionValidation then
		return assert(...)
	end
end