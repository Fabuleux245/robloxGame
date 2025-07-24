-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:20
-- Luau version 6, Types version 3
-- Time taken: 0.000394 seconds

return function(arg1) -- Line 1, Named "getFormatTime"
	return string.format("%01d:%02d", math.floor(arg1 / 60), math.floor(arg1 % 60))
end