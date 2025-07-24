-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:59
-- Luau version 6, Types version 3
-- Time taken: 0.000251 seconds

return function(arg1, arg2, arg3, arg4) -- Line 1
	local tbl = {}
	tbl.origin = arg3
	tbl.btn = arg4
	arg1.sendEventDeferred(arg2, "buttonClick", tbl)
end