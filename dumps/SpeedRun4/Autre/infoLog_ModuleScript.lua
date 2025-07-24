-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:07
-- Luau version 6, Types version 3
-- Time taken: 0.000295 seconds

local console_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).console
return function(...) -- Line 18, Named "infoLog"
	--[[ Upvalues[1]:
		[1]: console_upvr (readonly)
	]]
	return console_upvr.log(...)
end