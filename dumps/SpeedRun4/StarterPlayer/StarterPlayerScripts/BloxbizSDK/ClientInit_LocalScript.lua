-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:55
-- Luau version 6, Types version 3
-- Time taken: 0.004933 seconds

local BillboardClient_upvr = script.Parent.BillboardClient
local var1_2_upvr = require(BillboardClient_upvr)
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local BloxbizRemotes = game.ReplicatedStorage:WaitForChild("BloxbizRemotes")
local function initClientInstance_upvr(arg1) -- Line 23, Named "initClientInstance"
	--[[ Upvalues[1]:
		[1]: BillboardClient_upvr (readonly)
	]]
	task.spawn(function() -- Line 24
		--[[ Upvalues[2]:
			[1]: BillboardClient_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local clone = BillboardClient_upvr:Clone()
		clone.Parent = script.Parent
		require(clone):initAd(arg1)
	end)
end
local function clientLogsRequested_upvr(arg1) -- Line 33, Named "clientLogsRequested"
	local module = {}
	local any_GetLogHistory_result1 = game:GetService("LogService"):GetLogHistory()
	local len = #any_GetLogHistory_result1
	for i = arg1, 1, -1 do
		table.insert(module, any_GetLogHistory_result1[len - i + 1])
	end
	return module
end
local NewAdEvent_upvr = BloxbizRemotes:WaitForChild("NewAdEvent")
local getClientLogs_upvr = BloxbizRemotes:WaitForChild("getClientLogs")
local PreloadAdsEvent_upvr = BloxbizRemotes:WaitForChild("PreloadAdsEvent")
local getSubscriptionProductInfo_upvr = BloxbizRemotes:WaitForChild("getSubscriptionProductInfo")
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local getSubsetClientPlayerStats_upvr = BloxbizRemotes:WaitForChild("getSubsetClientPlayerStats")
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
local Update3DAdEvent_upvr = BloxbizRemotes:WaitForChild("Update3DAdEvent")
local Ad3DClient_upvr = require(script.Parent.Ad3DClient)
local UpdatePortalEvent_upvr = BloxbizRemotes:WaitForChild("UpdatePortalEvent")
local PortalClient_upvr = require(script.Parent.PortalClient)
local any_read_result1_upvr = ConfigReader_upvr:read("Ads")
;(function() -- Line 47, Named "initClientEvents"
	--[[ Upvalues[14]:
		[1]: NewAdEvent_upvr (readonly)
		[2]: initClientInstance_upvr (readonly)
		[3]: getClientLogs_upvr (readonly)
		[4]: clientLogsRequested_upvr (readonly)
		[5]: var1_2_upvr (readonly)
		[6]: PreloadAdsEvent_upvr (readonly)
		[7]: getSubscriptionProductInfo_upvr (readonly)
		[8]: MarketplaceService_upvr (readonly)
		[9]: getSubsetClientPlayerStats_upvr (readonly)
		[10]: AdRequestStats_upvr (readonly)
		[11]: Update3DAdEvent_upvr (readonly)
		[12]: Ad3DClient_upvr (readonly)
		[13]: UpdatePortalEvent_upvr (readonly)
		[14]: PortalClient_upvr (readonly)
	]]
	NewAdEvent_upvr.OnClientEvent:Connect(initClientInstance_upvr)
	getClientLogs_upvr.OnClientInvoke = clientLogsRequested_upvr
	game.Players.LocalPlayer.Idled:Connect(function(arg1) -- Line 51
		--[[ Upvalues[1]:
			[1]: var1_2_upvr (copied, readonly)
		]]
		var1_2_upvr:sendUserIdling(arg1)
	end)
	PreloadAdsEvent_upvr.OnClientEvent:Connect(function(arg1) -- Line 55
		--[[ Upvalues[1]:
			[1]: var1_2_upvr (copied, readonly)
		]]
		var1_2_upvr:preloadList(arg1)
	end)
	function getSubscriptionProductInfo_upvr.OnClientInvoke(arg1) -- Line 59
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (copied, readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 60
			--[[ Upvalues[2]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return MarketplaceService_upvr:GetSubscriptionProductInfoAsync(arg1)
		end)
		return pcall_result1, pcall_result2
	end
	function getSubsetClientPlayerStats_upvr.OnClientInvoke() -- Line 67
		--[[ Upvalues[1]:
			[1]: AdRequestStats_upvr (copied, readonly)
		]]
		return AdRequestStats_upvr:getSubsetClientPlayerStats()
	end
	Update3DAdEvent_upvr.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 71
		--[[ Upvalues[1]:
			[1]: Ad3DClient_upvr (copied, readonly)
		]]
		if arg1 == "Construct" then
			Ad3DClient_upvr.init(arg2, arg3)
		end
	end)
	UpdatePortalEvent_upvr.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 77
		--[[ Upvalues[1]:
			[1]: PortalClient_upvr (copied, readonly)
		]]
		if arg1 == "Construct" then
			PortalClient_upvr.init(arg2, arg3)
		end
	end)
end)()
;(function() -- Line 84, Named "initAdModels"
	--[[ Upvalues[3]:
		[1]: any_read_result1_upvr (readonly)
		[2]: BillboardClient_upvr (readonly)
		[3]: var1_2_upvr (readonly)
	]]
	if require(script.Parent.ConfigReader.AssertConfigAdUnits)() then
	else
		for _, v in ipairs(any_read_result1_upvr) do
			if type(v) == "table" then
				v = v.partInstance
			end
			local any_GetFullName_result1_upvr = v:GetFullName()
			task.spawn(function() -- Line 24
				--[[ Upvalues[2]:
					[1]: BillboardClient_upvr (copied, readonly)
					[2]: any_GetFullName_result1_upvr (readonly)
				]]
				local clone_2 = BillboardClient_upvr:Clone()
				clone_2.Parent = script.Parent
				require(clone_2):initAd(any_GetFullName_result1_upvr)
			end)
		end
		var1_2_upvr:sendNewPlayer()
	end
end)()
task.spawn(function() -- Line 101, Named "initSalesMeasurement"
	--[[ Upvalues[1]:
		[1]: ConfigReader_upvr (readonly)
	]]
	if ConfigReader_upvr:read("SalesMeasurement") then
		require(script.Parent.TrackMonetization.TrackMonetizationClient)
	end
end)
task.spawn(function() -- Line 107, Named "initCatalog"
	--[[ Upvalues[1]:
		[1]: ConfigReader_upvr (readonly)
	]]
	if ConfigReader_upvr:read("CatalogEnabled") then
		require(script.Parent.CatalogClient).Init()
	end
end)
task.spawn(function() -- Line 114, Named "initScreenshotTool"
	require(script.Parent.ScreenshotTool).init()
end)
task.spawn(function() -- Line 119, Named "initPopfeed"
	--[[ Upvalues[1]:
		[1]: ConfigReader_upvr (readonly)
	]]
	if not ConfigReader_upvr:read("PopfeedEnabled") then
	else
		require(script.Parent.PopfeedClient).init()
	end
end)
task.spawn(function() -- Line 128, Named "initGuiTracking"
	require(script.Parent.GuiTrackingClient).init()
end)