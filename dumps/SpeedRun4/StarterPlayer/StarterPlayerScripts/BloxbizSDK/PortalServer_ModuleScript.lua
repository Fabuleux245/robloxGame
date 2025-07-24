-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:18
-- Luau version 6, Types version 3
-- Time taken: 0.011059 seconds

local Players_upvr = game:GetService("Players")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local Utils_upvr = require(script.Parent.Utils)
local merge_upvr = Utils_upvr.merge
local module_upvr = {
	Instances = {};
	gameHasMissingTeleportPermissions = false;
}
module_upvr.__index = module_upvr
function module_upvr.getAdsStats(arg1, arg2) -- Line 23
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
		[3]: ConfigReader_upvr (readonly)
	]]
	local merge_upvr_result1 = merge_upvr(merge_upvr(AdRequestStats_upvr:getGameStats(), {
		part_name = arg1.portalBox.AdBox:GetFullName();
		part_shape = tostring(arg1.portalBox.AdBox.Shape);
		part_color = tostring(arg1.portalBox.AdBox.Color);
		part_orientation = tostring(arg1.portalBox.AdBox.Orientation);
		part_position = tostring(arg1.portalBox.AdBox.Position);
		part_size = tostring(arg1.portalBox.AdBox.Size);
		part_size_x = arg1.portalBox.AdBox.Size.X;
		part_size_y = arg1.portalBox.AdBox.Size.Y;
		part_size_z = arg1.portalBox.AdBox.Size.Z;
	}), AdRequestStats_upvr:getGameLightingStats())
	merge_upvr_result1.blocklist = ConfigReader_upvr:read("AdBlocklistURL")
	merge_upvr_result1.players = arg2
	merge_upvr_result1.portal_ad_request = true
	return merge_upvr_result1
end
function module_upvr.getAds(arg1, arg2) -- Line 47
	return require(script.Parent.AdFilter):GetAds(arg2)
end
function module_upvr.sizeCheck(arg1) -- Line 54
	--[[ Upvalues[1]:
		[1]: Utils_upvr (readonly)
	]]
	local AdBox = arg1.portalBox:FindFirstChild("AdBox")
	if not AdBox then
		Utils_upvr.pprint("[SuperBiz] Portal AdBox didn't exist while doing size check")
	end
	if Vector3.new(24, 12.5, 7).X <= AdBox.Size.X and Vector3.new(24, 12.5, 7).Y <= AdBox.Size.Y and Vector3.new(24, 12.5, 7).Z <= AdBox.Size.Z then
		return true
	end
	Utils_upvr.pprint("[SuperBiz] Portal AdBox size was smaller than expected, please reset it to original size")
	return false
end
function module_upvr.formatAdData(arg1, arg2) -- Line 70
	--[[ Upvalues[1]:
		[1]: ConfigReader_upvr (readonly)
	]]
	arg2.bloxbiz_ad_id = tonumber(arg2.bloxbiz_ad_id)
	local var11
	if arg2.bloxbiz_ad_id == -1 then
		var11 = false
	else
		var11 = true
	end
	local any_read_result1 = ConfigReader_upvr:read("DebugModePortalAd")
	if arg2.ad_url and arg2.ad_url[1] == "" then
		arg2.show_ad_disclaimer = true
	else
		arg2.show_ad_disclaimer = false
	end
	if not arg2.ad_disclaimer_url then
		arg2.ad_disclaimer_url = "rbxassetid://7122215099"
		arg2.ad_disclaimer_scale_x = 0.117
		arg2.ad_disclaimer_scale_y = 0.08
	end
	if any_read_result1 or not var11 then
		arg2.bloxbiz_ad_id = -1
		local var13 = any_read_result1
		if var13 then
			var13 = arg1:sizeCheck()
		end
		if var13 then
			arg2.destination_place_id = 10395329385
			arg2.ad_url = {"http://www.roblox.com/asset/?id=11315687547"}
			arg2.show_ad_disclaimer = true
			arg2.ad_disclaimer_url = "http://www.roblox.com/asset/?id=11315697627"
			arg2.ad_disclaimer_scale_x = 0.133
			arg2.ad_disclaimer_scale_y = 0.08
		end
	end
	return arg2
