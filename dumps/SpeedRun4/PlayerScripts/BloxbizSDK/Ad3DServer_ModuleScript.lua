-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:55
-- Luau version 6, Types version 3
-- Time taken: 0.009434 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local module_upvr = {
	Ad3DServerInstances = {};
}
module_upvr.__index = module_upvr
local Utils_upvr = require(script.Parent.Utils)
local merge_upvr = Utils_upvr.merge
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local BatchHTTP_upvr = require(script.Parent.BatchHTTP)
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
local RateLimiter_upvr = require(script.Parent.Utils.RateLimiter)
if not ReplicatedStorage_upvr:FindFirstChild("Bloxbiz3DAdAssets") then
	local Folder = Instance.new("Folder")
	Folder.Parent = ReplicatedStorage_upvr
	Folder.Name = "Bloxbiz3DAdAssets"
end
local function _(arg1, arg2) -- Line 29, Named "queueBranchEntryHttp"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl_2 = {
		event_type = "branch_entry";
	}
	tbl_2.data = arg2
	table.insert(BatchHTTP_upvr.eventQueue, tbl_2)
end
local AnalyticsDataStoreQueue_upvr = require(script.Parent.AnalyticsDataStoreQueue)
local PlayerAnalyticsHistory_upvr = require(script.Parent.AnalyticsDataStoreQueue.PlayerAnalyticsHistory)
local function queueBranchEntryDataStore_upvr(arg1, arg2) -- Line 34, Named "queueBranchEntryDataStore"
	--[[ Upvalues[2]:
		[1]: AnalyticsDataStoreQueue_upvr (readonly)
		[2]: PlayerAnalyticsHistory_upvr (readonly)
	]]
	local bloxbiz_ad_id = arg2.bloxbiz_ad_id
	AnalyticsDataStoreQueue_upvr:queueChange(bloxbiz_ad_id, "chatting_time", arg2.response_time)
	local var19
	if arg2.previous_branch ~= "" then
		var19 = false
	else
		var19 = true
	end
	if var19 then
		AnalyticsDataStoreQueue_upvr:queueChange(bloxbiz_ad_id, "chats", 1)
		local any_getPlayerHistory_result1_4 = PlayerAnalyticsHistory_upvr:getPlayerHistory(arg1.UserId)
		if not any_getPlayerHistory_result1_4["3dAdUniqueChats"][tostring(bloxbiz_ad_id)] then
			any_getPlayerHistory_result1_4["3dAdUniqueChats"][tostring(bloxbiz_ad_id)] = true
			AnalyticsDataStoreQueue_upvr:queueChange(bloxbiz_ad_id, "unique_chats", 1)
		end
	end
	if not var19 then
		AnalyticsDataStoreQueue_upvr:queueChange(bloxbiz_ad_id, "responses", 1)
		local any_getPlayerHistory_result1 = PlayerAnalyticsHistory_upvr:getPlayerHistory(arg1.UserId)
		if not any_getPlayerHistory_result1["3dAdUniqueResponse"][tostring(bloxbiz_ad_id)] then
			any_getPlayerHistory_result1["3dAdUniqueResponse"][tostring(bloxbiz_ad_id)] = true
			AnalyticsDataStoreQueue_upvr:queueChange(bloxbiz_ad_id, "unique_responses", 1)
		end
	end
