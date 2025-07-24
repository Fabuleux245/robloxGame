-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:18
-- Luau version 6, Types version 3
-- Time taken: 0.000518 seconds

return {
	new = function(arg1, arg2, arg3, arg4, arg5) -- Line 23, Named "new"
		local module = {}
		module.id = arg1
		module.providerId = arg2
		module.productName = arg3
		module.robuxAmount = arg4
		module.price = arg5
		return module
	end;
	fromJson = function(arg1) -- Line 39, Named "fromJson"
		return {
			id = arg1.roblox_product_id;
			providerId = arg1.provider_product_id;
			productName = arg1.roblox_product_name;
			robuxAmount = arg1.robux_amount;
			robuxAmountBeforeBonus = arg1.robux_amount_before_bonus;
			price = arg1.price;
		}
	end;
}