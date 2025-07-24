-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:11
-- Luau version 6, Types version 3
-- Time taken: 0.003805 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableUpsellVirtualItemBadge", false)
local logger_upvr = require(Parent_2.Utility.logger)
local IXPServiceWrapper_upvr = require(Parent.IXPServiceWrapper).IXPServiceWrapper
local FStringIXPLayerMobileUpsell_upvr = require(Parent_2.Flags.FStringIXPLayerMobileUpsell)
local var8_upvr = require(Parent.Http).Url.APIS_URL.."payments-gateway/v1/products/get-upsell-suggestions"
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 21
	--[[ Upvalues[7]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: logger_upvr (readonly)
		[3]: IXPServiceWrapper_upvr (readonly)
		[4]: FStringIXPLayerMobileUpsell_upvr (readonly)
		[5]: var8_upvr (readonly)
		[6]: HttpRbxApiService_upvr (readonly)
		[7]: HttpService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var44
	if game_DefineFastFlag_result1_upvr then
		logger_upvr.debug({
			message = "Virtual item flag is on";
		})
		local any_GetLayerData_result1_2 = IXPServiceWrapper_upvr:GetLayerData(FStringIXPLayerMobileUpsell_upvr)
		logger_upvr.debug({
			message = "Layer data";
			layerData = any_GetLayerData_result1_2;
		})
		if any_GetLayerData_result1_2 and any_GetLayerData_result1_2.badgingV2Variant then
			var44 = any_GetLayerData_result1_2.badgingV2Variant
			IXPServiceWrapper_upvr:LogUserLayerExposure(FStringIXPLayerMobileUpsell_upvr)
		end
	end
	local module_upvr_2 = {}
	module_upvr_2.upsell_platform = arg1
	module_upvr_2.user_robux_balance = arg2
	module_upvr_2.attempt_robux_amount = arg3
	module_upvr_2.max_packages = arg4
	module_upvr_2.virtual_item_badge_variant = var44
	if arg5 ~= nil then
		module_upvr_2.item_product_id = arg5
	end
	if arg6 ~= nil then
		module_upvr_2.item_name = arg6
	end
	if arg7 ~= nil then
		module_upvr_2.universe_id = arg7
	end
	if arg8 ~= nil then
		module_upvr_2.analytic_id = arg8
	end
	logger_upvr.debug({
		message = "Making GetUpsellSuggestions API Call";
		url = var8_upvr;
		data = module_upvr_2;
	})
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 76
		--[[ Upvalues[4]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: var8_upvr (copied, readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: module_upvr_2 (readonly)
		]]
		return HttpRbxApiService_upvr:PostAsyncFullUrl(var8_upvr, HttpService_upvr:JSONEncode(module_upvr_2))
	end)
	logger_upvr.debug({
		message = "GetUpsellSuggestions API Response";
		response = pcall_result2_2;
		success = pcall_result1;
	})
	if not pcall_result1 then
		return false, nil
	end
	local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(pcall_result2_2)
	for i, v in ipairs(any_JSONDecode_result1.products) do
		({
			products = {};
			virtualItemBadgeType = any_JSONDecode_result1.virtual_item_badge_type;
		}).products[i] = {
			productId = v.roblox_product_id;
			providerId = v.provider_product_id;
			productName = v.roblox_product_name;
			robuxAmount = v.robux_amount;
			robuxAmountBeforeBonus = v.robux_amount_before_bonus;
			price = v.price;
			badgeType = v.badge_type;
		}
		local var60
	end
	return true, var60
end