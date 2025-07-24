-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:29
-- Luau version 6, Types version 3
-- Time taken: 0.000461 seconds

return {
	keyMap = function(arg1, arg2) -- Line 38, Named "keyMap"
		local module = {}
		for _, v in ipairs(arg1) do
			module[arg2(v)] = v
		end
		return module
	end;
}