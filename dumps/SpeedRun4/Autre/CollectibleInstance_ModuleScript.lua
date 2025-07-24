-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:07
-- Luau version 6, Types version 3
-- Time taken: 0.000631 seconds

return {
	new = function() -- Line 13, Named "new"
		return {}
	end;
	fromGetCollectibleItemInstances = function(arg1) -- Line 19, Named "fromGetCollectibleItemInstances"
		return {
			collectibleInstanceId = arg1.collectibleInstanceId;
			collectibleItemId = arg1.collectibleItemId;
			collectibleProductId = arg1.collectibleProductId;
			serialNumber = arg1.serialNumber;
			instanceState = arg1.instanceState;
			saleState = arg1.saleState;
			price = arg1.price;
		}
	end;
}