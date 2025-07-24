-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:00
-- Luau version 6, Types version 3
-- Time taken: 0.000523 seconds

return function(arg1) -- Line 7, Named "createInspectAndBuyKeyMapper"
	return function(arg1_2, ...) -- Line 9
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var4 = "inspectAndBuy."..arg1_2..'.'..arg1
		for i = 1, select('#', ...) do
			var4 = var4..'.'..tostring(select(i, ...))
		end
		return var4
	end
end