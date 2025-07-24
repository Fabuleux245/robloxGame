-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:14
-- Luau version 6, Types version 3
-- Time taken: 0.003481 seconds

local AdRequestStats_upvr = require(script.Parent.Parent.AdRequestStats)
local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
local merge_upvr = require(script.Parent.Parent.Utils).merge
local module_upvr = {
	lastPlayerOpenedTime = {};
}
local function _(arg1) -- Line 15, Named "queueItemTryOn"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl = {
		event_type = "popup_shop_try_on";
	}
	tbl.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl)
end
local function _(arg1) -- Line 20, Named "queueShopOpen"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl_2 = {
		event_type = "popup_shop_open";
	}
	tbl_2.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl_2)
end
function module_upvr.onItemTryOn(arg1, arg2, arg3) -- Line 25
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
		[3]: BatchHTTP_upvr (readonly)
	]]
	local var3_result1 = merge_upvr(merge_upvr({
		bloxbiz_ad_id = arg3.bloxbizAdId;
		item_id = arg3.itemId;
		asset_name = arg3.assetName;
		item_category = arg3.itemCategory;
		timestamp = os.time();
	}, AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStatsWithClientStatsYielding(arg2))
	table.insert(BatchHTTP_upvr.eventQueue, {
		event_type = "popup_shop_try_on";
		data = var3_result1;
	})
	return var3_result1
end
function module_upvr.onPopUpShopOpened(arg1, arg2, arg3) -- Line 43
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not module_upvr.lastPlayerOpenedTime[arg2] then
		module_upvr.lastPlayerOpenedTime[arg2] = {}
	end
	module_upvr.lastPlayerOpenedTime[arg2][arg3.bloxbizAdId] = tick()
end
function module_upvr.onPopUpShopClosed(arg1, arg2, arg3) -- Line 55
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: merge_upvr (readonly)
		[4]: BatchHTTP_upvr (readonly)
	]]
	if not module_upvr.lastPlayerOpenedTime[arg2] then
	else
		local var10 = module_upvr.lastPlayerOpenedTime[arg2]
		local bloxbizAdId = arg3.bloxbizAdId
		local var12 = var10[bloxbizAdId]
		if var12 then
			var10[bloxbizAdId] = nil
			local merge_upvr_result1 = merge_upvr(merge_upvr({
				bloxbiz_ad_id = bloxbizAdId;
				time_spent = tick() - var12;
				timestamp = os.time();
			}, AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStatsWithClientStatsYielding(arg2))
			table.insert(BatchHTTP_upvr.eventQueue, {
				event_type = "popup_shop_open";
				data = merge_upvr_result1;
			})
			return merge_upvr_result1
		end
	end
end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local RateLimiter_upvr = require(script.Parent.Parent.Utils.RateLimiter)
local Players_upvr = game:GetService("Players")
function module_upvr.connectToEvents(arg1) -- Line 85
	--[[ Upvalues[4]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: RateLimiter_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes"):WaitForChild("PopUpShopEvent").OnServerEvent:Connect(function(arg1_2, arg2, arg3) -- Line 89
		--[[ Upvalues[2]:
			[1]: RateLimiter_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if RateLimiter_upvr:checkRateLimiting(arg1_2) then
		else
			if arg2 == "ItemTryOn" then
				arg1:onItemTryOn(arg1_2, arg3)
				return
			end
			if arg2 == "PopUpShopOpened" then
				arg1:onPopUpShopOpened(arg1_2, arg3)
				return
			end
			if arg2 == "PopUpShopClosed" then
				arg1:onPopUpShopClosed(arg1_2, arg3)
			end
		end
	end)
	Players_upvr.PlayerRemoving:Connect(function(arg1_3) -- Line 103
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		if module_upvr.lastPlayerOpenedTime[arg1_3] then
			module_upvr.lastPlayerOpenedTime[arg1_3] = nil
		end
	end)
end
function module_upvr.init() -- Line 110
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:connectToEvents()
end
return module_upvr