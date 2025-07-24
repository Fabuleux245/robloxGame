-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:46
-- Luau version 6, Types version 3
-- Time taken: 0.000741 seconds

return {
	keysToString = function(arg1, arg2, arg3) -- Line 7, Named "keysToString"
		local module = {}
		for i in arg1 do
			table.insert(module, tostring(i))
		end
		if arg3 then
			table.sort(module)
		end
		return table.concat(module, arg2)
	end;
}