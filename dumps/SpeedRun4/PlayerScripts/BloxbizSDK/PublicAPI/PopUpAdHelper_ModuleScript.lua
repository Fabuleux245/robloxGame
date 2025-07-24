-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:48
-- Luau version 6, Types version 3
-- Time taken: 0.002120 seconds

local AdRequestStats_upvr = require(script.Parent.Parent.AdRequestStats)
local merge_upvr = require(script.Parent.Parent.Utils).merge
local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr._registeredAds = {}
local CreateBillboard_upvr = require(script.Parent.Parent.Ad3DClient.CharacterAd.MetricsClient.CreateBillboard)
local function getAdsStatsForStaticAd_upvr(arg1) -- Line 13, Named "getAdsStatsForStaticAd"
	--[[ Upvalues[3]:
		[1]: CreateBillboard_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: merge_upvr (readonly)
	]]
	local CreateBillboard_upvr_result1 = CreateBillboard_upvr()
	CreateBillboard_upvr_result1:Destroy()
	local merge_upvr_result1 = merge_upvr(merge_upvr(AdRequestStats_upvr:getGameStats(), AdRequestStats_upvr:getPartStats(CreateBillboard_upvr_result1.AdUnit)), AdRequestStats_upvr:getGameLightingStats())
	merge_upvr_result1.players = arg1
	return merge_upvr_result1
end
local AdFilter_upvr = require(script.Parent.Parent.AdFilter)
function module_upvr.isAdTargetedForPlayer(arg1, arg2) -- Line 26
	--[[ Upvalues[4]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
		[3]: getAdsStatsForStaticAd_upvr (readonly)
		[4]: AdFilter_upvr (readonly)
	]]
	local adConfig = arg1.adConfig
	local var13
	if not var13 then
		var13 = AdRequestStats_upvr:getClientPlayerStats(arg2)
	end
	for _, v in AdFilter_upvr:GetAds(getAdsStatsForStaticAd_upvr({merge_upvr(var13, AdRequestStats_upvr:getPlayerStats(arg2))}), {adConfig}), nil do
		if v.bloxbiz_ad_id == adConfig.bloxbiz_ad_id then
			return true
		end
	end
	return false
end
function module_upvr.registerEvent(arg1, ...) -- Line 47
	local args_list = {...}
	table.insert(args_list, arg1.adConfig.bloxbiz_ad_id)
	return require(script.Parent).registerEventForAd(unpack(args_list))
end
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.new(arg1, arg2) -- Line 57
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	if not arg1 or not arg2 then
		error("[Super Biz] Missing argument when registering pop up ad")
	end
	if arg2.Name ~= "AdConfig" then
		error("[Super Biz] Invalid adConfig when registering pop up ad")
	end
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.adUnit = arg1
	setmetatable_result1.adConfig = HttpService_upvr:JSONDecode(arg2.Value)
	local var19 = true
	if setmetatable_result1.adConfig.ad_format ~= "static" then
		if setmetatable_result1.adConfig.ad_format ~= nil then
			var19 = false
		else
			var19 = true
		end
	end
	if not var19 then
		error("[Super Biz] Invalid adConfig ad_format when registering pop up ad")
	end
	setmetatable_result1.adConfig.ad_height_over_width_ratio = setmetatable_result1.adConfig.ad_height_over_width_ratio or 1
	local bloxbiz_ad_id = setmetatable_result1.adConfig.bloxbiz_ad_id
	local var21 = module_upvr._registeredAds[bloxbiz_ad_id]
	if var21 and var21.adUnit ~= arg1 then
		error("[Super Biz] Attempt to register two different pop up ads under same config")
	else
		if var21 and var21.adUnit == arg1 then
			return var21
		end
		if not var21 then
			module_upvr._registeredAds[bloxbiz_ad_id] = setmetatable_result1
			return setmetatable_result1
		end
	end
end
return module_upvr