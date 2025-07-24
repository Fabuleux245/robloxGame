-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:57
-- Luau version 6, Types version 3
-- Time taken: 0.000517 seconds

local Error_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Error
return function(arg1, arg2, ...) -- Line 24, Named "invariant"
	--[[ Upvalues[1]:
		[1]: Error_upvr (readonly)
	]]
	if not arg1 then
		error(Error_upvr(string.format(arg2, ...)))
	end
end