end
local function dialogueBranchEntryFired_upvr(arg1, arg2, arg3, arg4) -- Line 60, Named "dialogueBranchEntryFired"
	--[[ Upvalues[6]:
		[1]: RateLimiter_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: merge_upvr (readonly)
		[4]: Utils_upvr (readonly)
		[5]: queueBranchEntryDataStore_upvr (readonly)
		[6]: BatchHTTP_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then
	else
		local merge_upvr_result1 = merge_upvr(merge_upvr(merge_upvr(merge_upvr(arg2, arg4), AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStats(arg1)), arg3)
		local any_getAdUsingBloxbizAdId_result1 = Utils_upvr.getAdUsingBloxbizAdId(merge_upvr_result1.bloxbiz_ad_id)
		if any_getAdUsingBloxbizAdId_result1 and any_getAdUsingBloxbizAdId_result1.analytics_protocol == "datastore" then
			queueBranchEntryDataStore_upvr(arg1, merge_upvr_result1)
		else
			table.insert(BatchHTTP_upvr.eventQueue, {
				event_type = "branch_entry";
				data = merge_upvr_result1;
			})
		end
		Utils_upvr.pprint("[SuperBiz] Queue branch entry.")
	end
end
function module_upvr.getAdsStats(arg1, arg2) -- Line 79
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
		[3]: ConfigReader_upvr (readonly)
	]]
	local merge_upvr_result1_2 = merge_upvr(merge_upvr(AdRequestStats_upvr:getGameStats(), {
		part_name = arg1.adBoxModel.AdBox:GetFullName();
		part_shape = tostring(arg1.adBoxModel.AdBox.Shape);
		part_color = tostring(arg1.adBoxModel.AdBox.Color);
		part_orientation = tostring(arg1.adBoxModel.AdBox.Orientation);
		part_position = tostring(arg1.adBoxModel.AdBox.Position);
		part_size = tostring(arg1.adBoxModel.AdBox.Size);
		part_size_x = arg1.adBoxModel.AdBox.Size.X;
		part_size_y = arg1.adBoxModel.AdBox.Size.Y;
		part_size_z = arg1.adBoxModel.AdBox.Size.Z;
	}), AdRequestStats_upvr:getGameLightingStats())
	merge_upvr_result1_2.blocklist = ConfigReader_upvr:read("AdBlocklistURL")
	merge_upvr_result1_2.players = arg2
	merge_upvr_result1_2["3d_ad_request"] = true
	return merge_upvr_result1_2
end
function module_upvr.getAds(arg1, arg2) -- Line 103
	local AdFilter = require(script.Parent.AdFilter)
	if arg1.hardcodedAd then
		return AdFilter:GetAds(arg2, {arg1.hardcodedAd})
	end
	return AdFilter:GetAds(arg2)
end
local tbl_3_upvr = {
	ad_rotate_disabled = false;
	ad_dialogue_disabled = false;
	prompt_action_text = "Talk";
	ad_disclaimer_text = "Paid Ad";
	show_question_mark_in_model = true;
	show_ad_disclaimer_in_model = true;
	show_ad_disclaimer_in_dialogue = true;
	camera_lock_enabled = true;
	camera_distance = 12.5;
	camera_height = 4;
	ad_exclusive_animations = {};
}
function module_upvr.fillAdModelDefaults(arg1, arg2) -- Line 132
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	for _, v in pairs(arg2.ad_model_data) do
		for i_2, v_2 in pairs(tbl_3_upvr) do
			if v[i_2] == nil then
				v[i_2] = v_2
			end
		end
	end
end
function module_upvr.isCustomAnimationsValid(arg1, arg2) -- Line 142
	for _, v_3 in ipairs(arg2.ad_model_data) do
		if v_3.ad_exclusive_animations then
			for _, v_4 in ipairs(v_3.ad_exclusive_animations) do
				if not script.Character:FindFirstChild(v_4) then
					return false
				end
			end
		end
	end
	return true
end
function module_upvr.formatAdData(arg1, arg2) -- Line 158
	--[[ Upvalues[1]:
		[1]: ConfigReader_upvr (readonly)
	]]
	arg2.bloxbiz_ad_id = tonumber(arg2.bloxbiz_ad_id)
	local module = {
		adValid = true;
	}
	local var51 = true
	module.animationsValid = var51
	if arg2.bloxbiz_ad_id == -1 then
		var51 = false
	else
		var51 = true
	end
	module.idValid = var51
	module.scaleModel = true
	module.debugMode = ConfigReader_upvr:read("DebugModeCharacterAd")
	if module.idValid then
		module.animationsValid = arg1:isCustomAnimationsValid(arg2)
	end
	if module.debugMode or not module.animationsValid or not module.idValid then
		module.adValid = false
		arg2.ad_type = "Character"
		arg2.bloxbiz_ad_id = -1
		arg2.ad_serialized_model = require(script.Parent.Ad3DClient.CharacterAd.Character.DefaultEmpty)
		arg2.ad_box_width_max = 6
		arg2.ad_box_height_max = 6
		arg2.ad_box_depth_max = 6
		arg2.ad_model_data = {}
		if module.debugMode then
			arg2.ad_serialized_model = require(script.Parent.Ad3DClient.CharacterAd.Character.DefaultCharacter)
			arg2.ad_model_data[1] = {}
			arg2.ad_model_data[1].ad_model_name = "BloxbizTeamMember"
			arg2.ad_model_data[1].ad_character_name = "Bloxbiz Team Member"
			arg2.ad_model_data[1].ad_dialogue_tree = require(script.Parent.Ad3DClient.CharacterAd.Character.DefaultBranchData)
		end
	end
	arg1:fillAdModelDefaults(arg2)
	return arg2, module
end
function module_upvr.getAdPerPlayer(arg1, arg2, arg3) -- Line 200
	--[[ Upvalues[2]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var52
	if not arg2 then
		var52 = AdRequestStats_upvr:getAllPlayerStatsWithClientStats()
		local var53
	elseif arg2 then
		if not var53 then
			var53 = AdRequestStats_upvr:getClientPlayerStats(arg2)
		end
		var52 = merge_upvr(var53, AdRequestStats_upvr:getPlayerStats(arg2))
		var52 = {var52}
	end
	return arg1:getAds(arg1:getAdsStats(var52))
end
local LoadAd_upvr = require(script.LoadAd)
function module_upvr.requestInitAdBoxToPlayer(arg1, arg2, arg3) -- Line 219
	--[[ Upvalues[3]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: LoadAd_upvr (readonly)
	]]
	local var60
	if not var60 then
		var60 = arg1:getAdPerPlayer(arg2)
	end
	for i_5, v_5 in pairs(var60) do
		local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(i_5)
		local any_formatAdData_result1 = arg1:formatAdData(v_5)
		if any_GetPlayerByUserId_result1 and LoadAd_upvr(arg1, any_formatAdData_result1) then
			ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").Update3DAdEvent:FireClient(any_GetPlayerByUserId_result1, "Construct", arg1.adBoxName, any_formatAdData_result1)
		end
	end
end
function module_upvr.requestInitAdBoxAllPlayers(arg1) -- Line 237
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	for _, v_6 in pairs(Players_upvr:GetPlayers()) do
		arg1:requestInitAdBoxToPlayer(v_6)
	end
end
local function duplicateInstanceCheck_upvr(arg1) -- Line 252, Named "duplicateInstanceCheck"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_7 in pairs(module_upvr.Ad3DServerInstances) do
		if v_7.adBoxName == arg1:GetFullName() then
			return true
		end
	end
	return false
end
function module_upvr.new(arg1, arg2, arg3) -- Line 262
	--[[ Upvalues[3]:
		[1]: duplicateInstanceCheck_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	if duplicateInstanceCheck_upvr(arg1) then
		Utils_upvr.pprint("[SuperBiz] Duplicate 3D ad box initialization attempt")
		return
	end
	local setmetatable_result1 = setmetatable({}, module_upvr)
	table.insert(module_upvr.Ad3DServerInstances, setmetatable_result1)
	local Parent = arg1.Parent
	Parent.AdBox.Transparency = 1
	Parent.AdBox.Material = Enum.Material.Plastic
	Parent.AdBox:ClearAllChildren()
	if Parent:FindFirstChild("Cosmetic") then
		Parent.Cosmetic:Destroy()
	end
	setmetatable_result1.adBoxModel = Parent
	setmetatable_result1.adBoxName = arg1:GetFullName()
	setmetatable_result1.hardcodedAd = arg3
	module_upvr.destroyAdBoxInstanceOnAdBoxRemoval(setmetatable_result1)
	if arg2 then
		setmetatable_result1:requestInitAdBoxAllPlayers()
	end
	return setmetatable_result1
end
function module_upvr.destroyAdBoxInstanceOnAdBoxRemoval(arg1) -- Line 296
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local adBoxName_upvr = arg1.adBoxName
	arg1.adBoxModel.ChildRemoved:Connect(function(arg1_2) -- Line 300
		--[[ Upvalues[5]:
			[1]: Players_upvr (copied, readonly)
			[2]: ReplicatedStorage_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: module_upvr (copied, readonly)
			[5]: adBoxName_upvr (readonly)
		]]
		if arg1_2.Name ~= "AdBox" then
		else
			for _, v_9 in pairs(Players_upvr:GetPlayers()) do
				ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").Update3DAdEvent:FireClient(v_9, "Destruct", arg1.adBoxName)
			end
			for i_10, v_10 in pairs(module_upvr.Ad3DServerInstances) do
				if v_10.adBoxName == adBoxName_upvr then
					table.remove(module_upvr.Ad3DServerInstances, i_10)
					return
				end
			end
		end
	end)
end
function module_upvr.request3dAdFired(arg1, arg2) -- Line 319
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	arg2.ad_type = "Character"
	arg2.ad_disclaimer_text = "Paid Ad"
	local external_link_references = arg2.external_link_references
	if not external_link_references then
		external_link_references = {}
	end
	arg2.external_link_references = external_link_references
	for _, v_8 in pairs(module_upvr.Ad3DServerInstances) do
		ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").Update3DAdEvent:FireClient(arg1, "Destruct", v_8.adBoxName)
		local tbl = {}
		tbl[arg1.UserId] = arg2
		v_8:requestInitAdBoxToPlayer(arg1, tbl)
	end
end
function module_upvr.newPlayerFired(arg1, arg2) -- Line 332
	--[[ Upvalues[2]:
		[1]: RateLimiter_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then
	else
		for _, v_11 in pairs(module_upvr.Ad3DServerInstances) do
			v_11:requestInitAdBoxToPlayer(arg1, v_11:getAdPerPlayer(arg1, arg2))
		end
	end
end
function module_upvr.connectToEvents() -- Line 343
	--[[ Upvalues[3]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: dialogueBranchEntryFired_upvr (readonly)
	]]
	local BloxbizRemotes = ReplicatedStorage_upvr:FindFirstChild("BloxbizRemotes")
	BloxbizRemotes.NewPlayerEvent.OnServerEvent:connect(module_upvr.newPlayerFired)
	BloxbizRemotes.DialogueBranchEntryEvent.OnServerEvent:Connect(dialogueBranchEntryFired_upvr)
	BloxbizRemotes.Request3dAdEvent.OnServerEvent:Connect(module_upvr.request3dAdFired)
end
return module_upvr