-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:18
-- Luau version 6, Types version 3
-- Time taken: 0.000504 seconds

return function(arg1, arg2) -- Line 6
	if arg2 then
		if arg1.PremiumPriceInRobux ~= nil then
			return arg1.PremiumPriceInRobux
		end
		return arg1.PriceInRobux or 0
	end
	return arg1.PriceInRobux or 0
end