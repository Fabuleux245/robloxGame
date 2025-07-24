-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:30
-- Luau version 6, Types version 3
-- Time taken: 0.000437 seconds

return {
	mapValue = function(arg1, arg2) -- Line 15, Named "mapValue"
		local module = {}
		for i, v in pairs(arg1) do
			module[i] = arg2(v, i)
		end
		return module
	end;
}