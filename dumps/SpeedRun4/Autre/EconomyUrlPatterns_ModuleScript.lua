-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:56
-- Luau version 6, Types version 3
-- Time taken: 0.001187 seconds

return function(arg1) -- Line 1
	return {
		paymentsGateway = {
			getUpsellProduct = arg1.fromString("apis:payments-gateway/v1/products/get-upsell-product");
			preparePayment = arg1.fromString("apis:payments-gateway/v1/prepare-payment");
			checkUserPurchaseSettings = arg1.fromString("apis:payments-gateway/v1/check-user-purchase-settings");
		};
		purchaseWarning = {
			getPurchaseWarning = function(arg1_2, arg2, arg3) -- Line 9, Named "getPurchaseWarning"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local var5
				if arg1_2 ~= nil then
					var5 = string.format("%s?mobileProductId=%s", "apis:purchase-warning/v1/purchase-warnings", arg1_2)
				elseif arg2 ~= nil then
					var5 = string.format("%s?productId=%d", "apis:purchase-warning/v1/purchase-warnings", arg2)
				else
					warn(string.format("%s - Invalid parameters, needs mobileProductId or productId", tostring(script.Name)))
					return nil
				end
				if arg3 then
					var5 = string.format("%s&is13To17ScaryModalEnabled=True", var5)
				end
				return arg1.fromString(var5)()
			end;
			ackPurchaseWarning = arg1.fromString("apis:purchase-warning/v1/purchase-warnings/acknowledge");
		};
		vngPayments = {
			getVngShopUrl = arg1.fromString("apis:vng-payments/v1/getVngShopUrl");
		};
		info = {
			developerProduct = arg1.fromString("www:developer-product/{universeId}/product/{productId}");
		};
	}
end