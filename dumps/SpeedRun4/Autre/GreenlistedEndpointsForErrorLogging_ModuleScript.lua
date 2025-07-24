-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:50
-- Luau version 6, Types version 3
-- Time taken: 0.001760 seconds

local tbl_upvr = {
	["catalog/sponsored-items"] = "avatar_experience_sponsored_items";
	["marketplace-widgets/v1/widgets?requestId"] = "avatar_experience_marketplace_widgets";
	["v3/outfits"] = "avatar_experience_outfits";
	["catalog/items/details"] = "avatar_experience_item_details";
	["recommendations/user-inventory"] = "avatar_experience_recommended_user_inventory";
	["v1/purchases/products"] = "avatar_experience_purchase_product";
	["autocomplete-avatar/v2/suggest"] = "avatar_experience_auto_complete";
	["topic/get-topics"] = "avatar_experience_get_topics";
	["widgets/search"] = "avatar_experience_widget_search";
	["widgets/hydrate"] = "avatar_experience_widget_hydrate";
}
local module_upvr = {
	getMatchingErrorName = function(arg1, arg2) -- Line 26, Named "getMatchingErrorName"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local var7
		for i, v in tbl_upvr do
			if string.find(arg1, i, 1, true) then
				var7 = "api_error_"..v..'_'..tostring(arg2)
				return var7
			end
		end
		return var7
	end;
}
function module_upvr.sendCounterIfKeyMatchesFetchStatus(arg1, arg2, arg3) -- Line 40
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not arg3 then
		local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
	end
	local any_getMatchingErrorName_result1 = module_upvr.getMatchingErrorName(arg1, arg2)
	if any_getMatchingErrorName_result1 and RbxAnalyticsService then
		RbxAnalyticsService:ReportCounter(any_getMatchingErrorName_result1, 1)
	end
end
return module_upvr