-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:05
-- Luau version 6, Types version 3
-- Time taken: 0.000541 seconds

return function(arg1, arg2, arg3, arg4, arg5) -- Line 4, Named "isSeeAllTileEnabled"
	if arg1 then
		return false
	end
	if not arg5 then
		return false
	end
	if arg2 == nil or arg2 <= arg3 or arg4 <= arg3 then
		return false
	end
	return true
end