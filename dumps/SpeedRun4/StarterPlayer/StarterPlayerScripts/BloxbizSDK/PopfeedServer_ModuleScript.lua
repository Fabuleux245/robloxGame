-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:16
-- Luau version 6, Types version 3
-- Time taken: 0.028837 seconds

local Players_upvr = game:GetService("Players")
local HttpService_upvr = game:GetService("HttpService")
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local BatchHTTP_upvr = require(script.Parent.BatchHTTP)
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
local RateLimiter_upvr = require(script.Parent.Utils.RateLimiter)
local merge_upvr = require(script.Parent.Utils).merge
local module_20_upvr = {
	Donations = require(script.Donations);
}
local var9_upvw
local var10_upvw
local var11_upvw
local tbl_8_upvr = {}
local tbl_upvr = {}
local tbl_upvw_3 = {}
local tbl_upvr_3 = {}
local tbl_upvw_2 = {}
local tbl_upvw = {
	Pages = {
		top_donors = {};
		top_boosters = {};
	};
	LastFetchedPage = 0;
}
local tbl_6_upvr = {}
local tbl_7_upvr = {}
local tbl_upvr_2 = {}
local tbl_3_upvw = {}
local var23_upvw
local BindableEvent_upvr = Instance.new("BindableEvent")
local function checkForDuplicatePosts_upvr(arg1, arg2, arg3, arg4) -- Line 61, Named "checkForDuplicatePosts"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	for i, v in tbl_upvr[arg1][arg2] do
		if arg4 ~= i then
			for _, v_2 in v do
				if v_2.Id == arg3 then
					return true
				end
			end
		end
	end
end
local function formatData_upvr(arg1, arg2, arg3, arg4) -- Line 76, Named "formatData"
	--[[ Upvalues[2]:
		[1]: checkForDuplicatePosts_upvr (readonly)
		[2]: module_20_upvr (readonly)
	]]
	if checkForDuplicatePosts_upvr(arg2, arg3, arg1.post_id, arg4) then return end
	local module_7 = {
		Profile = {
			UserId = arg1.player_id;
			Name = "Unknown";
			DisplayName = "Unknown";
		};
		Id = arg1.post_id;
		Likes = arg1.up_votes or 0;
		Boosts = arg1.boosts_applied;
		OwnLike = arg1.own_vote or 0;
		Comments = arg1.reply_count or 0;
		Content = arg1.text;
		PlaceId = arg1.place_id;
		ParentId = arg1.parent_id;
		Timestamp = DateTime.fromIsoDate(arg1.timestamp).UnixTimestampMillis / 1000;
		Images = {};
		Donations = {};
		Screenshots = {};
	}
	for _, v_3 in arg1.attachments do
		if v_3.type == "donation" then
			module_20_upvr.Donations.cacheDonations(arg2, arg1.player_id, {v_3})
			table.insert(module_7.Donations, v_3)
		elseif v_3.type == "image" then
			table.insert(module_7.Images, v_3)
		elseif v_3.type == "screenshot" then
			table.insert(module_7.Screenshots, v_3)
		end
	end
	return module_7
