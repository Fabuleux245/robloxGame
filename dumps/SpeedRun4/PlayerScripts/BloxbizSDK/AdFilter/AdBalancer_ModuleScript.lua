-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:58
-- Luau version 6, Types version 3
-- Time taken: 0.003860 seconds

local Utils_upvr = require(script.Parent.Parent.Utils)
local module_upvr = {
	LatestRatios = nil;
}
local RunService_upvr = game:GetService("RunService")
function module_upvr.WaitForDataReady() -- Line 20
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: Utils_upvr (readonly)
	]]
	local var4
	while not module_upvr.LatestRatios and not var4 do
		if 10 >= tick() - tick() then
			var4 = false
		else
			var4 = true
		end
		RunService_upvr.Stepped:Wait()
	end
	if var4 then
		module_upvr.LatestRatios = {}
		Utils_upvr.pprint("[SuperBiz] AdBalancer wasn't able to fetch ratios on time")
	end
end
function module_upvr.GetAdRatio(arg1, arg2) -- Line 36
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.WaitForDataReady()
	if module_upvr.LatestRatios[tostring(arg2)] then
		return module_upvr.LatestRatios[tostring(arg2)].ratio
	end
end
local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
local InternalConfig_upvr = require(script.Parent.Parent.InternalConfig)
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.UpdateRatiosWithHttp() -- Line 46
	--[[ Upvalues[5]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: InternalConfig_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: module_upvr (readonly)
	]]
	local tbl = {}
	for i, v in ipairs(require(script.Parent):GetAllEnabledAds()) do
		table.insert(tbl, i, {
			bloxbiz_ad_id = v.bloxbiz_ad_id;
			ad_version = v.ad_version or -1;
		})
	end
	local pcall_result1_2, pcall_result2 = pcall(HttpService_upvr.PostAsync, HttpService_upvr, BatchHTTP_upvr.getNewUrl("ratios"), HttpService_upvr:JSONEncode(Utils_upvr.merge({
		sdk_version = InternalConfig_upvr.SDK_VERSION;
		ad_ids = tbl;
	}, require(script.Parent.Parent.AdRequestStats):getGameStats())))
	if pcall_result1_2 then
		pcall_result2 = HttpService_upvr:JSONDecode(pcall_result2)
		module_upvr.LatestRatios = pcall_result2.ratios
		return true
	end
	return pcall_result2
end
local any_GetDataStore_result1_upvr = game:GetService("DataStoreService"):GetDataStore("BLOXBIZ_ADS_DELIVERY_RATIOS")
local tbl_upvr = {}
function module_upvr.UpdateRatiosWithDataStore() -- Line 83
	--[[ Upvalues[3]:
		[1]: any_GetDataStore_result1_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 84
		--[[ Upvalues[1]:
			[1]: any_GetDataStore_result1_upvr (copied, readonly)
		]]
		return any_GetDataStore_result1_upvr:GetAsync("delivery_ratios")
	end)
	if not pcall_result1 then
		return pcall_result2_2
	end
	if pcall_result2_2 then
		module_upvr.LatestRatios = pcall_result2_2.ratios
	else
		module_upvr.LatestRatios = tbl_upvr
	end
	return true
end
local ConfigReader_upvr = require(script.Parent.Parent.ConfigReader)
function module_upvr.UpdateOnInterval() -- Line 101
	--[[ Upvalues[3]:
		[1]: ConfigReader_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	while true do
		if ConfigReader_upvr:read("UseDataStoresNotHttp") then
			Utils_upvr.callWithRetry(module_upvr.UpdateRatiosWithDataStore, 5)
		else
			Utils_upvr.callWithRetry(module_upvr.UpdateRatiosWithHttp, 5)
		end
		task.wait(300)
	end
end
task.spawn(module_upvr.UpdateOnInterval)
return module_upvr