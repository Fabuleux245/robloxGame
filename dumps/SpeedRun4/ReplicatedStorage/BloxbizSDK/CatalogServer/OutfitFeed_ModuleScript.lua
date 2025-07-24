-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:15
-- Luau version 6, Types version 3
-- Time taken: 0.018059 seconds

local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Players_upvr = game:GetService("Players")
local TextService_upvr = game:GetService("TextService")
local Parent = script.Parent.Parent
local var9_upvw
local BatchHTTP_upvr = require(Parent.BatchHTTP)
local Utils_upvr = require(Parent.Utils)
local Promise_upvr = require(Parent.Utils.Promise)
local any_GetDataStore_result1_upvr = game:GetService("DataStoreService"):GetDataStore("OUTFIT_FEED_".."TEST_VERSION_5")
local tbl_12_upvr = {
	Posted = {};
	Liked = {};
}
local module_upvr_2 = {
	Gamepasses = {};
	PlayerData = {};
	CurrentBoostingPost = {};
}
local var16_upvw = false
local tbl_3_upvr = {}
local tbl_6 = {
	Id = "top";
	Name = "Top";
	Sort = "top";
	Type = "all";
	Searchable = true;
}
tbl_3_upvr[1] = {
	Id = "relevance";
	Name = "Relevance";
	Sort = "relevance";
	Type = "all";
	Searchable = true;
	SearchOnly = true;
}
tbl_3_upvr[2] = {
	Id = "hot";
	Name = "Hot";
	Sort = "hot";
	Type = "all";
	Searchable = true;
}
tbl_3_upvr[3] = tbl_6
tbl_3_upvr[4] = {
	Id = "top_weekly";
	Name = "Top";
	Sort = "top_weekly";
	Type = "all";
	Searchable = true;
	Internal = true;
}
tbl_3_upvr[5] = {
	Id = "top_monthly";
	Name = "Top";
	Sort = "top_monthly";
	Type = "all";
	Searchable = true;
	Internal = true;
}
tbl_3_upvr[6] = {
	Id = "new";
	Name = "New";
	Sort = "latest";
	Type = "all";
	Searchable = true;
}
tbl_3_upvr[7] = {
	Id = "posted";
	Name = "Posted";
	Sort = "latest";
	Type = "by-creator";
	ProfileFeed = true;
	Searchable = true;
}
tbl_3_upvr[8] = {
	Id = "liked";
	Name = "Liked";
	Sort = "relevance";
	Type = "liked";
	ProfileFeed = true;
	Searchable = false;
}
local module_upvr = {}
local function getUserId_upvr(arg1) -- Line 126, Named "getUserId"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	if not module_upvr[arg1] then
		local SOME = Players_upvr:FindFirstChild(arg1)
		local var28
		if SOME then
			module_upvr[arg1] = SOME.UserId
		else
			local pcall_result1_3, pcall_result2_4 = pcall(function() -- Line 133
				--[[ Upvalues[2]:
					[1]: Players_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				return Players_upvr:GetUserIdFromNameAsync(arg1)
			end)
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var28 = pcall_result2_4
				return var28
			end
			if not pcall_result1_3 or not INLINED() then
				var28 = -1
			end
			module_upvr[arg1] = var28
		end
	end
	return module_upvr[arg1]
end
tbl_6 = {}
local var32_upvr = tbl_6
for _, v in ipairs(tbl_3_upvr) do
	var32_upvr[v.Id] = v
end
local tbl_4_upvr = {}
local function GetFeeds_upvr() -- Line 150, Named "GetFeeds"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: var32_upvr (readonly)
	]]
	return {
		Feeds = tbl_3_upvr;
		FeedsById = var32_upvr;
	}
end
local function _(arg1) -- Line 158, Named "GetBoostsAvailable"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local any_request_result1_9, any_request_result2_7 = BatchHTTP_upvr.request("POST", "/catalog/boosts/available", {
		player_id = arg1.UserId;
	})
	if not any_request_result1_9 or any_request_result2_7.status ~= "ok" then
		return false, any_request_result2_7
	end
	return true, any_request_result2_7.available_boosts