end
local function processBoostPost_upvr(arg1, arg2, arg3) -- Line 117, Named "processBoostPost"
	--[[ Upvalues[5]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
	]]
	local module_30_upvr = {
		player_id = arg1.UserId;
	}
	module_30_upvr.gamepass_id = arg3
	local any_getNewUrl_result1_upvw_7 = BatchHTTP_upvr.getNewUrl("popfeed/post/"..arg2.."/boost")
	local any_getGameStats_result1_upvr_21 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_19, pcall_result2_9 = pcall(function() -- Line 131
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_7 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_30_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_21 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_7, HttpService_upvr:JSONEncode(merge_upvr(module_30_upvr, any_getGameStats_result1_upvr_21)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	tbl_upvr_2[arg1] = nil
	if not pcall_result1_19 then
		warn("Boosting a post failed!", pcall_result2_9)
		return
	end
	return HttpService_upvr:JSONDecode(pcall_result2_9)
end
local function fetchBoostPasses_upvr(arg1, arg2) -- Line 153, Named "fetchBoostPasses"
	--[[ Upvalues[3]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local any_getNewUrl_result1_upvw_21 = BatchHTTP_upvr.getNewUrl("popfeed/info/boost-passes/"..arg2..'/'..arg1.UserId)
	local any_getGameStats_result1_upvr_9 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_7, pcall_result2_18 = pcall(function() -- Line 163
		--[[ Upvalues[4]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_21 (read and write)
			[3]: any_getGameStats_result1_upvr_9 (readonly)
			[4]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_21, HttpService_upvr:JSONEncode(any_getGameStats_result1_upvr_9), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_7 then
		warn("Fetching boost passes failed!", pcall_result2_18)
		return
	end
	return HttpService_upvr:JSONDecode(pcall_result2_18)
end
local function fetchConfig_upvr() -- Line 183, Named "fetchConfig"
	--[[ Upvalues[3]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local any_getNewUrl_result1_upvw_12 = BatchHTTP_upvr.getNewUrl("popfeed/config")
	local any_getGameStats_result1_upvr_8 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_11, pcall_result2_10 = pcall(function() -- Line 193
		--[[ Upvalues[4]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_12 (read and write)
			[3]: any_getGameStats_result1_upvr_8 (readonly)
			[4]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_12, HttpService_upvr:JSONEncode(any_getGameStats_result1_upvr_8), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_11 then
		warn("Fetching popfeed config failed!", pcall_result2_10)
		return
	end
	return HttpService_upvr:JSONDecode(pcall_result2_10)
end
local function pagesToTable_upvr(arg1) -- Line 213, Named "pagesToTable"
	local module_27 = {}
	while true do
		table.insert(module_27, arg1:GetCurrentPage())
		if arg1.IsFinished then break end
		arg1:AdvanceToNextPageAsync()
	end
	return module_27
end
local function _(arg1) -- Line 227, Named "iterPageItems"
	--[[ Upvalues[1]:
		[1]: pagesToTable_upvr (readonly)
	]]
	local pagesToTable_result1_upvr_2 = pagesToTable_upvr(arg1)
	local var53_upvw = 1
	local len_upvr = #pagesToTable_result1_upvr_2
	return coroutine.wrap(function() -- Line 233
		--[[ Upvalues[3]:
			[1]: var53_upvw (read and write)
			[2]: len_upvr (readonly)
			[3]: pagesToTable_result1_upvr_2 (readonly)
		]]
		while var53_upvw <= len_upvr do
			for _, v_4 in pagesToTable_result1_upvr_2[var53_upvw] do
				coroutine.yield(v_4, var53_upvw)
			end
			var53_upvw += 1
		end
	end)
end
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local function fetchProfileShopTabItems_upvr(arg1) -- Line 243, Named "fetchProfileShopTabItems"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: AvatarEditorService_upvr (readonly)
		[3]: pagesToTable_upvr (readonly)
	]]
	local module_13 = {}
	local CatalogSearchParams_new_result1 = CatalogSearchParams.new()
	CatalogSearchParams_new_result1.CreatorName = Players_upvr:GetNameFromUserIdAsync(arg1)
	local pagesToTable_result1_upvr = pagesToTable_upvr(AvatarEditorService_upvr:SearchCatalog(CatalogSearchParams_new_result1))
	local var64_upvw = 1
	local len_upvr_2 = #pagesToTable_result1_upvr
	for i_6 in coroutine.wrap(function() -- Line 233
		--[[ Upvalues[3]:
			[1]: var64_upvw (read and write)
			[2]: len_upvr_2 (readonly)
			[3]: pagesToTable_result1_upvr (readonly)
		]]
		while var64_upvw <= len_upvr_2 do
			for _, v_5 in pagesToTable_result1_upvr[var64_upvw] do
				coroutine.yield(v_5, var64_upvw)
			end
			var64_upvw += 1
		end
	end) do
		table.insert(module_13, i_6)
	end
	return module_13
end
local function fetchProfile_upvr(arg1, arg2) -- Line 256, Named "fetchProfile"
	--[[ Upvalues[5]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
		[5]: fetchProfileShopTabItems_upvr (readonly)
	]]
	local module_10_upvr = {
		viewer = arg1.UserId;
	}
	local any_getNewUrl_result1_upvw_22 = BatchHTTP_upvr.getNewUrl("popfeed/profile/"..arg2)
	local any_getGameStats_result1_upvr_7 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_10, pcall_result2_12 = pcall(function() -- Line 269
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_22 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_10_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_7 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_22, HttpService_upvr:JSONEncode(merge_upvr(module_10_upvr, any_getGameStats_result1_upvr_7)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_10 then
		warn("Fetching profile data failed!", pcall_result2_12)
		return
	end
	local any_JSONDecode_result1_5 = HttpService_upvr:JSONDecode(pcall_result2_12)
	any_JSONDecode_result1_5.shop_items = fetchProfileShopTabItems_upvr(arg2)
	any_JSONDecode_result1_5.user_id = arg2
	return any_JSONDecode_result1_5
end
local function fetchDonations_upvr(arg1, arg2) -- Line 292, Named "fetchDonations"
	--[[ Upvalues[5]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
		[5]: module_20_upvr (readonly)
	]]
	local module_11_upvr = {
		viewer = arg1.UserId;
	}
	local any_getNewUrl_result1_upvw_20 = BatchHTTP_upvr.getNewUrl("popfeed/donations/list/"..arg2)
	local any_getGameStats_result1_upvr_5 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_3, pcall_result2_20 = pcall(function() -- Line 305
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_20 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_11_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_5 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_20, HttpService_upvr:JSONEncode(merge_upvr(module_11_upvr, any_getGameStats_result1_upvr_5)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_3 then
		warn("Fetching donation data failed!", pcall_result2_20)
		return
	end
	local any_JSONDecode_result1_3 = HttpService_upvr:JSONDecode(pcall_result2_20)
	module_20_upvr.Donations.cacheDonations(arg1, arg2, any_JSONDecode_result1_3.donations)
	return any_JSONDecode_result1_3
end
local function fetchPlayerDecals_upvr(arg1, arg2) -- Line 327, Named "fetchPlayerDecals"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	if arg2 == "first_page" then
	end
	local module_32_upvr = {
		player_id = arg1.UserId;
		cursor = nil;
	}
	local any_getNewUrl_result1_upvw_14 = BatchHTTP_upvr.getNewUrl("popfeed/image-search/from-inventory")
	local any_getGameStats_result1_upvr_10 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_13, pcall_result2_11 = pcall(function() -- Line 345
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_14 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_32_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_10 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_14, HttpService_upvr:JSONEncode(merge_upvr(module_32_upvr, any_getGameStats_result1_upvr_10)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_13 then
		warn("Fetching player's decals failed!", pcall_result2_11)
		return
	end
	return HttpService_upvr:JSONDecode(pcall_result2_11)
end
local function fetchImages_upvr(arg1, arg2) -- Line 365, Named "fetchImages"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	local module_25_upvr = {
		keyword = arg1 or "";
		page = arg2 or 1;
	}
	local any_getNewUrl_result1_upvw_18 = BatchHTTP_upvr.getNewUrl("popfeed/image-search")
	local any_getGameStats_result1_upvr_19 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_12, pcall_result2_21 = pcall(function() -- Line 379
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_18 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_25_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_19 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_18, HttpService_upvr:JSONEncode(merge_upvr(module_25_upvr, any_getGameStats_result1_upvr_19)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_12 then
		warn("Fetching images failed!", pcall_result2_21)
		return
	end
	return HttpService_upvr:JSONDecode(pcall_result2_21)
end
local function fetchDefaultImageTerms_upvr(arg1) -- Line 399, Named "fetchDefaultImageTerms"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	local module_28_upvr = {}
	local var98
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var98 = arg1.UserId
		return var98
	end
	if not arg1 or not INLINED() then
		var98 = 0
	end
	module_28_upvr.viewer = var98
	var98 = pcall
	local any_getNewUrl_result1_upvw_3 = BatchHTTP_upvr.getNewUrl("popfeed/image-search/explore")
	local any_getGameStats_result1_upvr_12 = AdRequestStats_upvr:getGameStats()
	local function var99() -- Line 412
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_3 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_28_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_12 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_3, HttpService_upvr:JSONEncode(merge_upvr(module_28_upvr, any_getGameStats_result1_upvr_12)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end
	var98 = var98(var99)
	local var98_result1, var98_result2 = var98(var99)
	if not var98_result1 then
		warn("Fetching default image terms failed!", var98_result2)
		return
	end
	return HttpService_upvr:JSONDecode(var98_result2)
end
local function fetchFollowingList_upvr(arg1, arg2, arg3) -- Line 432, Named "fetchFollowingList"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	local module_9_upvr = {
		viewer = arg1.UserId;
		page = arg3 or 1;
	}
	local any_getNewUrl_result1_upvw_19 = BatchHTTP_upvr.getNewUrl("popfeed/following/"..arg2)
	local any_getGameStats_result1_upvr_4 = AdRequestStats_upvr:getGameStats()
	local pcall_result1, pcall_result2_8 = pcall(function() -- Line 446
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_19 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_9_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_4 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_19, HttpService_upvr:JSONEncode(merge_upvr(module_9_upvr, any_getGameStats_result1_upvr_4)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1 then
		warn("Fetching followings list failed!", pcall_result2_8)
		return
	end
	return HttpService_upvr:JSONDecode(pcall_result2_8)
end
local function fetchFollowersList_upvr(arg1, arg2, arg3) -- Line 466, Named "fetchFollowersList"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	local module_18_upvr = {
		viewer = arg1.UserId;
		page = arg3 or 1;
	}
	local any_getNewUrl_result1_upvw_10 = BatchHTTP_upvr.getNewUrl("popfeed/followers/"..arg2)
	local any_getGameStats_result1_upvr_13 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_4, pcall_result2_15 = pcall(function() -- Line 480
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_10 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_18_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_13 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_10, HttpService_upvr:JSONEncode(merge_upvr(module_18_upvr, any_getGameStats_result1_upvr_13)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_4 then
		warn("Fetching followers list failed!", pcall_result2_15)
		return
	end
	return HttpService_upvr:JSONDecode(pcall_result2_15)
end
local function readNotifications_upvr(arg1, arg2) -- Line 500, Named "readNotifications"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	local module_16_upvr = {
		notifications = arg2 or "all";
	}
	local any_getNewUrl_result1_upvw_5 = BatchHTTP_upvr.getNewUrl("popfeed/notifications/"..arg1.UserId.."/read")
	local any_getGameStats_result1_upvr_22 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_9, pcall_result2_22 = pcall(function() -- Line 515
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_5 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_16_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_22 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_5, HttpService_upvr:JSONEncode(merge_upvr(module_16_upvr, any_getGameStats_result1_upvr_22)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_9 then
		warn("Reading notifications failed!", pcall_result2_22)
		return
	end
	local any_JSONDecode_result1_7 = HttpService_upvr:JSONDecode(pcall_result2_22)
	if any_JSONDecode_result1_7.status ~= "ok" then
		any_JSONDecode_result1_7 = false
	else
		any_JSONDecode_result1_7 = true
	end
	return any_JSONDecode_result1_7
end
local function fetchNotificationCounts_upvr(arg1) -- Line 535, Named "fetchNotificationCounts"
	--[[ Upvalues[5]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: merge_upvr (readonly)
	]]
	local module_17_upvr = {}
	local var124 = arg1
	if not var124 then
		var124 = tbl_6_upvr
	end
	module_17_upvr.players = var124
	module_17_upvr.preview_size = 0
	local any_getNewUrl_result1_upvw_9 = BatchHTTP_upvr.getNewUrl("popfeed/notifications/summary")
	local any_getGameStats_result1_upvr_18 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_15, pcall_result2_2 = pcall(function() -- Line 549
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_9 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_17_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_18 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_9, HttpService_upvr:JSONEncode(merge_upvr(module_17_upvr, any_getGameStats_result1_upvr_18)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_15 then
		warn("Fetching notification counts failed!", pcall_result2_2)
	else
		local any_JSONDecode_result1_4 = HttpService_upvr:JSONDecode(pcall_result2_2)
		if any_JSONDecode_result1_4.status == "ok" then
			return any_JSONDecode_result1_4.notifications
		end
	end
end
local function fetchNotifications_upvr(arg1, arg2) -- Line 571, Named "fetchNotifications"
	--[[ Upvalues[5]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
		[5]: readNotifications_upvr (readonly)
	]]
	if arg2 < 1 then
	else
		local module_31_upvr = {}
		module_31_upvr.page = arg2
		local any_getNewUrl_result1_upvw_17 = BatchHTTP_upvr.getNewUrl("popfeed/notifications/"..arg1.UserId)
		local any_getGameStats_result1_upvr_2 = AdRequestStats_upvr:getGameStats()
		local pcall_result1_20, pcall_result2_17 = pcall(function() -- Line 590
			--[[ Upvalues[6]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: any_getNewUrl_result1_upvw_17 (read and write)
				[3]: merge_upvr (copied, readonly)
				[4]: module_31_upvr (readonly)
				[5]: any_getGameStats_result1_upvr_2 (readonly)
				[6]: BatchHTTP_upvr (copied, readonly)
			]]
			return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_17, HttpService_upvr:JSONEncode(merge_upvr(module_31_upvr, any_getGameStats_result1_upvr_2)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
		end)
		if not pcall_result1_20 then
			warn("Fetching notifications data failed!", pcall_result2_17)
			return
		end
		local any_JSONDecode_result1_2 = HttpService_upvr:JSONDecode(pcall_result2_17)
		if any_JSONDecode_result1_2.status == "ok" then
			if arg2 == 1 then
				readNotifications_upvr(arg1, "all")
			end
			return any_JSONDecode_result1_2.notifications, any_JSONDecode_result1_2.unread_count, any_JSONDecode_result1_2.total_count
		end
	end
end
local function fetchLeaderboards_upvr(arg1) -- Line 616, Named "fetchLeaderboards"
	--[[ Upvalues[5]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
		[5]: tbl_upvw (read and write)
	]]
	local module_5_upvr = {}
	module_5_upvr.page = arg1
	local any_getNewUrl_result1_upvw_15 = BatchHTTP_upvr.getNewUrl("popfeed/leaderboard")
	local any_getGameStats_result1_upvr_20 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_21, pcall_result2_16 = pcall(function() -- Line 629
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_15 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_5_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_20 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_15, HttpService_upvr:JSONEncode(merge_upvr(module_5_upvr, any_getGameStats_result1_upvr_20)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_21 then
		warn("Fetching leaderboards data failed!", pcall_result2_16)
	else
		for i_13 in tbl_upvw.Pages do
			for _, v_12 in HttpService_upvr:JSONDecode(pcall_result2_16)[i_13] do
				table.insert(tbl_upvw.Pages[i_13], v_12)
			end
		end
		tbl_upvw.LastFetchedPage = arg1
	end
end
local function fetchPostData_upvr(arg1, arg2) -- Line 655, Named "fetchPostData"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	local module_19_upvr = {
		viewer = arg1.UserId;
	}
	local any_getNewUrl_result1_upvw_6 = BatchHTTP_upvr.getNewUrl("popfeed/post/"..arg2)
	local any_getGameStats_result1_upvr = AdRequestStats_upvr:getGameStats()
	local pcall_result1_2, pcall_result2_7 = pcall(function() -- Line 668
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_6 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_19_upvr (readonly)
			[5]: any_getGameStats_result1_upvr (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_6, HttpService_upvr:JSONEncode(merge_upvr(module_19_upvr, any_getGameStats_result1_upvr)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_2 then
		warn("Fetching post data failed!", pcall_result2_7)
	else
		local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(pcall_result2_7)
		if any_JSONDecode_result1.status == "ok" then
			return any_JSONDecode_result1.post
		end
	end
end
local function iteratePosts_upvr(arg1, arg2, arg3, arg4) -- Line 690, Named "iteratePosts"
	--[[ Upvalues[1]:
		[1]: formatData_upvr (readonly)
	]]
	for _, v_6 in arg2.posts do
		if not v_6.parent_id then
			local formatData_upvr_result1 = formatData_upvr(v_6, arg1, arg3, arg4)
			if formatData_upvr_result1 then
				table.insert({}, formatData_upvr_result1)
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function iterateReplies_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 706, Named "iterateReplies"
	--[[ Upvalues[2]:
		[1]: fetchPostData_upvr (readonly)
		[2]: formatData_upvr (readonly)
	]]
	if arg3 == 1 then
		local fetchPostData_result1 = fetchPostData_upvr(arg1, arg4)
		if fetchPostData_result1 then
			local formatData_result1_2 = formatData_upvr(fetchPostData_result1, arg1, arg5, arg3)
			if formatData_result1_2 then
				formatData_result1_2.IsParent = true
				table.insert({}, formatData_result1_2)
			end
		end
	end
	for _, v_7 in arg2.replies do
		local formatData_upvr_result1_2 = formatData_upvr(v_7, arg1, arg5, arg3)
		if formatData_upvr_result1_2 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, formatData_upvr_result1_2)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function iterateWithNoFilter_upvr(arg1, arg2, arg3, arg4) -- Line 730, Named "iterateWithNoFilter"
	--[[ Upvalues[1]:
		[1]: formatData_upvr (readonly)
	]]
	for _, v_8 in arg2.posts do
		local formatData_upvr_result1_3 = formatData_upvr(v_8, arg1, arg3, arg4)
		if formatData_upvr_result1_3 then
			table.insert({}, formatData_upvr_result1_3)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function fetchFeed_upvr(arg1, arg2, arg3, arg4) -- Line 743, Named "fetchFeed"
	--[[ Upvalues[7]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
		[5]: iterateReplies_upvr (readonly)
		[6]: iterateWithNoFilter_upvr (readonly)
		[7]: iteratePosts_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var173
	if arg2 < var173 then
	else
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var173 = "post/"..arg4.."/replies"
			return var173
		end
		if arg3 ~= "replies" or not INLINED_2() then
			var173 = "feed/"..arg3
		end
		local module_23_upvr = {}
		if arg3 == "replies" or not arg4 then
		end
		module_23_upvr.player_id = nil
		module_23_upvr.viewer = arg1.UserId
		module_23_upvr.sort = nil
		module_23_upvr.page = arg2
		module_23_upvr.page_size = nil
		local any_getNewUrl_result1_upvw_4 = BatchHTTP_upvr.getNewUrl("popfeed/"..var173)
		local any_getGameStats_result1_upvr_11 = AdRequestStats_upvr:getGameStats()
		local pcall_result1_17, pcall_result2_4 = pcall(function() -- Line 766
			--[[ Upvalues[6]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: any_getNewUrl_result1_upvw_4 (read and write)
				[3]: merge_upvr (copied, readonly)
				[4]: module_23_upvr (readonly)
				[5]: any_getGameStats_result1_upvr_11 (readonly)
				[6]: BatchHTTP_upvr (copied, readonly)
			]]
			return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_4, HttpService_upvr:JSONEncode(merge_upvr(module_23_upvr, any_getGameStats_result1_upvr_11)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
		end)
		if not pcall_result1_17 then
			warn("Fetching", arg3, "feed page", arg2, "failed!", pcall_result2_4)
			return
		end
		local any_JSONDecode_result1_6 = HttpService_upvr:JSONDecode(pcall_result2_4)
		if any_JSONDecode_result1_6.status == "ok" then
			if arg3 == "replies" then
				return iterateReplies_upvr(arg1, any_JSONDecode_result1_6, arg2, arg4, arg3)
			end
			if arg3 == "comments" or arg3 == "liked" then
				return iterateWithNoFilter_upvr(arg1, any_JSONDecode_result1_6, arg3, arg2)
			end
			return iteratePosts_upvr(arg1, any_JSONDecode_result1_6, arg3, arg2)
		end
	end
end
local function getContent_upvr(arg1, arg2, arg3, arg4) -- Line 794, Named "getContent"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: fetchNotifications_upvr (readonly)
		[3]: fetchFeed_upvr (readonly)
	]]
	local var181 = tbl_upvr[arg1][arg3]
	if not var181 then
		var181 = {}
		tbl_upvr[arg1][arg3] = var181
	end
	local var182 = var181[arg2]
	if not var182 then
		local var183
		if arg3 == "notifications" then
			var183 = fetchNotifications_upvr(arg1, arg2)
		else
			var183 = fetchFeed_upvr(arg1, arg2, arg3, arg4)
		end
		if not var183 or #var183 == 0 then
			return {}
		end
		var182 = var183
		var181[arg2] = var182
	end
	return var182
end
local function _(arg1, arg2) -- Line 821, Named "forceReload"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if not tbl_upvr[arg1] then
		tbl_upvr[arg1] = {}
	end
	tbl_upvr[arg1][arg2] = {}
end
local function getLeaderboards_upvr(arg1, arg2) -- Line 829, Named "getLeaderboards"
	--[[ Upvalues[2]:
		[1]: tbl_upvw (read and write)
		[2]: fetchLeaderboards_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 15. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 15. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [17.8]
	-- KONSTANTERROR: [7] 7. Error Block 2 end (CF ANALYSIS FAILED)
end
local function onRequestContentResponse_upvr(arg1, arg2) -- Line 856, Named "onRequestContentResponse"
	--[[ Upvalues[4]:
		[1]: fetchProfile_upvr (readonly)
		[2]: getLeaderboards_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: getContent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var208
	if arg2.ProfileId then
		var208 = fetchProfile_upvr(arg1, arg2.ProfileId)
	end
	local FeedType = arg2.FeedType
	local NewPageNum = arg2.NewPageNum
	local OldPageNum = arg2.OldPageNum
	local PostId = arg2.PostId
	if FeedType == "shop" then
		local module_24 = {}
		module_24.RequestData = arg2
		module_24.ProfileData = var208
		return {}, module_24
	end
	if FeedType == "explore" then
		local module = {}
		module.RequestData = arg2
		return getLeaderboards_upvr(NewPageNum, arg2.EntriesPerPage), module
	end
	if FeedType == "donations" then
		local module_15 = {}
		module_15.RequestData = arg2
		module_15.ProfileData = var208
		return {}, module_15
	end
	if NewPageNum < 1 then
		local module_8 = {}
		module_8.RequestData = arg2
		module_8.ProfileData = var208
		return nil, module_8
	end
	local var217 = NewPageNum or 1
	if var217 == 1 and FeedType ~= "notifications" then
		if not tbl_upvr[arg1] then
			tbl_upvr[arg1] = {}
		end
		tbl_upvr[arg1][FeedType] = {}
	end
	local getContent_upvr_result1 = getContent_upvr(arg1, var217 + 1, FeedType, PostId)
	for _, v_9 in getContent_upvr(arg1, var217 - 1, FeedType, PostId), nil do
		table.insert({}, v_9)
		local var220
	end
	for _, v_10 in getContent_upvr(arg1, var217, FeedType, PostId), nil do
		table.insert(var220, v_10)
		local var221
	end
	for _, v_11 in getContent_upvr_result1 do
		table.insert(var221, v_11)
		local var222
	end
	if OldPageNum and OldPageNum < var217 and #getContent_upvr_result1 == 0 then
		local module_29 = {}
		module_29.RequestData = arg2
		return nil, module_29
	end
	local module_2 = {}
	module_2.RequestData = arg2
	module_2.ProfileData = var208
	return var222, module_2
end
local TextService_upvr = game:GetService("TextService")
local any_IsStudio_result1_upvr = game:GetService("RunService"):IsStudio()
local function onPostContentResponse_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 930, Named "onPostContentResponse"
	--[[ Upvalues[6]:
		[1]: TextService_upvr (readonly)
		[2]: BatchHTTP_upvr (readonly)
		[3]: AdRequestStats_upvr (readonly)
		[4]: any_IsStudio_result1_upvr (readonly)
		[5]: HttpService_upvr (readonly)
		[6]: merge_upvr (readonly)
	]]
	local pcall_result1_16, pcall_result2_19 = pcall(function() -- Line 931
		--[[ Upvalues[3]:
			[1]: TextService_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
		]]
		return TextService_upvr:FilterStringAsync(arg2, arg1.UserId)
	end)
	local var230
	if not pcall_result1_16 then
		var230 = warn
		var230("Failed to filter post content", pcall_result2_19)
		return
	end
	var230 = pcall_result2_19:GetNonChatStringForUserAsync(arg1.UserId)
	if not var230 then
		var230 = "[Unknown]"
	end
	local var231
	if arg6 and typeof(arg6.Characters) == "table" and typeof(arg6.Background) == "string" then
	end
	local module_12_upvr = {
		text = var230;
	}
	module_12_upvr.images = arg3
	module_12_upvr.donations = arg5
	module_12_upvr.parent = arg4
	var231 = arg1.UserId
	module_12_upvr.player_id = var231
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var231 = HttpService_upvr:GenerateGUID()
		return var231
	end
	if not any_IsStudio_result1_upvr or not INLINED_3() then
		var231 = game.JobId
	end
	module_12_upvr.server_id = var231
	var231 = {}
	var231[1] = {
		type = "screenshot";
		characters = arg6.Characters;
		background = arg6.Background;
	}
	module_12_upvr.attachments = var231
	var231 = pcall
	local any_getNewUrl_result1_upvw_8 = BatchHTTP_upvr.getNewUrl("popfeed/post")
	local any_getGameStats_result1_upvr_17 = AdRequestStats_upvr:getGameStats()
	local function var234() -- Line 974
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_8 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_12_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_17 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_8, HttpService_upvr:JSONEncode(merge_upvr(module_12_upvr, any_getGameStats_result1_upvr_17)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end
	var231 = var231(var234)
	local var231_result1, var231_result2 = var231(var234)
	if not var231_result1 then
		var231_result1 = warn
		var231_result1("Posting failed!", var231_result2)
		return
	end
	var231_result1 = true
	return var231_result1
end
local function sendImpressions_upvr() -- Line 992, Named "sendImpressions"
	--[[ Upvalues[5]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: tbl_3_upvw (read and write)
		[4]: HttpService_upvr (readonly)
		[5]: merge_upvr (readonly)
	]]
	local module_22_upvr = {
		viewers = tbl_3_upvw;
	}
	local any_getNewUrl_result1_upvw_2 = BatchHTTP_upvr.getNewUrl("popfeed/impressions")
	local any_getGameStats_result1_upvr_14 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_18, pcall_result2_13 = pcall(function() -- Line 1005
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_2 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_22_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_14 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_2, HttpService_upvr:JSONEncode(merge_upvr(module_22_upvr, any_getGameStats_result1_upvr_14)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_18 then
		warn("Sending impressions to backend failed!", pcall_result2_13)
	else
		tbl_3_upvw = {}
	end
end
local function likePost_upvr(arg1, arg2, arg3) -- Line 1023, Named "likePost"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	local module_3_upvr = {}
	module_3_upvr.vote = arg3
	module_3_upvr.player_id = arg1.UserId
	local any_getNewUrl_result1_upvw_13 = BatchHTTP_upvr.getNewUrl("popfeed/post/"..arg2.."/vote")
	local any_getGameStats_result1_upvr_16 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_5, pcall_result2 = pcall(function() -- Line 1037
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_13 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_3_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_16 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_13, HttpService_upvr:JSONEncode(merge_upvr(module_3_upvr, any_getGameStats_result1_upvr_16)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_5 then
		warn("Liking failed!", pcall_result2)
		return
	end
end
local function followUser_upvr(arg1, arg2, arg3) -- Line 1053, Named "followUser"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	if arg3 then
	else
	end
	local module_21_upvr = {
		followed_by = arg1.userId;
	}
	module_21_upvr.following = arg2
	local any_getNewUrl_result1_upvw_11 = BatchHTTP_upvr.getNewUrl("popfeed/".."unfollow")
	local any_getGameStats_result1_upvr_15 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_8, pcall_result2_3 = pcall(function() -- Line 1069
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw_11 (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_21_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_15 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_11, HttpService_upvr:JSONEncode(merge_upvr(module_21_upvr, any_getGameStats_result1_upvr_15)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_8 then
		warn("Following failed!", pcall_result2_3)
		return
	end
end
local function boostPost_upvr(arg1, arg2, arg3) -- Line 1085, Named "boostPost"
	--[[ Upvalues[5]:
		[1]: var9_upvw (read and write)
		[2]: tbl_7_upvr (readonly)
		[3]: fetchBoostPasses_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: MarketplaceService_upvr (readonly)
	]]
	if type(arg2) ~= "string" then
		var9_upvw:FireClient(arg1, false)
	else
		tbl_7_upvr[arg1] = arg2
		local fetchBoostPasses_upvr_result1 = fetchBoostPasses_upvr(arg1, arg3)
		if not fetchBoostPasses_upvr_result1 or fetchBoostPasses_upvr_result1.status ~= "ok" then
			var9_upvw:FireClient(arg1, false)
			return
		end
		local _1 = fetchBoostPasses_upvr_result1.passes[1]
		if not _1 then
			warn("No boosting gamepass found!")
			var9_upvw:FireClient(arg1, false)
			return
		end
		tbl_upvr_2[arg1] = _1
		MarketplaceService_upvr:PromptGamePassPurchase(arg1, _1)
	end
end
local function onDeletePostResponse_upvr(arg1, arg2) -- Line 1111, Named "onDeletePostResponse"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	if type(arg2) ~= "string" then return end
	local module_26_upvr = {
		viewer = arg1.userId;
	}
	local any_getNewUrl_result1_upvw = BatchHTTP_upvr.getNewUrl("popfeed/post/"..arg2.."/delete")
	local any_getGameStats_result1_upvr_6 = AdRequestStats_upvr:getGameStats()
	local pcall_result1_6, pcall_result2_6 = pcall(function() -- Line 1128
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvw (read and write)
			[3]: merge_upvr (copied, readonly)
			[4]: module_26_upvr (readonly)
			[5]: any_getGameStats_result1_upvr_6 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw, HttpService_upvr:JSONEncode(merge_upvr(module_26_upvr, any_getGameStats_result1_upvr_6)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1_6 then
		warn("Deleting post failed!", pcall_result2_6)
		return
	end
	return true
end
local function reportPost_upvr(arg1, arg2) -- Line 1146, Named "reportPost"
	--[[ Upvalues[4]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: merge_upvr (readonly)
	]]
	if type(arg2) ~= "string" then
	else
		local module_6_upvr = {
			player_id = arg1.userId;
			message = "";
		}
		local any_getNewUrl_result1_upvw_16 = BatchHTTP_upvr.getNewUrl("popfeed/post/"..arg2.."/report")
		local any_getGameStats_result1_upvr_3 = AdRequestStats_upvr:getGameStats()
		local pcall_result1_14, pcall_result2_14 = pcall(function() -- Line 1164
			--[[ Upvalues[6]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: any_getNewUrl_result1_upvw_16 (read and write)
				[3]: merge_upvr (copied, readonly)
				[4]: module_6_upvr (readonly)
				[5]: any_getGameStats_result1_upvr_3 (readonly)
				[6]: BatchHTTP_upvr (copied, readonly)
			]]
			return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvw_16, HttpService_upvr:JSONEncode(merge_upvr(module_6_upvr, any_getGameStats_result1_upvr_3)), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
		end)
		if not pcall_result1_14 then
			warn("Reporting post failed!", pcall_result2_14)
			return
		end
	end
end
local tbl_5_upvr = {}
local function _(arg1) -- Line 1182, Named "cacheRealOutfit"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	local Character_2 = arg1.Character
	if not Character_2 then
	else
		local Humanoid_3 = Character_2:FindFirstChild("Humanoid")
		if not Humanoid_3 then return end
		tbl_5_upvr[arg1] = Humanoid_3:GetAppliedDescription()
	end
end
local function _(arg1) -- Line 1196, Named "queueOpenEvent"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl = {
		event_type = "popfeed_open";
	}
	tbl.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl)
end
local function _(arg1) -- Line 1201, Named "queueViewedPostEvent"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl_4 = {
		event_type = "popfeed_viewed_post";
	}
	tbl_4.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl_4)
end
local function handleAnalyticsOpen_upvr(arg1, arg2) -- Line 1206, Named "handleAnalyticsOpen"
	--[[ Upvalues[6]:
		[1]: RateLimiter_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
		[4]: AdRequestStats_upvr (readonly)
		[5]: merge_upvr (readonly)
		[6]: BatchHTTP_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then
	else
		if arg2 then
			local Character_3 = arg1.Character
			if not Character_3 then
			else
				local Humanoid_2 = Character_3:FindFirstChild("Humanoid")
				if not Humanoid_2 then
				else
					tbl_5_upvr[arg1] = Humanoid_2:GetAppliedDescription()
				end
			end
			tbl_8_upvr[arg1] = tick()
			return
		end
		local var278 = not arg2
		if var278 then
			if tbl_8_upvr[arg1] ~= nil then
				var278 = false
			else
				var278 = true
			end
		end
		if var278 then return end
		if not arg2 then
			tbl_8_upvr[arg1] = nil
			table.insert(BatchHTTP_upvr.eventQueue, {
				event_type = "popfeed_open";
				data = merge_upvr(merge_upvr({
					time_spent = tick() - tbl_8_upvr[arg1];
					timestamp = os.time();
				}, AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStatsWithClientStatsYielding(arg1));
			})
			return
		end
	end
end
local function handleAnalyticsViewedPost_upvr(arg1, arg2) -- Line 1242, Named "handleAnalyticsViewedPost"
	--[[ Upvalues[4]:
		[1]: RateLimiter_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: merge_upvr (readonly)
		[4]: BatchHTTP_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if RateLimiter_upvr:checkRateLimiting(arg1) then
	else
		if type(arg2) ~= "table" then return end
		if #arg2 == 0 then return end
		for i_15 = 1, #arg2 do
			table.insert({}, tostring(arg2[i_15]))
			local var286
		end
		table.insert(BatchHTTP_upvr.eventQueue, {
			event_type = "popfeed_viewed_post";
			data = merge_upvr(merge_upvr({
				viewed_posts = var286;
				timestamp = os.time();
			}, AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStatsWithClientStatsYielding(arg1));
		})
	end
end
local function replicateNotificationCounts_upvr(arg1) -- Line 1270, Named "replicateNotificationCounts"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: var11_upvw (read and write)
	]]
	if not arg1 then
	else
		for _, var290 in arg1 do
			local unread_count = var290.unread_count
			local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(var290.for_player)
			if any_GetPlayerByUserId_result1 and unread_count >= 1 then
				if not tbl_upvr[any_GetPlayerByUserId_result1] then
					tbl_upvr[any_GetPlayerByUserId_result1] = {}
				end
				tbl_upvr[any_GetPlayerByUserId_result1].notifications = {}
				var11_upvw:FireClient(any_GetPlayerByUserId_result1, unread_count)
			end
		end
	end
end
local function onPromptPurchaseFinished_upvr(arg1, arg2, arg3) -- Line 1293, Named "onPromptPurchaseFinished"
	--[[ Upvalues[5]:
		[1]: tbl_7_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: MarketplaceService_upvr (readonly)
		[4]: processBoostPost_upvr (readonly)
		[5]: var9_upvw (read and write)
	]]
	local var293 = tbl_7_upvr[arg1]
	local var294
	if tbl_upvr_2[arg1] ~= arg2 then
	else
		local _, pcall_result2_5 = pcall(function() -- Line 1301
			--[[ Upvalues[3]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			return MarketplaceService_upvr:UserOwnsGamePassAsync(arg1.UserId, arg2)
		end)
		var294 = arg3
		if not var294 then
			var294 = not arg3 and pcall_result2_5
			local var298
		end
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			local processBoostPost_result1 = processBoostPost_upvr(arg1, var293, arg2)
			return processBoostPost_result1
		end
		if var294 and var293 and (not INLINED_4() or processBoostPost_result1.status ~= "ok") then
			var298 = false
		end
		var9_upvw:FireClient(arg1, var298)
	end
end
local function onRequestConfigResponse_upvr() -- Line 1316, Named "onRequestConfigResponse"
	--[[ Upvalues[2]:
		[1]: var23_upvw (read and write)
		[2]: BindableEvent_upvr (readonly)
	]]
	if not var23_upvw then
		BindableEvent_upvr.Event:Wait()
	end
	return var23_upvw
end
local function onSearchDecalsResponse_upvr(arg1, arg2) -- Line 1324, Named "onSearchDecalsResponse"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: fetchPlayerDecals_upvr (readonly)
	]]
	local var300 = arg2 or "first_page"
	local var301 = tbl_upvr_3[arg1][var300]
	if not var301 then
		var301 = fetchPlayerDecals_upvr(arg1, var300)
		tbl_upvr_3[arg1][var300] = var301
	end
	return var301, var300
end
local function onSearchImagesResponse_upvr(arg1, arg2, arg3) -- Line 1336, Named "onSearchImagesResponse"
	--[[ Upvalues[2]:
		[1]: tbl_upvw_3 (read and write)
		[2]: fetchImages_upvr (readonly)
	]]
	local var302 = tbl_upvw_3[arg2..arg3]
	if not var302 then
		var302 = fetchImages_upvr(arg2, arg3)
		tbl_upvw_3[arg2..arg3] = var302
	end
	local module_14 = {}
	module_14.Keyword = arg2
	module_14.Page = arg3
	return var302, module_14
end
local function onGetFollowersListResponse_upvr(arg1, arg2, arg3) -- Line 1346, Named "onGetFollowersListResponse"
	--[[ Upvalues[1]:
		[1]: fetchFollowersList_upvr (readonly)
	]]
	local module_4 = {}
	module_4.UserId = arg2
	module_4.Page = arg3
	return fetchFollowersList_upvr(arg1, arg2, arg3).followers, module_4
end
local function onGetFollowingListResponse_upvr(arg1, arg2, arg3) -- Line 1358, Named "onGetFollowingListResponse"
	--[[ Upvalues[1]:
		[1]: fetchFollowingList_upvr (readonly)
	]]
	local module_33 = {}
	module_33.UserId = arg2
	module_33.Page = arg3
	return fetchFollowingList_upvr(arg1, arg2, arg3).following, module_33
end
local function requestSearchTerms_upvr(arg1) -- Line 1370, Named "requestSearchTerms"
	--[[ Upvalues[2]:
		[1]: var10_upvw (read and write)
		[2]: tbl_upvw_2 (read and write)
	]]
	var10_upvw:FireClient(arg1, tbl_upvw_2)
end
local function batchPostImpressions_upvr(arg1, arg2) -- Line 1374, Named "batchPostImpressions"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvw (read and write)
	]]
	local tbl_2 = {
		player_id = arg1.UserId;
	}
	tbl_2.posts = arg2
	table.insert(tbl_3_upvw, tbl_2)
end
local var307_upvw
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local var309_upvw
local var310_upvw
local var311_upvw
local var312_upvw
local var313_upvw
local var314_upvw
local var315_upvw
local var316_upvw
local var317_upvw
local var318_upvw
local var319_upvw
local var320_upvw
local var321_upvw
local var322_upvw
local var323_upvw
function module_20_upvr.init() -- Line 1381
	--[[ Upvalues[58]:
		[1]: var307_upvw (read and write)
		[2]: batchPostImpressions_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: var309_upvw (read and write)
		[5]: likePost_upvr (readonly)
		[6]: var9_upvw (read and write)
		[7]: boostPost_upvr (readonly)
		[8]: var310_upvw (read and write)
		[9]: onDeletePostResponse_upvr (readonly)
		[10]: var311_upvw (read and write)
		[11]: reportPost_upvr (readonly)
		[12]: var312_upvw (read and write)
		[13]: followUser_upvr (readonly)
		[14]: var313_upvw (read and write)
		[15]: onGetFollowersListResponse_upvr (readonly)
		[16]: var314_upvw (read and write)
		[17]: onGetFollowingListResponse_upvr (readonly)
		[18]: var315_upvw (read and write)
		[19]: onPostContentResponse_upvr (readonly)
		[20]: var316_upvw (read and write)
		[21]: onRequestContentResponse_upvr (readonly)
		[22]: var317_upvw (read and write)
		[23]: onSearchDecalsResponse_upvr (readonly)
		[24]: var318_upvw (read and write)
		[25]: onSearchImagesResponse_upvr (readonly)
		[26]: var10_upvw (read and write)
		[27]: requestSearchTerms_upvr (readonly)
		[28]: var319_upvw (read and write)
		[29]: onRequestConfigResponse_upvr (readonly)
		[30]: var320_upvw (read and write)
		[31]: fetchDonations_upvr (readonly)
		[32]: var11_upvw (read and write)
		[33]: var321_upvw (read and write)
		[34]: handleAnalyticsOpen_upvr (readonly)
		[35]: var322_upvw (read and write)
		[36]: handleAnalyticsViewedPost_upvr (readonly)
		[37]: var323_upvw (read and write)
		[38]: tbl_5_upvr (readonly)
		[39]: MarketplaceService_upvr (readonly)
		[40]: onPromptPurchaseFinished_upvr (readonly)
		[41]: Players_upvr (readonly)
		[42]: tbl_6_upvr (readonly)
		[43]: tbl_upvr (readonly)
		[44]: tbl_upvr_3 (readonly)
		[45]: tbl_7_upvr (readonly)
		[46]: tbl_upvr_2 (readonly)
		[47]: tbl_8_upvr (readonly)
		[48]: replicateNotificationCounts_upvr (readonly)
		[49]: fetchNotificationCounts_upvr (readonly)
		[50]: fetchDefaultImageTerms_upvr (readonly)
		[51]: tbl_upvw_2 (read and write)
		[52]: tbl_upvw_3 (read and write)
		[53]: tbl_upvw (read and write)
		[54]: tbl_3_upvw (read and write)
		[55]: sendImpressions_upvr (readonly)
		[56]: var23_upvw (read and write)
		[57]: fetchConfig_upvr (readonly)
		[58]: BindableEvent_upvr (readonly)
	]]
	var307_upvw = Instance.new("RemoteEvent")
	var307_upvw.Name = "PopfeedOnSendPostImpressions"
	var307_upvw.OnServerEvent:Connect(batchPostImpressions_upvr)
	var307_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var309_upvw = Instance.new("RemoteEvent")
	var309_upvw.Name = "PopfeedOnLikePost"
	var309_upvw.OnServerEvent:Connect(likePost_upvr)
	var309_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var9_upvw = Instance.new("RemoteEvent")
	var9_upvw.Name = "PopfeedOnBoostPost"
	var9_upvw.OnServerEvent:Connect(boostPost_upvr)
	var9_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var310_upvw = Instance.new("RemoteFunction")
	var310_upvw.Name = "PopfeedOnDeletePost"
	var310_upvw.OnServerInvoke = onDeletePostResponse_upvr
	var310_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var311_upvw = Instance.new("RemoteEvent")
	var311_upvw.Name = "PopfeedOnReportPost"
	var311_upvw.OnServerEvent:Connect(reportPost_upvr)
	var311_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var312_upvw = Instance.new("RemoteEvent")
	var312_upvw.Name = "PopfeedOnFollowUser"
	var312_upvw.OnServerEvent:Connect(followUser_upvr)
	var312_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var313_upvw = Instance.new("RemoteFunction")
	var313_upvw.Name = "PopfeedOnGetFollowersList"
	var313_upvw.OnServerInvoke = onGetFollowersListResponse_upvr
	var313_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var314_upvw = Instance.new("RemoteFunction")
	var314_upvw.Name = "PopfeedOnGetFollowingList"
	var314_upvw.OnServerInvoke = onGetFollowingListResponse_upvr
	var314_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var315_upvw = Instance.new("RemoteFunction")
	var315_upvw.Name = "PopfeedOnPostContent"
	var315_upvw.OnServerInvoke = onPostContentResponse_upvr
	var315_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var316_upvw = Instance.new("RemoteFunction")
	var316_upvw.Name = "PopfeedOnRequestContent"
	var316_upvw.OnServerInvoke = onRequestContentResponse_upvr
	var316_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var317_upvw = Instance.new("RemoteFunction")
	var317_upvw.Name = "PopfeedOnSearchDecals"
	var317_upvw.OnServerInvoke = onSearchDecalsResponse_upvr
	var317_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var318_upvw = Instance.new("RemoteFunction")
	var318_upvw.Name = "PopfeedOnSearchImages"
	var318_upvw.OnServerInvoke = onSearchImagesResponse_upvr
	var318_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var10_upvw = Instance.new("RemoteEvent")
	var10_upvw.Name = "PopfeedOnSearchTermUpdate"
	var10_upvw.OnServerEvent:Connect(requestSearchTerms_upvr)
	var10_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var319_upvw = Instance.new("RemoteFunction")
	var319_upvw.Name = "PopfeedOnRequestConfig"
	var319_upvw.OnServerInvoke = onRequestConfigResponse_upvr
	var319_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var320_upvw = Instance.new("RemoteFunction")
	var320_upvw.Name = "PopfeedOnRequestDonationItems"
	var320_upvw.OnServerInvoke = fetchDonations_upvr
	var320_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var11_upvw = Instance.new("RemoteEvent")
	var11_upvw.Name = "PopfeedOnNewNotifications"
	var11_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var321_upvw = Instance.new("RemoteEvent")
	var321_upvw.Name = "PopfeedAnalyticsOpen"
	var321_upvw.OnServerEvent:Connect(handleAnalyticsOpen_upvr)
	var321_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var322_upvw = Instance.new("RemoteEvent")
	var322_upvw.Name = "PopfeedAnalyticsViewedPost"
	var322_upvw.OnServerEvent:Connect(handleAnalyticsViewedPost_upvr)
	var322_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	var323_upvw = Instance.new("RemoteEvent")
	var323_upvw.Name = "PopfeedChangeOutfit"
	var323_upvw.OnServerEvent:Connect(function(arg1, arg2) -- Line 1473
		--[[ Upvalues[2]:
			[1]: tbl_5_upvr (copied, readonly)
			[2]: ReplicatedStorage_upvr (copied, readonly)
		]]
		local Character = arg1.Character
		if not Character then
		else
			local Humanoid = Character:FindFirstChild("Humanoid")
			if not Humanoid then return end
			if not arg2 then
				if tbl_5_upvr[arg1] then
					Humanoid:ApplyDescription(tbl_5_upvr[arg1])
				end
				return
			end
			local SOME = ReplicatedStorage_upvr.Outfits:FindFirstChild(arg2)
			if not SOME then return end
			SOME.Face = tbl_5_upvr[arg1].Face
			SOME.Head = tbl_5_upvr[arg1].Head
			SOME.HeadScale = tbl_5_upvr[arg1].HeadScale
			SOME.HeadColor = tbl_5_upvr[arg1].HeadColor
			SOME.HatAccessory = tbl_5_upvr[arg1].HatAccessory
			SOME.FaceAccessory = tbl_5_upvr[arg1].FaceAccessory
			SOME.HairAccessory = tbl_5_upvr[arg1].HairAccessory
			Humanoid:ApplyDescription(SOME)
		end
	end)
	var323_upvw.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	MarketplaceService_upvr.PromptGamePassPurchaseFinished:Connect(onPromptPurchaseFinished_upvr)
	Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 1510
		--[[ Upvalues[7]:
			[1]: tbl_6_upvr (copied, readonly)
			[2]: tbl_5_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: tbl_upvr_3 (copied, readonly)
			[5]: tbl_7_upvr (copied, readonly)
			[6]: tbl_upvr_2 (copied, readonly)
			[7]: tbl_8_upvr (copied, readonly)
		]]
		local table_find_result1 = table.find(tbl_6_upvr, arg1.UserId)
		if table_find_result1 then
			table.remove(tbl_6_upvr, table_find_result1)
		end
		tbl_5_upvr[arg1] = nil
		tbl_upvr[arg1] = nil
		tbl_upvr_3[arg1] = nil
		tbl_7_upvr[arg1] = nil
		tbl_upvr_2[arg1] = nil
		tbl_8_upvr[arg1] = nil
	end)
	Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 1524
		--[[ Upvalues[5]:
			[1]: tbl_upvr (copied, readonly)
			[2]: tbl_upvr_3 (copied, readonly)
			[3]: tbl_6_upvr (copied, readonly)
			[4]: replicateNotificationCounts_upvr (copied, readonly)
			[5]: fetchNotificationCounts_upvr (copied, readonly)
		]]
		tbl_upvr[arg1] = {}
		tbl_upvr_3[arg1] = {}
		table.insert(tbl_6_upvr, arg1.UserId)
		replicateNotificationCounts_upvr(fetchNotificationCounts_upvr({arg1.UserId}))
	end)
	task.spawn(function() -- Line 1542
		--[[ Upvalues[3]:
			[1]: fetchDefaultImageTerms_upvr (copied, readonly)
			[2]: tbl_upvw_2 (copied, read and write)
			[3]: var10_upvw (copied, read and write)
		]]
		while true do
			local fetchDefaultImageTerms_result1 = fetchDefaultImageTerms_upvr()
			if fetchDefaultImageTerms_result1 then
				tbl_upvw_2 = {}
				local top_terms = fetchDefaultImageTerms_result1.top_terms
				table.insert(tbl_upvw_2, top_terms[1])
				table.insert(tbl_upvw_2, top_terms[2])
				table.insert(tbl_upvw_2, top_terms[3])
				table.insert(tbl_upvw_2, top_terms[4])
				table.insert(tbl_upvw_2, top_terms[5])
				table.insert(tbl_upvw_2, top_terms[6])
				table.insert(tbl_upvw_2, top_terms[7])
				table.insert(tbl_upvw_2, top_terms[8])
				var10_upvw:FireAllClients(tbl_upvw_2)
			end
			task.wait(120)
		end
	end)
	task.spawn(function() -- Line 1561
		--[[ Upvalues[2]:
			[1]: replicateNotificationCounts_upvr (copied, readonly)
			[2]: fetchNotificationCounts_upvr (copied, readonly)
		]]
		while true do
			replicateNotificationCounts_upvr(fetchNotificationCounts_upvr())
			task.wait(60)
		end
	end)
	task.spawn(function() -- Line 1569
		--[[ Upvalues[1]:
			[1]: tbl_upvw_3 (copied, read and write)
		]]
		while true do
			task.wait(86400)
			tbl_upvw_3 = {}
		end
	end)
	task.spawn(function() -- Line 1577
		--[[ Upvalues[1]:
			[1]: tbl_upvw (copied, read and write)
		]]
		while true do
			task.wait(300)
			tbl_upvw = {
				Pages = {
					top_donors = {};
					top_boosters = {};
				};
				LastFetchedPage = 0;
			}
		end
	end)
	task.spawn(function() -- Line 1592
		--[[ Upvalues[2]:
			[1]: tbl_3_upvw (copied, read and write)
			[2]: sendImpressions_upvr (copied, readonly)
		]]
		while true do
			task.wait(120)
			if #tbl_3_upvw ~= 0 then
				sendImpressions_upvr()
			end
		end
	end)
	var23_upvw = fetchConfig_upvr()
	BindableEvent_upvr:Fire()
end
return module_20_upvr