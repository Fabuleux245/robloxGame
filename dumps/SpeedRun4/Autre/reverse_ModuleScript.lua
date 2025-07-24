-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:11
-- Luau version 6, Types version 3
-- Time taken: 0.000538 seconds

return function(arg1) -- Line 7
	local len = #arg1
	local var3 = 1
	while var3 < len do
		arg1[var3] = arg1[len]
		arg1[len] = arg1[var3]
	end
	return arg1
end