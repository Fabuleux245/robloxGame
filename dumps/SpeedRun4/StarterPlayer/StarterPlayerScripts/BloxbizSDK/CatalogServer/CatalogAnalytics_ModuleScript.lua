-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:49
-- Luau version 6, Types version 3
-- Time taken: 0.002488 seconds

local module = {}
local AdRequestStats_upvr = require(script.Parent.Parent.AdRequestStats)
local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
local Utils_upvr = require(script.Parent.Parent.Utils)
local function queueCatalogOpened_upvr(arg1) -- Line 11, Named "queueCatalogOpened"
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: BatchHTTP_upvr (readonly)
	]]
	table.insert(BatchHTTP_upvr.eventQueue, {
		event_type = "catalog_opened";
		data = Utils_upvr.merge(AdRequestStats_upvr:getPlayerStatsWithClientStatsYielding(arg1), Utils_upvr.merge({
			timestamp = os.time();
		}, AdRequestStats_upvr:getGameStats()));
	})
end
local function queueItemTryOn_upvr(arg1, arg2, arg3, arg4) -- Line 23, Named "queueItemTryOn"
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: BatchHTTP_upvr (readonly)
	]]
	local tbl = {}
	tbl.item_id = arg2
	tbl.asset_name = arg3
	tbl.item_category = arg4
	tbl.timestamp = os.time()
	table.insert(BatchHTTP_upvr.eventQueue, {
		event_type = "item_try_on";
		data = Utils_upvr.merge(AdRequestStats_upvr:getPlayerStatsWithClientStatsYielding(arg1), Utils_upvr.merge(tbl, AdRequestStats_upvr:getGameStats()));
	})
end
local function queueCategoryOpened_upvr(arg1, arg2) -- Line 38, Named "queueCategoryOpened"
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: BatchHTTP_upvr (readonly)
	]]
	local tbl_2 = {}
	tbl_2.category = arg2
	tbl_2.timestamp = os.time()
	table.insert(BatchHTTP_upvr.eventQueue, {
		event_type = "category_opened";
		data = Utils_upvr.merge(AdRequestStats_upvr:getPlayerStatsWithClientStatsYielding(arg1), Utils_upvr.merge(tbl_2, AdRequestStats_upvr:getGameStats()));
	})
end
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage").BloxbizRemotes
function module.init() -- Line 51
	--[[ Upvalues[4]:
		[1]: BloxbizRemotes_upvr (readonly)
		[2]: queueCatalogOpened_upvr (readonly)
		[3]: queueItemTryOn_upvr (readonly)
		[4]: queueCategoryOpened_upvr (readonly)
	]]
	local RemoteEvent_3 = Instance.new("RemoteEvent")
	RemoteEvent_3.Name = "CatalogOpenedEvent"
	RemoteEvent_3.Parent = BloxbizRemotes_upvr
	RemoteEvent_3.OnServerEvent:Connect(function(arg1) -- Line 56
		--[[ Upvalues[1]:
			[1]: queueCatalogOpened_upvr (copied, readonly)
		]]
		queueCatalogOpened_upvr(arg1)
	end)
	local RemoteEvent_2 = Instance.new("RemoteEvent")
	RemoteEvent_2.Name = "CatalogItemTryOnEvent"
	RemoteEvent_2.Parent = BloxbizRemotes_upvr
	RemoteEvent_2.OnServerEvent:Connect(function(arg1, arg2, arg3, arg4) -- Line 65
		--[[ Upvalues[1]:
			[1]: queueItemTryOn_upvr (copied, readonly)
		]]
		queueItemTryOn_upvr(arg1, arg2, arg3, arg4)
	end)
	local RemoteEvent = Instance.new("RemoteEvent")
	RemoteEvent.Name = "CatalogCategoryOpenedEvent"
	RemoteEvent.Parent = BloxbizRemotes_upvr
	RemoteEvent.OnServerEvent:Connect(function(arg1, arg2) -- Line 74
		--[[ Upvalues[1]:
			[1]: queueCategoryOpened_upvr (copied, readonly)
		]]
		queueCategoryOpened_upvr(arg1, arg2)
	end)
end
return module