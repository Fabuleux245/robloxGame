-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:54
-- Luau version 6, Types version 3
-- Time taken: 0.003826 seconds

local RunService = game:GetService("RunService")
local module = {}
local function registerEventHelper_upvr(arg1, arg2, arg3, arg4) -- Line 20, Named "registerEventHelper"
	local AdRequestStats = require(script.Parent.AdRequestStats)
	local Utils = require(script.Parent.Utils)
	if type(arg1) ~= "string" then
		Utils.pprint("[Super Biz] Invalid type for eventName when registering custom event, must be string")
	else
		if type(arg2) ~= "number" then
			Utils.pprint("[Super Biz] Invalid type for eventValue when registering custom event, must be number")
			return
		end
		if type(arg3) ~= "number" then
			Utils.pprint("[Super Biz] Invalid type for playerId when registering custom event, must be number")
			return
		end
		if arg4 and type(arg4) ~= "number" then
			Utils.pprint("[Super Biz] Invalid type for ad id when registering custom event, must be number")
			return
		end
		local tbl_2 = {}
		tbl_2.metric_name = arg1
		tbl_2.metric_value = arg2
		tbl_2.player_id = arg3
		tbl_2.timestamp = os.time()
		tbl_2.bloxbiz_ad_id = arg4
		local tbl = {}
		tbl.UserId = arg3
		local any_getPlayerStatsWithClientStatsYielding_result1 = AdRequestStats:getPlayerStatsWithClientStatsYielding(tbl)
		if type(any_getPlayerStatsWithClientStatsYielding_result1) ~= "table" then
			Utils.pprint("[Super Biz] Player data was not available when registering custom event for", arg3)
			return
		end
		table.insert(require(script.Parent.BatchHTTP).eventQueue, {
			event_type = "custom_metric";
			data = Utils.merge(Utils.merge(tbl_2, AdRequestStats:getGameStats()), any_getPlayerStatsWithClientStatsYielding_result1);
		})
	end
end
if RunService:IsServer() then
	function module.dynamicLoadBillboardAd(arg1) -- Line 64
		require(script.Parent.BillboardServer):initInstance(arg1, true)
	end
	function module.dynamicLoadBoxAd(arg1) -- Line 69
		require(script.Parent.Ad3DServer).new(arg1, true)
	end
	function module.dynamicLoadPortalAd(arg1) -- Line 74
		require(script.Parent.PortalServer).new(arg1, true)
	end
	function module.registerEvent(...) -- Line 79
		--[[ Upvalues[1]:
			[1]: registerEventHelper_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var9_upvw, _, _ = ...
		local args_list = {...}
		if #args_list == 2 then
			var9_upvw = args_list[1]
		end
		local const_number_upvw = 1
		local _2_upvw = args_list[2]
		task.spawn(function() -- Line 87
			--[[ Upvalues[4]:
				[1]: registerEventHelper_upvr (copied, readonly)
				[2]: var9_upvw (read and write)
				[3]: const_number_upvw (read and write)
				[4]: _2_upvw (read and write)
			]]
			registerEventHelper_upvr(var9_upvw, const_number_upvw, _2_upvw)
		end)
	end
	function module.registerEventForAd(...) -- Line 92
		--[[ Upvalues[1]:
			[1]: registerEventHelper_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var16_upvw, _, _, _ = ...
		local args_list_2 = {...}
		if #args_list_2 == 3 then
			var16_upvw = args_list_2[1]
		end
		local const_number_upvw_2 = 1
		local _2_upvw_2 = args_list_2[2]
		local _3_upvw = args_list_2[3]
		task.spawn(function() -- Line 100
			--[[ Upvalues[5]:
				[1]: registerEventHelper_upvr (copied, readonly)
				[2]: var16_upvw (read and write)
				[3]: const_number_upvw_2 (read and write)
				[4]: _2_upvw_2 (read and write)
				[5]: _3_upvw (read and write)
			]]
			registerEventHelper_upvr(var16_upvw, const_number_upvw_2, _2_upvw_2, _3_upvw)
		end)
	end
	function module.registerPopUpAd(arg1, arg2) -- Line 105
		return require(script.PopUpAdHelper).new(arg1, arg2)
	end
	module.PromoCodes = require(script.Parent.PromoCodes.Server)
	module.Rewards = require(script.Parent.Rewards.Server)
	return module
end
if RunService:IsClient() then
	local CatalogClient_upvr = require(script.Parent.CatalogClient)
	local PopfeedClient_upvr = require(script.Parent.PopfeedClient)
	function module.openCatalog(arg1) -- Line 119
		--[[ Upvalues[1]:
			[1]: CatalogClient_upvr (readonly)
		]]
		CatalogClient_upvr.OpenCatalog(arg1)
	end
	module.catalogEnabled = CatalogClient_upvr.Enabled
	function module.closeCatalog() -- Line 125
		--[[ Upvalues[1]:
			[1]: CatalogClient_upvr (readonly)
		]]
		CatalogClient_upvr.CloseCatalog()
	end
	function module.toggleCatalog(arg1) -- Line 129
		--[[ Upvalues[1]:
			[1]: CatalogClient_upvr (readonly)
		]]
		CatalogClient_upvr.ToggleCatalog(arg1)
	end
	function module.getCatalogIcon() -- Line 133
		--[[ Upvalues[1]:
			[1]: CatalogClient_upvr (readonly)
		]]
		CatalogClient_upvr.getCatalogIcon()
	end
	function module.promptBuyOutfit() -- Line 137
		--[[ Upvalues[1]:
			[1]: CatalogClient_upvr (readonly)
		]]
		CatalogClient_upvr.PromptBuyOutfit()
	end
	function module.getCatalogContainer() -- Line 141
		--[[ Upvalues[1]:
			[1]: CatalogClient_upvr (readonly)
		]]
		CatalogClient_upvr.getCatalogContainer()
	end
	function module.openPopfeed() -- Line 145
		--[[ Upvalues[1]:
			[1]: PopfeedClient_upvr (readonly)
		]]
		PopfeedClient_upvr.OpenPopfeed()
	end
	function module.closePopfeed() -- Line 149
		--[[ Upvalues[1]:
			[1]: PopfeedClient_upvr (readonly)
		]]
		PopfeedClient_upvr.ClosePopfeed()
	end
	function module.togglePopfeed() -- Line 153
		--[[ Upvalues[1]:
			[1]: PopfeedClient_upvr (readonly)
		]]
		PopfeedClient_upvr.TogglePopfeed()
	end
	module.PromoCodes = require(script.Parent.PromoCodes.Client)
end
return module