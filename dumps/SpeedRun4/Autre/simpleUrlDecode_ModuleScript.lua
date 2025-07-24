-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:20
-- Luau version 6, Types version 3
-- Time taken: 0.000502 seconds

return function(arg1) -- Line 2
	return arg1:gsub('+', ' '):gsub("%%(%x%x)", function(arg1_2) -- Line 3
		return string.char(tonumber(arg1_2, 16))
	end)
end