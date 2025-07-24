-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:02
-- Luau version 6, Types version 3
-- Time taken: 0.013720 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Utils_upvr = require(script.Parent.Utils)
local FilterParams = require(script.FilterParams)
local FilterUtils_upvr = require(script.FilterUtils)
local Filters_upvr = require(script.Filters)
local InferredPlayerData_upvr = require(script.InferredPlayerData)
local module_6_upvr = {
	FilterUtils = FilterUtils_upvr;
	FrequencyCapper = require(script.FrequencyCapper);
	InferredPlayerData = InferredPlayerData_upvr;
}
setmetatable(Filters_upvr, {
	__index = module_6_upvr;
})
local function _(arg1, arg2) -- Line 21, Named "safeDiv"
	if arg2 == 0 then
		return 0
	end
	return arg1 / arg2
end
function module_6_upvr.connectToEvents(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").getAdStorage.OnServerInvoke = function() -- Line 32
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:GetAllEnabledAds()
	end
end
function module_6_upvr.disableAdsForUnder13Users(arg1, arg2) -- Line 37
	for _, v in pairs(arg2) do
		v.are_ads_allowed_allowlist = {true}
	end
	return arg2
end
function module_6_upvr.GetAllEnabledAds(arg1) -- Line 45
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local BloxbizAdStorage = ReplicatedStorage_upvr.BloxbizConfig:FindFirstChild("BloxbizAdStorage")
	if not BloxbizAdStorage then
		Utils_upvr.pprint("[SuperBiz] BloxbizAdStorage was not found under the config!")
		return {}
	end
	local BloxbizAdStorage_2 = require(BloxbizAdStorage)
	if BloxbizAdStorage_2.getAdsList then
		return BloxbizAdStorage_2.getAdsList()
	end
	return BloxbizAdStorage_2
end
function module_6_upvr.Build2DAdItem(arg1, arg2, arg3) -- Line 68
	local module_2 = {
		ad_format = arg2.ad_format;
		ad_url = arg2.ad_url;
		bloxbiz_ad_id = arg2.bloxbiz_ad_id;
	}
	local external_link_references_2 = arg2.external_link_references
	if not external_link_references_2 then
		external_link_references_2 = {}
	end
	module_2.external_link_references = external_link_references_2
	module_2.gif_fps = math.floor(tonumber(arg2.gif_fps or 15))
	module_2.gif_version = arg2.gif_version or 2
	module_2.audio_url = arg2.audio_url
	module_2.ad_disclaimer_url = arg3.url
	module_2.ad_disclaimer_scale_x = arg3.scale_x
	module_2.ad_disclaimer_scale_y = arg3.scale_y
	local ad_url_2 = module_2.ad_url
	if type(ad_url_2) == "string" then
		module_2.ad_url = {ad_url_2}
	end
	return module_2
end
function module_6_upvr.Build3DAdItem(arg1, arg2, arg3) -- Line 91
	local module_3 = {
		ad_format = arg2.ad_format;
		bloxbiz_ad_id = arg2.bloxbiz_ad_id;
		ad_type = "Character";
		ad_serialized_model = arg2.ad_serialized_model;
		ad_model_data = arg2.ad_model_data;
		ad_box_width_max = arg2.ad_box_width_max;
		ad_box_depth_max = arg2.ad_box_depth_max;
		ad_box_height_max = arg2.ad_box_height_max;
	}
	local external_link_references = arg2.external_link_references
	if not external_link_references then
		external_link_references = {}
	end
	module_3.external_link_references = external_link_references
	module_3.ad_disclaimer_text = arg3.text
	return module_3
end
function module_6_upvr.BuildPortalAdItem(arg1, arg2, arg3) -- Line 108
	local module_5 = {
		ad_format = arg2.ad_format;
		bloxbiz_ad_id = arg2.bloxbiz_ad_id;
		destination_place_id = arg2.destination_place_id;
		ad_url = arg2.ad_url;
	}
	local external_link_references_3 = arg2.external_link_references
	if not external_link_references_3 then
		external_link_references_3 = {}
	end
	module_5.external_link_references = external_link_references_3
	module_5.ad_disclaimer_url = arg3.url
	module_5.ad_disclaimer_scale_x = arg3.scale_x
	module_5.ad_disclaimer_scale_y = arg3.scale_y
	local ad_url = module_5.ad_url
	if type(ad_url) == "string" then
		module_5.ad_url = {ad_url}
	end
	return module_5
end
function module_6_upvr.BlankAd(arg1) -- Line 129
	return {
		ad_url = "";
		bloxbiz_ad_id = -1;
	}
end
local ConfigReader_upvr = require(script.Parent.ConfigReader)
function module_6_upvr.getPortalsDeliveryRatio(arg1, arg2) -- Line 133
	--[[ Upvalues[1]:
		[1]: ConfigReader_upvr (readonly)
	]]
	return math.min(arg2, math.clamp(tonumber(ConfigReader_upvr:read("AdsPortalMaxDisplayPercentage")), 1, 100) / 100)
end
function module_6_upvr.getFinalAdDeliveryRatio(arg1, arg2) -- Line 142
	local test_delivery_ratio = arg2.test_delivery_ratio
	if not test_delivery_ratio then
		test_delivery_ratio = require(script.AdBalancer):GetAdRatio(arg2.bloxbiz_ad_id)
		if not test_delivery_ratio then
			test_delivery_ratio = 0
		end
	end
	return tonumber(test_delivery_ratio)
end
function module_6_upvr.SelectAdToDisplay(arg1, arg2) -- Line 153
	--[[ Upvalues[1]:
		[1]: FilterUtils_upvr (readonly)
	]]
	local module_4 = {}
	local module_7 = {}
	local var40 = 0
	local _, ipairs_result2_4, ipairs_result3 = ipairs(arg2)
	local var44
	for i_2, v_2 in var44, ipairs_result2_4, ipairs_result3 do
		local any_getFinalAdDeliveryRatio_result1 = arg1:getFinalAdDeliveryRatio(v_2)
		var40 += any_getFinalAdDeliveryRatio_result1
		table.insert(module_4, v_2)
		table.insert(module_7, any_getFinalAdDeliveryRatio_result1)
	end
	var44 = arg2[1]
	if var44 then
		if arg2[1].ad_format ~= "portal" then
			var44 = false
		else
			var44 = true
		end
	end
	if var44 then
		i_2 = var40
		v_2 = 1
		i_2 = 1
		for i_3 = v_2, #module_7, i_2 do
			local var46 = var40
			local var47
			if var46 == 0 then
				var47 = 0
			else
				var47 = arg1:getPortalsDeliveryRatio(i_2) / var46
			end
			module_7[i_3] *= var47
		end
		var40 = arg1:getPortalsDeliveryRatio(i_2)
	end
	local var48 = 1 - var40
	if 0 < var48 then
		i_2 = module_4
		table.insert(i_2, arg1:BlankAd())
		i_2 = module_7
		table.insert(i_2, var48)
	end
	return FilterUtils_upvr.PythonChoices(module_4, module_7)[1]
end
function module_6_upvr.GetAdDisclaimer(arg1, arg2) -- Line 189
	local tbl = {
		["de-de"] = {
			url = "rbxassetid://7787165346";
			scale_x = 0.133;
			scale_y = 0.08;
			text = "Werbung";
		};
	}
	local tbl_2 = {
		url = "rbxassetid://7787165346";
		scale_x = 0.133;
		scale_y = 0.08;
		text = "Publicit\xE9";
	}
	tbl["fr-fr"] = tbl_2
	tbl_2 = tbl[arg2]
	local var52 = tbl_2
	if not var52 then
		var52 = {}
	end
	return var52
end
local GET_ADS_PARAMETERS_upvr = FilterParams.GET_ADS_PARAMETERS
local GET_ADS_PLAYER_PARAMETERS_upvr = FilterParams.GET_ADS_PLAYER_PARAMETERS
function module_6_upvr.GetAds(arg1, arg2, arg3) -- Line 208
	--[[ Upvalues[7]:
		[1]: GET_ADS_PARAMETERS_upvr (readonly)
		[2]: FilterUtils_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: Filters_upvr (readonly)
		[5]: InferredPlayerData_upvr (readonly)
		[6]: GET_ADS_PLAYER_PARAMETERS_upvr (readonly)
		[7]: Utils_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 59 start (CF ANALYSIS FAILED)
	local blocklist = arg2.blocklist
	if not blocklist then
		blocklist = {}
	end
	local var80 = arg2["3d_ad_request"] or false
	local var81 = arg2.portal_ad_request or false
	local tbl_3 = {}
	if var81 then
		table.insert(tbl_3, "portal")
		-- KONSTANTWARNING: GOTO [110] #80
	end
	-- KONSTANTERROR: [0] 1. Error Block 59 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 56. Error Block 60 start (CF ANALYSIS FAILED)
	if var80 then
		table.insert(tbl_3, "3d")
	else
		table.insert(tbl_3, "static")
		if arg2.gifs_enabled or false then
			table.insert(tbl_3, "gif")
		end
		if arg2.video_enabled or false then
			table.insert(tbl_3, "video")
		end
	end
	FilterUtils_upvr.ValidateParams(GET_ADS_PARAMETERS_upvr, arg2)
	local players = arg2.players
	arg2.players = nil
	local var84 = arg3
	if not var84 then
		var84 = module_6_upvr:GetAllEnabledAds()
	end
	local any_FilterAdsByGameTargeting_result1 = Filters_upvr:FilterAdsByGameTargeting(Filters_upvr:FilterAdsByAdFormat(var84, tbl_3), tonumber(arg2.bloxbiz_version or 0), arg2.part_name)
	if var81 then
		any_FilterAdsByGameTargeting_result1 = Filters_upvr:FilterAdsBySizePortal(any_FilterAdsByGameTargeting_result1, arg2.part_size_x, arg2.part_size_y, arg2.part_size_z)
	elseif var80 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		any_FilterAdsByGameTargeting_result1 = Filters_upvr:FilterAdsBySize3D(any_FilterAdsByGameTargeting_result1, arg2.part_size_x, arg2.part_size_y, arg2.part_size_z)
	else
		any_FilterAdsByGameTargeting_result1 = Filters_upvr:FilterAdsBySize2D(any_FilterAdsByGameTargeting_result1, tonumber(tostring(FilterUtils_upvr.Round(FilterUtils_upvr.SafeDiv(arg2.surface_gui_size_y or 0, arg2.surface_gui_size_x or 0), 4))))
	end
	local module = {}
	for _, v_3 in ipairs(players) do
		table.insert({}, v_3.player_id)
		local var91
	end
	for _, v_4 in ipairs(var91) do
		({})[v_4] = InferredPlayerData_upvr:Get(v_4).gender
		local var95
	end
	for _, v_5 in ipairs(players) do
		local player_id = v_5.player_id
		local player_locale_id = v_5.player_locale_id
		local allowed_external_link_references = v_5.allowed_external_link_references
		if not allowed_external_link_references then
			allowed_external_link_references = {}
		end
		local any_GetDeviceType_result1 = FilterUtils_upvr.GetDeviceType(v_5)
		local var103 = var95[player_id]
		local var104
		if var81 then
			var104 = arg1:BuildPortalAdItem(module_6_upvr:SelectAdToDisplay(Filters_upvr:FilterAdsByPlayerId(Filters_upvr:FilterAdsByFreqCap(Filters_upvr:FilterAdsByExternalLinks(Filters_upvr:FilterAdsByPlayerTargeting(Filters_upvr:FilterAdsByBlocklist(any_FilterAdsByGameTargeting_result1, blocklist), v_5.country_code, player_locale_id, v_5.player_membership_type, any_GetDeviceType_result1, var103, v_5.are_ads_allowed), allowed_external_link_references), player_id), player_id)), module_6_upvr:GetAdDisclaimer(player_locale_id))
		elseif var80 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			var104 = arg1:Build3DAdItem(module_6_upvr:SelectAdToDisplay(Filters_upvr:FilterAdsByPlayerId(Filters_upvr:FilterAdsByFreqCap(Filters_upvr:FilterAdsByExternalLinks(Filters_upvr:FilterAdsByPlayerTargeting(Filters_upvr:FilterAdsByBlocklist(any_FilterAdsByGameTargeting_result1, blocklist), v_5.country_code, player_locale_id, v_5.player_membership_type, any_GetDeviceType_result1, var103, v_5.are_ads_allowed), allowed_external_link_references), player_id), player_id)), module_6_upvr:GetAdDisclaimer(player_locale_id))
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			var104 = arg1:Build2DAdItem(module_6_upvr:SelectAdToDisplay(Filters_upvr:FilterAdsByPlayerId(Filters_upvr:FilterAdsByFreqCap(Filters_upvr:FilterAdsByExternalLinks(Filters_upvr:FilterAdsByPlayerTargeting(Filters_upvr:FilterAdsByBlocklist(any_FilterAdsByGameTargeting_result1, blocklist), v_5.country_code, player_locale_id, v_5.player_membership_type, any_GetDeviceType_result1, var103, v_5.are_ads_allowed), allowed_external_link_references), player_id), player_id)), module_6_upvr:GetAdDisclaimer(player_locale_id))
		end
		module[player_id] = var104
		FilterUtils_upvr.ValidateParams(GET_ADS_PLAYER_PARAMETERS_upvr, v_5)
		local var105 = v_5
		var105.player_device = any_GetDeviceType_result1
		var105.gender = var103
		var105.ad_url = var104.ad_url
		var105.bloxbiz_ad_id = var104.bloxbiz_ad_id
		var105.timestamp = tonumber(os.time())
		FilterUtils_upvr.PythonUpdate(var105, arg2)
		table.insert({}, FilterUtils_upvr.CapIntegerValues(var105))
	end
	Utils_upvr.pprint("[SuperBiz] Ads delivered to "..FilterUtils_upvr.CountDictionary(module).." players in game ("..arg2.game_id..") (Took "..FilterUtils_upvr.Round(tick() - tick(), 2).."s)")
	do
		return module
	end
	-- KONSTANTERROR: [78] 56. Error Block 60 end (CF ANALYSIS FAILED)
end
return module_6_upvr