-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:21
-- Luau version 6, Types version 3
-- Time taken: 0.014981 seconds

local module_3_upvr = {
	adPart = nil;
	eventConnection = nil;
	updateAdEvent = nil;
	CentralBillboardServer = nil;
	BillboardServerInstances = {};
	deleted = false;
	teleportedPlayers = {};
}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local BatchHTTP_upvr = require(script.Parent.BatchHTTP)
local Utils_upvr = require(script.Parent.Utils)
local merge_upvr = Utils_upvr.merge
local RateLimiter_upvr = require(script.Parent.Utils.RateLimiter)
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local InternalConfig = require(script.Parent.InternalConfig)
local PRINT_DEBUG_STATEMENTS_upvr = InternalConfig.PRINT_DEBUG_STATEMENTS
local PRINT_IMPRESSIONS_upvr = InternalConfig.PRINT_IMPRESSIONS
local AnalyticsDataStoreQueue_upvr = require(script.Parent.AnalyticsDataStoreQueue)
local PlayerAnalyticsHistory_upvr = require(script.Parent.AnalyticsDataStoreQueue.PlayerAnalyticsHistory)
local function queueImpressionDataStore_upvr(arg1, arg2) -- Line 30, Named "queueImpressionDataStore"
	--[[ Upvalues[2]:
		[1]: AnalyticsDataStoreQueue_upvr (readonly)
		[2]: PlayerAnalyticsHistory_upvr (readonly)
	]]
	if arg2 == "video" then
	else
		local bloxbiz_ad_id_2 = arg1.bloxbiz_ad_id
		local any_getValidExposureTime_result1 = require(script.Parent.AdFilter).FrequencyCapper:getValidExposureTime(arg1)
		AnalyticsDataStoreQueue_upvr:queueChange(bloxbiz_ad_id_2, "exposure_time", any_getValidExposureTime_result1)
		if 1 <= any_getValidExposureTime_result1 then
			AnalyticsDataStoreQueue_upvr:queueChange(bloxbiz_ad_id_2, "impressions", 1)
			local any_getPlayerHistory_result1 = PlayerAnalyticsHistory_upvr:getPlayerHistory(arg1.player_id)
			if not any_getPlayerHistory_result1.billboardReach[tostring(bloxbiz_ad_id_2)] then
				any_getPlayerHistory_result1.billboardReach[tostring(bloxbiz_ad_id_2)] = true
				AnalyticsDataStoreQueue_upvr:queueChange(bloxbiz_ad_id_2, "reach", 1)
			end
		end
	end
end
local function _(arg1) -- Line 53, Named "queueImpressionHttp"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl_5 = {
		event_type = "exposure";
	}
	tbl_5.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl_5)
end
local function queueVideoPlay_upvr(arg1, arg2) -- Line 58, Named "queueVideoPlay"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl = {
		event_type = "video_event";
	}
	tbl.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl)
	local FrequencyCapper = require(script.Parent.AdFilter).FrequencyCapper
	if arg2 == "cpv" then
		FrequencyCapper:RecordExposureForXSecVideoPlays(arg1, 2)
	elseif arg2 == "video_plays_cpm" then
		FrequencyCapper:RecordExposureForXSecVideoPlays(arg1, 0)
	end
end
local function _(arg1) -- Line 72, Named "queueInteraction"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl_3 = {
		event_type = "interaction";
	}
	tbl_3.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl_3)
end
local function _(arg1) -- Line 77, Named "queueError"
	--[[ Upvalues[2]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: BatchHTTP_upvr (readonly)
	]]
	local any_getGameStats_result1 = AdRequestStats_upvr:getGameStats()
	local tbl_6 = {
		timestamp = os.time();
		game = any_getGameStats_result1;
	}
	tbl_6.error_msg = arg1
	table.insert(BatchHTTP_upvr.eventQueue, {
		event_type = "error";
		game = any_getGameStats_result1;
		error = tbl_6;
	})
