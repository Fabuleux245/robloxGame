-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:32
-- Luau version 6, Types version 3
-- Time taken: 0.000622 seconds

return {
	printPathArray = function(arg1) -- Line 15, Named "printPathArray"
		local module = {}
		for i = 1, #arg1 do
			local var4 = arg1[i]
			local var5
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var5 = '['..tostring(var4)..']'
				return var5
			end
			if typeof(var4) ~= "number" or not INLINED() then
				var5 = '.'..var4
			end
			module[i] = var5
		end
		return table.concat(module, "")
	end;
}