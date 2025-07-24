-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:50
-- Luau version 6, Types version 3
-- Time taken: 0.002374 seconds

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
	isSuccessStatusCode = function(arg1, arg2) -- Line 24, Named "isSuccessStatusCode"
		local var3 = false
		if 200 <= arg2 then
			if arg2 >= 300 then
				var3 = false
			else
				var3 = true
			end
		end
		return var3
	end;
}
function module_upvr.getMatchingName(arg1, arg2) -- Line 31
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12
	if module_upvr:isSuccessStatusCode(arg2) then
		var12 = "api_success_"
	else
		var12 = "api_error_"
	end
	for i, v in tbl_upvr do
		if string.find(arg1, i, 1, true) then
			return var12..v..'_'..tostring(arg2)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var12..v..'_'..tostring(arg2)
end
function module_upvr.sendStatusCodeCounter(arg1, arg2, arg3) -- Line 48
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not arg3 then
		local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
	end
	local any_getMatchingName_result1 = module_upvr.getMatchingName(arg1, arg2)
	if any_getMatchingName_result1 and RbxAnalyticsService then
		RbxAnalyticsService:ReportCounter(any_getMatchingName_result1, 1)
	end
end
return module_upvr