end
local function ProcessBoostPost_upvr(arg1, arg2, arg3) -- Line 171, Named "ProcessBoostPost"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl_5 = {
		player_id = arg1.UserId;
	}
	tbl_5.gamepass_id = arg3
	local any_request_result1_6, any_request_result2_9 = BatchHTTP_upvr.request("POST", string.format("catalog/outfits/%s/boost", arg2), tbl_5)
	if not any_request_result1_6 then return end
	return any_request_result2_9
end
MarketplaceService_upvr.PromptGamePassPurchaseFinished:Connect(function(arg1, arg2, arg3) -- Line 188
	--[[ Upvalues[4]:
		[1]: module_upvr_2 (readonly)
		[2]: MarketplaceService_upvr (readonly)
		[3]: ProcessBoostPost_upvr (readonly)
		[4]: var9_upvw (read and write)
	]]
	local var45 = module_upvr_2.CurrentBoostingPost[arg1]
	local var46
	if var45 then
		local _, pcall_result2 = pcall(function() -- Line 192
			--[[ Upvalues[3]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			return MarketplaceService_upvr:UserOwnsGamePassAsync(arg1.UserId, arg2)
		end)
		var46 = arg3
		if not var46 then
			var46 = not arg3 and pcall_result2
			local var50
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			local ProcessBoostPost_result1 = ProcessBoostPost_upvr(arg1, var45, arg2)
			return ProcessBoostPost_result1
		end
		if var46 and var45 and (not INLINED_2() or ProcessBoostPost_result1.status ~= "ok") then
			var50 = false
		end
		var9_upvw:FireClient(arg1, var45, var50)
	end
end)
local function ProcessActionData_upvr(arg1, arg2, arg3, arg4) -- Line 209, Named "ProcessActionData"
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local var53
	if arg3 == "rename" then
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 219
			--[[ Upvalues[3]:
				[1]: TextService_upvr (copied, readonly)
				[2]: arg4 (readonly)
				[3]: arg1 (readonly)
			]]
			return TextService_upvr:FilterStringAsync(arg4, arg1.UserId)
		end)
		if not pcall_result1 then
			var53 = "Failed to filter outfit name."
			warn(var53, pcall_result2_2)
		else
			local any_GetNonChatStringForUserAsync_result1_2 = pcall_result2_2:GetNonChatStringForUserAsync(arg1.UserId)
			if not any_GetNonChatStringForUserAsync_result1_2 then
				any_GetNonChatStringForUserAsync_result1_2 = "[Unknown]"
			end
			module.name = any_GetNonChatStringForUserAsync_result1_2
		end
	end
	if 0 >= Utils_upvr.getArraySize(module) then
	else
	end
	return true, module, var53
end
local function _(arg1, arg2, arg3, arg4) -- Line 239, Named "ProcessActionResult"
	if arg4.status ~= "ok" then
		return false
	end
	if arg3 == "like" then
		return true, arg4.likes
	end
	if arg3 == "unlike" then
		return true, arg4.likes
	end
	return false
end
local function OnGetAllFeed_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 265, Named "OnGetAllFeed"
	--[[ Upvalues[2]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	local tbl = {}
	tbl.page = arg3
	tbl.sort = arg4
	tbl.viewer = arg1.UserId
	tbl.page_size = arg5
	local any_request_result1_2, any_request_result2 = BatchHTTP_upvr.request("POST", "catalog/outfits/feed/"..(arg2 or "all"), tbl)
	if not any_request_result1_2 then
		return false, any_request_result2
	end
	if not tbl_4_upvr[arg1] then
		tbl_4_upvr[arg1] = {}
	end
	for _, v_2 in pairs(any_request_result2.outfits) do
		table.insert(tbl_4_upvr[arg1], v_2.guid)
	end
	return true, any_request_result2.outfits
end
local function nullifyQuery_upvr(arg1) -- Line 298, Named "nullifyQuery"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var74 = arg1
	if not var74 then
		var74 = {}
	end
	for i_3, v_3 in pairs(var74) do
		if type(v_3) == "string" and #v_3 == 0 then
			v_3 = nil
		end
		arg1[i_3] = v_3
		if v_3 then
		end
	end
	if 0 + 1 == 0 then
	end
	return nil
end
local SearchFilters_upvr = require(Parent.Utils.SearchFilters)
local function OnLoadOutfits_upvr(arg1, arg2, arg3, arg4) -- Line 319, Named "OnLoadOutfits"
	--[[ Upvalues[6]:
		[1]: var32_upvr (readonly)
		[2]: nullifyQuery_upvr (readonly)
		[3]: SearchFilters_upvr (readonly)
		[4]: getUserId_upvr (readonly)
		[5]: BatchHTTP_upvr (readonly)
		[6]: tbl_4_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var87 = var32_upvr[arg2]
	local var88
	if not var87 then
		error("Feed "..arg2.." doesn't exist!")
	end
	if var87.Searchable then
		var88 = nullifyQuery_upvr(var88)
	else
		var88 = nil
	end
	if not var88 then
		local tbl_11 = {}
		tbl_11.page = arg3
		tbl_11.sort = var87.Sort
		tbl_11.viewer = arg1.UserId
		tbl_11.page_size = 15
		if var87.ProfileFeed then
			tbl_11.player_id = arg1.UserId
			-- KONSTANTWARNING: GOTO [128] #88
		end
	else
		if var87.ProfileFeed and not var88.creator then
			var88.creator = arg1.UserId
		end
		local any_getCreatorFilter_result1, any_getCreatorFilter_result2 = SearchFilters_upvr.getCreatorFilter(var88.keywords)
		if any_getCreatorFilter_result2 then
			if any_getCreatorFilter_result2.CreatorType == 1 then
				local CreatorTargetId = any_getCreatorFilter_result2.CreatorTargetId
				if not CreatorTargetId then
					CreatorTargetId = getUserId_upvr(any_getCreatorFilter_result2.CreatorName)
				end
				var88.creator = CreatorTargetId
				var88.keywords = any_getCreatorFilter_result1
			else
				var88.creator = -1
				var88.keywords = any_getCreatorFilter_result1
			end
		end
		if var88.keywords and #var88.keywords:gsub("%s", "") == 0 then
			var88.keywords = nil
		end
		local tbl_14 = {
			query = var88;
		}
		tbl_14.page = arg3
		tbl_14.sort = var87.Sort
		tbl_14.viewer = arg1.UserId
		tbl_14.page_size = 15
		if var87.ProfileFeed then
			tbl_14.player_id = arg1.UserId
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local any_request_result1, any_request_result2_2 = BatchHTTP_upvr.request("POST", "catalog/outfits/search", tbl_14)
	if not any_request_result1 then
		return false, any_request_result2_2
	end
	if not tbl_4_upvr[arg1] then
		tbl_4_upvr[arg1] = {}
	end
	for _, v_4 in pairs(any_request_result2_2.outfits) do
		table.insert(tbl_4_upvr[arg1], v_4.guid)
	end
	return true, any_request_result2_2.outfits
end
local FeedUtils_upvr = require(Parent.CatalogShared.FeedUtils)
local function OnCreateFeed_upvr(arg1, arg2) -- Line 408, Named "OnCreateFeed"
	--[[ Upvalues[5]:
		[1]: TextService_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: FeedUtils_upvr (readonly)
		[4]: BatchHTTP_upvr (readonly)
		[5]: module_upvr_2 (readonly)
	]]
	if arg2.name then
		local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 414
			--[[ Upvalues[3]:
				[1]: TextService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: arg1 (readonly)
			]]
			return TextService_upvr:FilterStringAsync(arg2.name, arg1.UserId)
		end)
		if not pcall_result1_2 then
			warn("Failed to filter outfit name", pcall_result2_3)
			return false, pcall_result2_3
		end
		local any_GetNonChatStringForUserAsync_result1 = pcall_result2_3:GetNonChatStringForUserAsync(arg1.UserId)
		if not any_GetNonChatStringForUserAsync_result1 then
			any_GetNonChatStringForUserAsync_result1 = "[Unknown]"
		end
		arg2.name = any_GetNonChatStringForUserAsync_result1
	end
	local any_merge_result1 = Utils_upvr.merge(arg2, {
		creator = arg1.UserId;
	})
	if FeedUtils_upvr.GetOfflineMode() then
		return true, Utils_upvr.merge(any_merge_result1, {
			guid = "Test"..tostring(tick());
			created_at = DateTime.now():ToIsoDate();
		})
	end
	local any_request_result1_3, any_request_result2_8 = BatchHTTP_upvr.request("POST", "catalog/outfits/create", any_merge_result1)
	if not any_request_result1_3 then
		return false, any_request_result2_8.message
	end
	local any_SetData_result1, any_SetData_result2 = module_upvr_2.SetData(arg1, "Posted", any_request_result2_8.guid)
	if not any_SetData_result1 then
		warn(string.format("Setting %s's data unsuccessful, error message: %s", arg1.Name, any_SetData_result2))
	end
	return true, Utils_upvr.merge(any_merge_result1, any_request_result2_8)
end
local function OnGetFeed_upvr(arg1, arg2) -- Line 457, Named "OnGetFeed"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local any_request_result1_7, any_request_result2_3 = BatchHTTP_upvr.request("POST", "catalog/outfits/"..arg2, {
		viewer = arg1.UserId;
	})
	if not any_request_result1_7 or any_request_result2_3.status ~= "ok" then
		warn("Get outfit failed!", any_request_result2_3)
		return false, any_request_result2_3
	end
	return true, any_request_result2_3.outfit
end
local function OnFeedAction_upvr(arg1, arg2, arg3, arg4) -- Line 473, Named "OnFeedAction"
	--[[ Upvalues[3]:
		[1]: ProcessActionData_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: BatchHTTP_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ProcessActionData_result1, ProcessActionData_upvr_result2, ProcessActionData_result3 = ProcessActionData_upvr(arg1, arg2, arg3, arg4)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 8. Error Block 23 start (CF ANALYSIS FAILED)
	;({}).player_id = arg1.UserId
	local var117
	if ProcessActionData_result1 and ProcessActionData_upvr_result2 then
		var117 = Utils_upvr.merge(var117, ProcessActionData_upvr_result2)
	end
	local any_request_result1_5, any_request_result2_6 = BatchHTTP_upvr.request("POST", string.format("catalog/outfits/%s/%s", arg2, arg3), var117)
	if not any_request_result1_5 then
		return false, any_request_result2_6.message
	end
	if any_request_result2_6.status ~= "ok" then
		-- KONSTANTWARNING: GOTO [61] #50
	end
	-- KONSTANTERROR: [7] 8. Error Block 23 end (CF ANALYSIS FAILED)
end
local function OnBoostAction_upvr(arg1, arg2) -- Line 502, Named "OnBoostAction"
	--[[ Upvalues[3]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_request_result1_8, any_request_result2_4 = BatchHTTP_upvr.request("POST", "/catalog/boosts/available", {
		player_id = arg1.UserId;
	})
	local var123
	if not any_request_result1_8 or any_request_result2_4.status ~= "ok" then
		var123 = false
		local _ = any_request_result2_4
	else
		var123 = true
	end
	if var123 and typeof(any_request_result2_4.available_boosts) == "table" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local _1 = any_request_result2_4.available_boosts[1]
		if not _1 then
			warn("No boosting gamepass found!")
		else
			MarketplaceService_upvr:PromptGamePassPurchase(arg1, _1)
			module_upvr_2.CurrentBoostingPost[arg1] = arg2
			return true, tostring(_1)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return false, "No boosting gamepass found!"
end
local function OnRequestData_upvr(arg1, arg2) -- Line 521, Named "OnRequestData"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if arg2 ~= "Liked" and arg2 ~= "Posted" then
		warn(string.format("Invalid data type: %s", arg2))
	else
		local any_GetData_result1_2 = module_upvr_2.GetData(arg1)
		if any_GetData_result1_2 then
			return any_GetData_result1_2[arg2]
		end
		warn(string.format("No %s data.", arg1.Name))
	end
end
local var127_upvw
local var128_upvw
local function OnRequestFeedEnabled_upvr(arg1) -- Line 537, Named "OnRequestFeedEnabled"
	--[[ Upvalues[5]:
		[1]: var127_upvw (read and write)
		[2]: var128_upvw (read and write)
		[3]: var16_upvw (read and write)
		[4]: BatchHTTP_upvr (readonly)
		[5]: Utils_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var129
	if var127_upvw ~= nil then
		return var127_upvw, var128_upvw
	end
	if var16_upvw then
		var127_upvw = false
		var128_upvw = nil
		return var127_upvw, var128_upvw
	end
	local tbl_15 = {}
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var129 = arg1.UserId
		return var129
	end
	if not arg1 or not INLINED_3() then
		var129 = 1
	end
	tbl_15.viewer = var129
	var129 = true
	local any_request_result1_4, any_request_result2_5 = BatchHTTP_upvr.request("POST", "/catalog/config", tbl_15, var129)
	if not any_request_result1_4 or any_request_result2_5.status ~= "ok" then
		if any_request_result2_5.status == "feature_blocked" then
			Utils_upvr.debug_warn("Could not get Outfit Feed permissions. Outfit Feed will be read-only.")
			var16_upvw = true
		end
		var127_upvw = false
		var128_upvw = any_request_result2_5
		return var127_upvw, var128_upvw
	end
	if any_request_result2_5.permissions ~= "APPROVED" then
	else
	end
	var127_upvw = true
	var128_upvw = any_request_result2_5
	return var127_upvw, var128_upvw
end
function module_upvr_2.LoadData(arg1) -- Line 565
	--[[ Upvalues[4]:
		[1]: module_upvr_2 (readonly)
		[2]: Utils_upvr (readonly)
		[3]: any_GetDataStore_result1_upvr (readonly)
		[4]: tbl_12_upvr (readonly)
	]]
	if module_upvr_2.PlayerData[arg1] then
	else
		if not arg1.Parent then return end
		local any_callWithRetry_result1_2 = Utils_upvr.callWithRetry(function() -- Line 573
			--[[ Upvalues[2]:
				[1]: any_GetDataStore_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return any_GetDataStore_result1_upvr:GetAsync(arg1.UserId)
		end, 5)
		if not arg1.Parent then
			Utils_upvr.pprint("[SuperBiz] "..arg1.Name.." left while loading outfit feed data")
			return
		end
		if not any_callWithRetry_result1_2 then
			module_upvr_2.PlayerData[arg1] = Utils_upvr.deepCopy(tbl_12_upvr)
			return
		end
		if typeof(any_callWithRetry_result1_2) == "table" then
			module_upvr_2.PlayerData[arg1] = any_callWithRetry_result1_2
			return
		end
		Utils_upvr.pprint("[SuperBiz] Couldn't load catalog data for "..arg1.Name.."\nError: "..any_callWithRetry_result1_2)
	end
end
function module_upvr_2.SaveData(arg1, arg2) -- Line 591
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: Utils_upvr (readonly)
		[3]: any_GetDataStore_result1_upvr (readonly)
	]]
	local any_GetData_result1_3 = module_upvr_2.GetData(arg1)
	if not any_GetData_result1_3 then
	else
		local any_deepCopy_result1_upvw = Utils_upvr.deepCopy(any_GetData_result1_3)
		local any_callWithRetry_result1 = Utils_upvr.callWithRetry(function() -- Line 602
			--[[ Upvalues[3]:
				[1]: any_GetDataStore_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: any_deepCopy_result1_upvw (read and write)
			]]
			any_GetDataStore_result1_upvr:SetAsync(arg1.UserId, any_deepCopy_result1_upvw)
		end, arg2)
		if any_callWithRetry_result1 then
			Utils_upvr.pprint("[SuperBiz] Couldn't save outfit feed data for "..arg1.Name.."\nError: "..any_callWithRetry_result1)
		end
	end
end
function module_upvr_2.SetData(arg1, arg2, arg3) -- Line 612
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if arg2 ~= "Posted" and arg2 ~= "Liked" then
		local formatted = string.format("Invalid action: %s. The only accepted actions are: Posted | Liked.", arg2)
		warn(formatted)
		return false, formatted
	end
	local any_GetData_result1 = module_upvr_2.GetData(arg1)
	if not any_GetData_result1 then
		return false, string.format("Can't retrieve player's data %s", arg1.Name)
	end
	table.insert(any_GetData_result1[arg2], arg3)
	return true, any_GetData_result1[arg2]
end
function module_upvr_2.GetData(arg1) -- Line 630
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	return module_upvr_2.PlayerData[arg1]
end
local tbl_7_upvw = {}
local tbl_13_upvw = {}
local function _(arg1, arg2) -- Line 644, Named "getImpressionKey"
	return string.format("%s:%s", arg1.UserId, arg2)
end
local tbl_10_upvr = {}
local function AddImpressionToQueue_upvr(arg1, arg2) -- Line 648, Named "AddImpressionToQueue"
	--[[ Upvalues[2]:
		[1]: tbl_10_upvr (readonly)
		[2]: tbl_7_upvw (read and write)
	]]
	if not tbl_10_upvr[string.format("%s:%s", arg1.UserId, arg2)] then
		local var144 = tbl_7_upvw[arg1.UserId]
		if not var144 then
			var144 = {}
		end
		tbl_7_upvw[arg1.UserId] = var144
		table.insert(tbl_7_upvw[arg1.UserId], arg2)
		tbl_10_upvr[string.format("%s:%s", arg1.UserId, arg2)] = true
		return true
	end
	return false
end
local tbl_9_upvr = {}
local function AddTryOnToQueue_upvr(arg1, arg2) -- Line 661, Named "AddTryOnToQueue"
	--[[ Upvalues[2]:
		[1]: tbl_9_upvr (readonly)
		[2]: tbl_13_upvw (read and write)
	]]
	if not tbl_9_upvr[string.format("%s:%s", arg1.UserId, arg2)] then
		local var146 = tbl_13_upvw[arg1.UserId]
		if not var146 then
			var146 = {}
		end
		tbl_13_upvw[arg1.UserId] = var146
		table.insert(tbl_13_upvw[arg1.UserId], arg2)
		tbl_9_upvr[string.format("%s:%s", arg1.UserId, arg2)] = true
		return true
	end
	return false
end
local function ProcessImpressionsQueue_upvr(arg1, arg2) -- Line 678, Named "ProcessImpressionsQueue"
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: BatchHTTP_upvr (readonly)
	]]
	local tbl_2 = {}
	local tbl_8 = {}
	for i_5, v_5 in pairs(arg1) do
		table.insert(tbl_2, {
			viewer = i_5;
			outfits = v_5;
		})
	end
	for i_6, v_6 in pairs(arg2) do
		table.insert(tbl_8, {
			viewer = i_6;
			outfits = v_6;
		})
	end
	if 0 < #tbl_2 + #tbl_8 then
		Utils_upvr.pprint("Outfit impressions:", tbl_2)
		Utils_upvr.pprint("Outfit try ons:", tbl_8)
		i_6 = {}
		i_6.impressions = tbl_2
		i_6.try_ons = tbl_8
		local _, _ = BatchHTTP_upvr.request("POST", "/catalog/outfits/record-stats", i_6)
	end
end
local function _() -- Line 706, Named "startReportingImpressions"
	--[[ Upvalues[6]:
		[1]: Utils_upvr (readonly)
		[2]: tbl_7_upvw (read and write)
		[3]: tbl_13_upvw (read and write)
		[4]: var16_upvw (read and write)
		[5]: Promise_upvr (readonly)
		[6]: ProcessImpressionsQueue_upvr (readonly)
	]]
	task.spawn(function() -- Line 707
		--[[ Upvalues[6]:
			[1]: Utils_upvr (copied, readonly)
			[2]: tbl_7_upvw (copied, read and write)
			[3]: tbl_13_upvw (copied, read and write)
			[4]: var16_upvw (copied, read and write)
			[5]: Promise_upvr (copied, readonly)
			[6]: ProcessImpressionsQueue_upvr (copied, readonly)
		]]
		while true do
			task.wait(20)
			tbl_7_upvw = {}
			tbl_13_upvw = {}
			if not var16_upvw then
				Promise_upvr.try(ProcessImpressionsQueue_upvr, Utils_upvr.deepCopy(tbl_7_upvw), Utils_upvr.deepCopy(tbl_13_upvw)):await()
			end
		end
	end)
end
local var168_upvw
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage").BloxbizRemotes
local var170_upvw
local var171_upvw
local var172_upvw
local var173_upvw
local var174_upvw
local var175_upvw
local var176_upvw
local var177_upvw
local var178_upvw
local var179_upvw
function module_upvr_2.Init() -- Line 723
	--[[ Upvalues[32]:
		[1]: var168_upvw (read and write)
		[2]: AddImpressionToQueue_upvr (readonly)
		[3]: BloxbizRemotes_upvr (readonly)
		[4]: var170_upvw (read and write)
		[5]: AddTryOnToQueue_upvr (readonly)
		[6]: Utils_upvr (readonly)
		[7]: tbl_7_upvw (read and write)
		[8]: tbl_13_upvw (read and write)
		[9]: var16_upvw (read and write)
		[10]: Promise_upvr (readonly)
		[11]: ProcessImpressionsQueue_upvr (readonly)
		[12]: var171_upvw (read and write)
		[13]: GetFeeds_upvr (readonly)
		[14]: var172_upvw (read and write)
		[15]: OnLoadOutfits_upvr (readonly)
		[16]: var173_upvw (read and write)
		[17]: OnGetAllFeed_upvr (readonly)
		[18]: var174_upvw (read and write)
		[19]: OnCreateFeed_upvr (readonly)
		[20]: var175_upvw (read and write)
		[21]: OnGetFeed_upvr (readonly)
		[22]: var176_upvw (read and write)
		[23]: OnFeedAction_upvr (readonly)
		[24]: var177_upvw (read and write)
		[25]: OnRequestData_upvr (readonly)
		[26]: var178_upvw (read and write)
		[27]: OnBoostAction_upvr (readonly)
		[28]: var179_upvw (read and write)
		[29]: OnRequestFeedEnabled_upvr (readonly)
		[30]: var9_upvw (read and write)
		[31]: Players_upvr (readonly)
		[32]: module_upvr_2 (readonly)
	]]
	var168_upvw = Instance.new("RemoteFunction")
	var168_upvw.Name = "CatalogOnImpression"
	var168_upvw.OnServerInvoke = AddImpressionToQueue_upvr
	var168_upvw.Parent = BloxbizRemotes_upvr
	var170_upvw = Instance.new("RemoteFunction")
	var170_upvw.Name = "CatalogOnTryOn"
	var170_upvw.OnServerInvoke = AddTryOnToQueue_upvr
	var170_upvw.Parent = BloxbizRemotes_upvr
	task.spawn(function() -- Line 707
		--[[ Upvalues[6]:
			[1]: Utils_upvr (copied, readonly)
			[2]: tbl_7_upvw (copied, read and write)
			[3]: tbl_13_upvw (copied, read and write)
			[4]: var16_upvw (copied, read and write)
			[5]: Promise_upvr (copied, readonly)
			[6]: ProcessImpressionsQueue_upvr (copied, readonly)
		]]
		while true do
			task.wait(20)
			tbl_7_upvw = {}
			tbl_13_upvw = {}
			if not var16_upvw then
				Promise_upvr.try(ProcessImpressionsQueue_upvr, Utils_upvr.deepCopy(tbl_7_upvw), Utils_upvr.deepCopy(tbl_13_upvw)):await()
			end
		end
	end)
	var171_upvw = Instance.new("RemoteFunction")
	var171_upvw.Name = "CatalogOnGetFeeds"
	var171_upvw.OnServerInvoke = GetFeeds_upvr
	var171_upvw.Parent = BloxbizRemotes_upvr
	var172_upvw = Instance.new("RemoteFunction")
	var172_upvw.Name = "CatalogOnLoadOutfits"
	var172_upvw.OnServerInvoke = OnLoadOutfits_upvr
	var172_upvw.Parent = BloxbizRemotes_upvr
	var173_upvw = Instance.new("RemoteFunction")
	var173_upvw.Name = "CatalogOnGetAllFeed"
	var173_upvw.OnServerInvoke = OnGetAllFeed_upvr
	var173_upvw.Parent = BloxbizRemotes_upvr
	var174_upvw = Instance.new("RemoteFunction")
	var174_upvw.Name = "CatalogOnCreateFeed"
	var174_upvw.OnServerInvoke = OnCreateFeed_upvr
	var174_upvw.Parent = BloxbizRemotes_upvr
	var175_upvw = Instance.new("RemoteFunction")
	var175_upvw.Name = "CatalogOnGetFeed"
	var175_upvw.OnServerInvoke = OnGetFeed_upvr
	var175_upvw.Parent = BloxbizRemotes_upvr
	var176_upvw = Instance.new("RemoteFunction")
	var176_upvw.Name = "CatalogOnFeedAction"
	var176_upvw.OnServerInvoke = OnFeedAction_upvr
	var176_upvw.Parent = BloxbizRemotes_upvr
	var177_upvw = Instance.new("RemoteFunction")
	var177_upvw.Name = "CatalogOnRequestData"
	var177_upvw.OnServerInvoke = OnRequestData_upvr
	var177_upvw.Parent = BloxbizRemotes_upvr
	var178_upvw = Instance.new("RemoteFunction")
	var178_upvw.Name = "CatalogOnBoostFeed"
	var178_upvw.OnServerInvoke = OnBoostAction_upvr
	var178_upvw.Parent = BloxbizRemotes_upvr
	var179_upvw = Instance.new("RemoteFunction")
	var179_upvw.Name = "CatalogOnRequestPermissionRemote"
	var179_upvw.OnServerInvoke = OnRequestFeedEnabled_upvr
	var179_upvw.Parent = BloxbizRemotes_upvr
	var9_upvw = Instance.new("RemoteEvent")
	var9_upvw.Name = "CatalogOnBoostResult"
	var9_upvw.Parent = BloxbizRemotes_upvr
	Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 789
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (copied, readonly)
		]]
		module_upvr_2.LoadData(arg1)
	end)
	Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 793
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (copied, readonly)
		]]
		module_upvr_2.SaveData(arg1, 5)
		module_upvr_2.PlayerData[arg1] = nil
	end)
	for _, v_7 in pairs(Players_upvr:GetPlayers()) do
		if not module_upvr_2.PlayerData[v_7] then
			module_upvr_2.LoadData(v_7)
		end
	end
	OnRequestFeedEnabled_upvr()
end
return module_upvr_2