-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:32
-- Luau version 6, Types version 3
-- Time taken: 0.000460 seconds

return function(arg1) -- Line 9, Named "xtypeof"
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "table" and typeof(arg1.type) == "string" then
		return arg1.type
	end
	return typeof_result1
end