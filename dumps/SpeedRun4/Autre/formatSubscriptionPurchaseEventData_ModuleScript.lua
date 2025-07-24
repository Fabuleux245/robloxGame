-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:20
-- Luau version 6, Types version 3
-- Time taken: 0.001063 seconds

return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) -- Line 1
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var13
	for i, v in string.gmatch(arg6, "(%w+)-(%w+)") do
	end
	local module = {}
	module.purchase_flow_uuid = arg1
	module.purchase_flow_event_type = arg2
	module.view_name = arg3
	module.input_type = arg4
	module.subscription_provider_id = arg5
	module.subscription_product_type_prefix = nil
	module.subscription_id = v
	module.localized_subscription_name = arg7
	module.localized_subscription_description = arg8
	module.subscription_period = arg9
	module.price_in_cents_usd = arg10
	module.display_price = arg11
	return module
end