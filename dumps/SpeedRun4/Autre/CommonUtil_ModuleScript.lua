-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:25
-- Luau version 6, Types version 3
-- Time taken: 0.000944 seconds

return {
	TableConcat = function(arg1, arg2) -- Line 14, Named "TableConcat"
		for i = 1, #arg2 do
			arg1[#arg1 + 1] = arg2[i]
		end
		return arg1
	end;
	SortByName = function(arg1) -- Line 23, Named "SortByName"
		table.sort(arg1, function(arg1_2, arg2) -- Line 24, Named "compareInstanceNames"
			local var3
			if arg1_2.Name >= arg2.Name then
				var3 = false
			else
				var3 = true
			end
			return var3
		end)
		return arg1
	end;
}