end
function module_upvr.getAdPerPlayer(arg1, arg2, arg3) -- Line 105
	--[[ Upvalues[2]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var15
	if not arg2 then
		var15 = AdRequestStats_upvr:getAllPlayerStatsWithClientStats()
		local var16
	elseif arg2 then
		if not var16 then
			var16 = AdRequestStats_upvr:getClientPlayerStats(arg2)
		end
		var15 = merge_upvr(var16, AdRequestStats_upvr:getPlayerStats(arg2))
		var15 = {var15}
	end
	return arg1:getAds(arg1:getAdsStats(var15))
end
function module_upvr.requestInitAdBoxToPlayer(arg1, arg2, arg3) -- Line 125
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	local var22
	if not var22 then
		var22 = arg1:getAdPerPlayer(arg2)
	end
	for i, v in pairs(var22) do
		local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(i)
		if any_GetPlayerByUserId_result1 then
			ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").UpdatePortalEvent:FireClient(any_GetPlayerByUserId_result1, "Construct", arg1.adBoxName, arg1:formatAdData(v))
		end
	end
end
function module_upvr.requestInitAdBoxAllPlayers(arg1) -- Line 142
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	for _, v_2 in pairs(Players_upvr:GetPlayers()) do
		arg1:requestInitAdBoxToPlayer(v_2)
	end
end
function module_upvr.destruct(arg1) -- Line 148
	arg1.portalBox:Destroy()
end
local function removePlaceholderPortalFromBox_upvr(arg1) -- Line 152, Named "removePlaceholderPortalFromBox"
	for _, v_3 in pairs(arg1:GetChildren()) do
		if v_3.Name == "AdBox" then
			v_3.Transparency = 1
			v_3.Material = Enum.Material.Plastic
			v_3:ClearAllChildren()
		else
			v_3:Destroy()
		end
	end
end
local function duplicateInstanceCheck_upvr(arg1) -- Line 166, Named "duplicateInstanceCheck"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_4 in pairs(module_upvr.Instances) do
		if v_4.adBoxName == arg1:GetFullName() then
			return true
		end
	end
	return false
end
function module_upvr.new(arg1, arg2) -- Line 176
	--[[ Upvalues[6]:
		[1]: duplicateInstanceCheck_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: removePlaceholderPortalFromBox_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: ReplicatedStorage_upvr (readonly)
	]]
	if duplicateInstanceCheck_upvr(arg1) then
		Utils_upvr.pprint("[SuperBiz] Duplicate portal box initialization attempt")
	else
		if module_upvr.gameHasMissingTeleportPermissions then return end
		local setmetatable_result1_upvr = setmetatable({}, module_upvr)
		table.insert(module_upvr.Instances, setmetatable_result1_upvr)
		local Parent = arg1.Parent
		removePlaceholderPortalFromBox_upvr(Parent)
		setmetatable_result1_upvr.portalBox = Parent
		setmetatable_result1_upvr.adBoxName = arg1:GetFullName()
		Parent.ChildRemoved:Connect(function(arg1_2) -- Line 195
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: Players_upvr (copied, readonly)
				[3]: ReplicatedStorage_upvr (copied, readonly)
				[4]: setmetatable_result1_upvr (readonly)
			]]
			if arg1_2 == arg1 then
				for _, v_7 in pairs(Players_upvr:GetPlayers()) do
					ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").UpdatePortalEvent:FireClient(v_7, "Destruct", setmetatable_result1_upvr.adBoxName)
				end
			end
		end)
		if arg2 then
			setmetatable_result1_upvr:requestInitAdBoxAllPlayers()
		end
	end
end
function module_upvr.requestPortalAdFired(arg1, arg2) -- Line 209
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	local external_link_references = arg2.external_link_references
	if not external_link_references then
		external_link_references = {}
	end
	arg2.external_link_references = external_link_references
	for _, v_5 in pairs(module_upvr.Instances) do
		ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").UpdatePortalEvent:FireClient(arg1, "Destruct", v_5.adBoxName)
		local tbl = {}
		tbl[arg1.UserId] = arg2
		v_5:requestInitAdBoxToPlayer(arg1, tbl)
	end