end
local function impressionFired_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) -- Line 85, Named "impressionFired"
	--[[ Upvalues[7]:
		[1]: RateLimiter_upvr (readonly)
		[2]: PRINT_DEBUG_STATEMENTS_upvr (readonly)
		[3]: PRINT_IMPRESSIONS_upvr (readonly)
		[4]: module_3_upvr (readonly)
		[5]: Utils_upvr (readonly)
		[6]: queueImpressionDataStore_upvr (readonly)
		[7]: BatchHTTP_upvr (readonly)
	]]
	if not arg10 and arg5.Parent == nil then
	else
		if RateLimiter_upvr:checkRateLimiting(arg1) then return end
		if PRINT_DEBUG_STATEMENTS_upvr or PRINT_IMPRESSIONS_upvr then
			if arg5.Name then
				print("[SuperBiz] "..arg5.Name.." Exposure for "..string.format("%.2f", arg7).." seconds ("..arg4..')')
			elseif arg5.part_name then
				print("[SuperBiz] Local part ad "..arg5.part_name.." Exposure for "..string.format("%.2f", arg7).." seconds ("..arg4..')')
			end
		end
		local any_getImpressionStats_result1 = module_3_upvr:getImpressionStats(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
		local any_getAdUsingBloxbizAdId_result1 = Utils_upvr.getAdUsingBloxbizAdId(arg4)
		if any_getAdUsingBloxbizAdId_result1 and any_getAdUsingBloxbizAdId_result1.analytics_protocol == "datastore" then
			queueImpressionDataStore_upvr(any_getImpressionStats_result1, arg11)
		else
			table.insert(BatchHTTP_upvr.eventQueue, {
				event_type = "exposure";
				data = any_getImpressionStats_result1;
			})
		end
		if arg11 ~= "video" then
			require(script.Parent.AdFilter).FrequencyCapper:RecordExposureFor10SecImpressions(any_getImpressionStats_result1)
		end
	end
end
local function videoPlayedFired_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 146, Named "videoPlayedFired"
	--[[ Upvalues[5]:
		[1]: RateLimiter_upvr (readonly)
		[2]: PRINT_DEBUG_STATEMENTS_upvr (readonly)
		[3]: PRINT_IMPRESSIONS_upvr (readonly)
		[4]: module_3_upvr (readonly)
		[5]: queueVideoPlay_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then return end
	if PRINT_DEBUG_STATEMENTS_upvr or PRINT_IMPRESSIONS_upvr then
		print("[SuperBiz] "..arg5.Name.." video play ended at "..string.format("%.2f", arg2.playEndSeconds).." seconds ("..arg4..')')
	end
	return queueVideoPlay_upvr(module_3_upvr:getVideoPlayStats(arg1, arg2, arg3, arg4, arg5, arg6), arg7)
end
local function sendPlayerAdsToPreload_upvr(arg1) -- Line 167, Named "sendPlayerAdsToPreload"
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	local tbl_2 = {}
	for _, v in ipairs(require(script.Parent.AdFilter):GetAllEnabledAds()) do
		if v.ad_format == "video" then
			table.insert(tbl_2, v.audio_url)
			for _, v_2 in ipairs(v.ad_url) do
				table.insert(tbl_2, v_2.ad_url)
			end
		end
	end
	ReplicatedStorage_upvr.BloxbizRemotes.PreloadAdsEvent:FireClient(arg1, tbl_2)
end
local function newPlayerFired_upvr(arg1) -- Line 186, Named "newPlayerFired"
	--[[ Upvalues[5]:
		[1]: RateLimiter_upvr (readonly)
		[2]: sendPlayerAdsToPreload_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: AdRequestStats_upvr (readonly)
		[5]: Utils_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then
	else
		pcall(function() -- Line 191
			--[[ Upvalues[2]:
				[1]: sendPlayerAdsToPreload_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			sendPlayerAdsToPreload_upvr(arg1)
		end)
		for _, v_4 in pairs(module_3_upvr.BillboardServerInstances) do
			if not v_4.deleted then
				table.insert({}, v_4)
				v_4:getAndSendAd(Utils_upvr.deepCopy({AdRequestStats_upvr:getPlayerStatsWithClientStatsYielding(arg1)}))
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_3_upvr.BillboardServerInstances = {}
	end
end
local function adInteractionFired_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, ...) -- Line 209, Named "adInteractionFired"
	--[[ Upvalues[4]:
		[1]: RateLimiter_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: merge_upvr (readonly)
		[4]: BatchHTTP_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then
	else
		local tbl_4 = {}
		tbl_4.interaction_type = arg2
		tbl_4.ad_url = arg4
		tbl_4.bloxbiz_ad_id = arg5
		tbl_4.timestamp = arg7
		if arg2 == "hover" then
			tbl_4.hover_time = ...
		elseif arg2 == "click" then
			tbl_4.hover_time = -1
		end
		table.insert(BatchHTTP_upvr.eventQueue, {
			event_type = "interaction";
			data = merge_upvr(merge_upvr(merge_upvr(merge_upvr(merge_upvr(tbl_4, AdRequestStats_upvr:getPartStats(arg6)), AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStats(arg1)), AdRequestStats_upvr:getGameLightingStats()), arg3);
		})
	end
end
function module_3_upvr.connectToEvents(arg1) -- Line 258
	--[[ Upvalues[5]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: impressionFired_upvr (readonly)
		[3]: videoPlayedFired_upvr (readonly)
		[4]: newPlayerFired_upvr (readonly)
		[5]: adInteractionFired_upvr (readonly)
	]]
	local BloxbizRemotes = ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes")
	BloxbizRemotes.ImpressionEvent.OnServerEvent:Connect(impressionFired_upvr)
	BloxbizRemotes.VideoPlayedEvent.OnServerEvent:Connect(videoPlayedFired_upvr)
	BloxbizRemotes.NewPlayerEvent.OnServerEvent:Connect(newPlayerFired_upvr)
	BloxbizRemotes.AdInteractionEvent.OnServerEvent:Connect(adInteractionFired_upvr)
end
function module_3_upvr.checkBillboard(arg1) -- Line 268
	local Size = arg1.adPart.Size
	if Size.X / Size.Y ~= 2 then
		warn("[Superbiz] Ad part "..arg1.adPart:GetFullName().." did not have a 2:1 size ratio")
	end
	if not arg1.adPart:FindFirstChild("AdSurfaceGui") then
		error("[SuperBiz] Ad part must have a SurfaceGui attached to it with the name 'AdSurfaceGui'")
	end
end
function module_3_upvr.getAdSizeRatio(arg1) -- Line 279
	return arg1.adPart.AdSurfaceGui.AbsoluteSize.Y / arg1.adPart.AdSurfaceGui.AbsoluteSize.X
end
function module_3_upvr.getDefaultAd(arg1) -- Line 286
	--[[ Upvalues[1]:
		[1]: ConfigReader_upvr (readonly)
	]]
	local var56
	if arg1:getAdSizeRatio() == 0.5 then
		var56 = ConfigReader_upvr:read("AdFallbackURL")
	else
		var56 = ConfigReader_upvr:read("AdFallbackURLVertical")
	end
	if #var56 == 0 then
		return {"blank"}
	end
	return {var56[math.random(1, #var56)]}
end
function module_3_upvr.setupBillboardGUI(arg1) -- Line 305
	local ImageLabel = arg1.adPart.AdSurfaceGui:FindFirstChild("ImageLabel")
	if ImageLabel == nil then
		ImageLabel = Instance.new("ImageLabel")
	end
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.ScaleType = Enum.ScaleType.Fit
	ImageLabel.Image = arg1:getDefaultAd()[1]
	ImageLabel.Parent = arg1.adPart.AdSurfaceGui
	local Frame = Instance.new("Frame", arg1.adPart.AdSurfaceGui)
	Frame.Name = "DisclaimerHolder"
	Frame.AnchorPoint = Vector2.new(1, 1)
	Frame.Size = UDim2.new(2, 0, 1, 0)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Frame.BackgroundTransparency = 1
	Frame.Position = UDim2.new(1, 0, 1, 0)
	Frame.BorderSizePixel = 0
	Frame.ZIndex = 2147483647
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	local ImageLabel_2 = Instance.new("ImageLabel", Frame)
	ImageLabel_2.Name = "AdDisclaimerLabel"
	ImageLabel_2.Image = "rbxassetid://7122215099"
	ImageLabel_2.ImageTransparency = 0.2
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.BorderSizePixel = 0
	ImageLabel_2.Size = UDim2.new(0.117, 0, 0.08, 0)
	ImageLabel_2.AnchorPoint = Vector2.new(1, 1)
	ImageLabel_2.Position = UDim2.new(1, 0, 1, 0)
	ImageLabel_2.ZIndex = 2147483647
	ImageLabel_2.Visible = false
end
function module_3_upvr.getImpressionStats(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) -- Line 344
	--[[ Upvalues[2]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
	]]
	local module = {}
	module.ad_url = arg4
	module.bloxbiz_ad_id = arg5
	module.timestamp = os.time()
	module.time_seen = arg8
	module.rays = arg9
	module.client_GUID = arg10
	local var63
	if not arg11 then
		var63 = AdRequestStats_upvr:getPartStats(arg6)
	else
		var63 = arg6
	end
	return merge_upvr(merge_upvr(merge_upvr(merge_upvr(merge_upvr(module, var63), AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStats(arg2)), AdRequestStats_upvr:getGameLightingStats()), arg3)
end
function module_3_upvr.getVideoPlayStats(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 382
	--[[ Upvalues[2]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
	]]
	local module_2 = {
		play_end_percentage = arg3.playEndPercentage;
		play_end_seconds = arg3.playEndSeconds;
		num_resumes = arg3.numResumes;
		audio_active_seconds = arg3.audioActiveSeconds;
		max_continuous_play_time = arg3.maxContinuousPlaytime;
	}
	module_2.bloxbiz_ad_id = arg5
	module_2.timestamp = os.time()
	module_2.client_GUID = arg7
	return merge_upvr(merge_upvr(merge_upvr(merge_upvr(merge_upvr(module_2, AdRequestStats_upvr:getPartStats(arg6)), AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStats(arg2)), AdRequestStats_upvr:getGameLightingStats()), arg4)
end
function module_3_upvr.isGifsEnabled(arg1) -- Line 405
	--[[ Upvalues[1]:
		[1]: ConfigReader_upvr (readonly)
	]]
	if arg1.gifsEnabledPartSetting ~= nil then
		return arg1.gifsEnabledPartSetting
	end
	return ConfigReader_upvr:read("GIFAdsDefault")
end
function module_3_upvr.isVideoEnabled(arg1) -- Line 413
	--[[ Upvalues[1]:
		[1]: ConfigReader_upvr (readonly)
	]]
	if arg1.videoEnabledPartSetting ~= nil then
		return arg1.videoEnabledPartSetting
	end
	return ConfigReader_upvr:read("VideoAdsDefault")
end
function module_3_upvr.getAdsStats(arg1, arg2) -- Line 421
	--[[ Upvalues[4]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
		[3]: ConfigReader_upvr (readonly)
		[4]: module_3_upvr (readonly)
	]]
	local var5_result1 = merge_upvr(merge_upvr(AdRequestStats_upvr:getGameStats(), AdRequestStats_upvr:getPartStats(arg1.adPart)), AdRequestStats_upvr:getGameLightingStats())
	var5_result1.blocklist = ConfigReader_upvr:read("AdBlocklistURL")
	var5_result1.gifs_enabled = module_3_upvr:isGifsEnabled()
	var5_result1.video_enabled = module_3_upvr:isVideoEnabled()
	var5_result1.players = arg2
	return var5_result1
end
function module_3_upvr.getAds(arg1, arg2) -- Line 435
	return require(script.Parent.AdFilter):GetAds(arg2)
end
local function _(arg1) -- Line 442, Named "formatAdBeforeSending"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	if arg1.ad_url[1] == "" then
		arg1.ad_url = module_3_upvr:getDefaultAd()
		arg1.ad_format = "static"
		arg1.gif_version = nil
		arg1.show_ad_disclaimer = false
	else
		arg1.show_ad_disclaimer = true
	end
	if not arg1.ad_disclaimer_url then
		arg1.ad_disclaimer_url = "rbxassetid://7122215099"
		arg1.ad_disclaimer_scale_x = 0.117
		arg1.ad_disclaimer_scale_y = 0.08
	end
end
local Players_upvr = game:GetService("Players")
function module_3_upvr.sendAd(arg1, arg2, arg3) -- Line 459
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg2)
	if any_GetPlayerByUserId_result1 then
		if arg3.ad_url[1] == "" then
			arg3.ad_url = module_3_upvr:getDefaultAd()
			arg3.ad_format = "static"
			arg3.gif_version = nil
			arg3.show_ad_disclaimer = false
		else
			arg3.show_ad_disclaimer = true
		end
		if not arg3.ad_disclaimer_url then
			arg3.ad_disclaimer_url = "rbxassetid://7122215099"
			arg3.ad_disclaimer_scale_x = 0.117
			arg3.ad_disclaimer_scale_y = 0.08
		end
		arg1.updateAdEvent:FireClient(any_GetPlayerByUserId_result1, arg3)
	end
end
function module_3_upvr.getAndSendAd(arg1, arg2) -- Line 468
	--[[ Upvalues[1]:
		[1]: AdRequestStats_upvr (readonly)
	]]
	return pcall(function() -- Line 469
		--[[ Upvalues[3]:
			[1]: arg2 (read and write)
			[2]: AdRequestStats_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if not arg2 then
			arg2 = AdRequestStats_upvr:getAllPlayerStatsWithClientStats()
		end
		for i_3, v_3 in pairs(arg1:getAds(arg1:getAdsStats(arg2))) do
			arg1:sendAd(i_3, v_3)
		end
	end)
end
function module_3_upvr.updateAdFired(arg1, arg2, arg3) -- Line 483
	--[[ Upvalues[2]:
		[1]: merge_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
	]]
	local UserId = arg2.UserId
	arg1:sendAd(UserId, arg1:getAds(arg1:getAdsStats({merge_upvr(arg3, AdRequestStats_upvr:getPlayerStats(arg2))}))[UserId])
end
function module_3_upvr.initInstance(arg1, arg2, arg3) -- Line 494
	local var76
	local var77
	local var78
	if type(arg2) == "table" then
		var76 = arg2.partInstance
		var77 = arg2.GIFAdsEnabled
		var78 = arg2.VideoAdsEnabled
	else
		var76 = arg2
	end
	local clone = script:Clone()
	clone.Name = "BillboardServerInstance"
	clone.Parent = script.Parent
	local clone_2 = require(clone)
	clone_2.CentralBillboardServer = require(script)
	table.insert(clone_2.CentralBillboardServer.BillboardServerInstances, clone_2)
	clone_2:initAd(var76, arg3, var77, var78)
	return clone_2
end
function module_3_upvr.initAd(arg1, arg2, arg3, arg4, arg5) -- Line 519
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	arg1.gifsEnabledPartSetting = arg4
	arg1.videoEnabledPartSetting = arg5
	if arg3 then
		local NewAdEvent_upvr = game.ReplicatedStorage:WaitForChild("BloxbizRemotes"):WaitForChild("NewAdEvent")
		NewAdEvent_upvr:FireAllClients(arg2:GetFullName())
		arg1.eventConnection = game.Players.PlayerAdded:Connect(function(arg1_2) -- Line 527
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: NewAdEvent_upvr (readonly)
			]]
			if arg2 ~= nil then
				NewAdEvent_upvr:FireClient(arg1_2, arg2:GetFullName())
			end
		end)
	end
	NewAdEvent_upvr = Instance.new("RemoteEvent", ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes"))
	arg1.updateAdEvent = NewAdEvent_upvr
	NewAdEvent_upvr = arg1.updateAdEvent
	NewAdEvent_upvr.Name = "updateAdEvent-"..arg2:GetFullName()
	NewAdEvent_upvr = arg1.updateAdEvent.OnServerEvent
	NewAdEvent_upvr = NewAdEvent_upvr:Connect
	NewAdEvent_upvr(function(arg1_3, ...) -- Line 536
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:updateAdFired(arg1_3, ...)
	end)
	NewAdEvent_upvr = Utils_upvr.pprint
	NewAdEvent_upvr("[SuperBiz] Ad server started!")
	arg1.adPart = arg2
	NewAdEvent_upvr = arg1:checkBillboard
	NewAdEvent_upvr()
	NewAdEvent_upvr = arg1:setupBillboardGUI
	NewAdEvent_upvr()
end
return module_3_upvr