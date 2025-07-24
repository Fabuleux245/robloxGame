-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:35
-- Luau version 6, Types version 3
-- Time taken: 0.000398 seconds

return {
	toObjMap = function(arg1) -- Line 12, Named "toObjMap"
		local module = {}
		for i, v in pairs(arg1) do
			module[i] = v
		end
		return module
	end;
}