end
local RateLimiter_upvr = require(script.Parent.Utils.RateLimiter)
function module_upvr.newPlayerFired(arg1, arg2) -- Line 220
	--[[ Upvalues[2]:
		[1]: RateLimiter_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then
	else
		for _, v_8 in pairs(module_upvr.Instances) do
			v_8:requestInitAdBoxToPlayer(arg1, v_8:getAdPerPlayer(arg1, arg2))
		end
	end
end
function module_upvr.discontinueAllPortals() -- Line 231
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.gameHasMissingTeleportPermissions = true
	for _, v_6 in pairs(module_upvr.Instances) do
		v_6:destruct()
	end
end
function module_upvr.checkTeleportPermissions(arg1) -- Line 239
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local SOME_upvr_2 = Players_upvr:FindFirstChild(arg1)
	local var79 = not SOME_upvr_2
	if not var79 then
		var79 = SOME_upvr_2
		if var79 then
			if SOME_upvr_2.Parent == Players_upvr then
				var79 = false
			else
				var79 = true
			end
		end
	end
	if var79 then return end
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 246
		--[[ Upvalues[2]:
			[1]: ReplicatedStorage_upvr (copied, readonly)
			[2]: SOME_upvr_2 (readonly)
		]]
		return ReplicatedStorage_upvr:FindFirstChild("BloxbizRemotes").getClientLogs:InvokeClient(SOME_upvr_2, 10)
	end)
	if not pcall_result1 then return end
	local pairs_result1_4, pairs_result2_3, pairs_result3_9 = pairs(pcall_result2_2)
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 41. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 41. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 28. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [48.12]
	-- KONSTANTERROR: [32] 28. Error Block 11 end (CF ANALYSIS FAILED)
end
local HttpService_upvr = game:GetService("HttpService")
local TeleportsAndJoinsEvent_upvr = require(script.Parent.ServerInit.TeleportsAndJoinsEvent)
local TeleportService_upvr = game:GetService("TeleportService")
local function teleportRequestEventFired_upvr(arg1, arg2, arg3) -- Line 274, Named "teleportRequestEventFired"
	--[[ Upvalues[4]:
		[1]: HttpService_upvr (readonly)
		[2]: TeleportsAndJoinsEvent_upvr (readonly)
		[3]: TeleportService_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID(false)
	TeleportsAndJoinsEvent_upvr:setTeleported(arg1)
	task.spawn(function() -- Line 279
		--[[ Upvalues[5]:
			[1]: TeleportsAndJoinsEvent_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: any_GenerateGUID_result1_upvr (readonly)
		]]
		TeleportsAndJoinsEvent_upvr:trackGameTeleport(arg1, arg2, arg3, any_GenerateGUID_result1_upvr)
	end)
	local TeleportOptions = Instance.new("TeleportOptions")
	local tbl_3 = {
		isBloxbizTeleport = true;
		teleportGuid = any_GenerateGUID_result1_upvr;
	}
	tbl_3.bloxbizAdId = arg3
	TeleportOptions:SetTeleportData(tbl_3)
	local tbl_2 = {}
	tbl_2[1] = arg1
	TeleportService_upvr:TeleportAsync(arg2, tbl_2, TeleportOptions)
	local Name_upvr = arg1.Name
	task.delay(10, function() -- Line 294
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: Name_upvr (readonly)
		]]
		module_upvr.checkTeleportPermissions(Name_upvr)
	end)
end
function module_upvr.connectToEvents() -- Line 299
	--[[ Upvalues[3]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: teleportRequestEventFired_upvr (readonly)
	]]
	local BloxbizRemotes = ReplicatedStorage_upvr:FindFirstChild("BloxbizRemotes")
	BloxbizRemotes.NewPlayerEvent.OnServerEvent:connect(module_upvr.newPlayerFired)
	BloxbizRemotes.PortalTeleportRequestEvent.OnServerEvent:Connect(teleportRequestEventFired_upvr)
	BloxbizRemotes.RequestPortalAdEvent.OnServerEvent:Connect(module_upvr.requestPortalAdFired)
end
return module_upvr