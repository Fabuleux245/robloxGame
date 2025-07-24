-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:21
-- Luau version 6, Types version 3
-- Time taken: 0.005291 seconds

local RunService_upvr = game:GetService("RunService")
local LocalizationService_upvr = game:GetService("LocalizationService")
local Player_upvr = require(script.Player)
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local Utils_upvr = require(script.Parent.Utils)
local merge_upvr = Utils_upvr.merge
local module_upvr = {
	raycastIgnoreListString = function(arg1) -- Line 22, Named "raycastIgnoreListString"
		--[[ Upvalues[1]:
			[1]: ConfigReader_upvr (readonly)
		]]
		local var12 = ""
		for _, v in ipairs(ConfigReader_upvr:read("RaycastFilterList")()) do
			var12 = var12..v:GetFullName()..','
		end
		return var12:sub(1, -2)
	end;
}
local Lighting_upvr = game:GetService("Lighting")
function module_upvr.getGameLightingStats(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: Lighting_upvr (readonly)
	]]
	return {
		lighting_ambient = Lighting_upvr.Ambient;
		lighting_outdoor_ambient = Lighting_upvr.OutdoorAmbient;
		lighting_brightness = Lighting_upvr.Brightness;
		lighting_clocktime = Lighting_upvr.ClockTime;
		lighting_fogstart = Lighting_upvr.FogStart;
		lighting_fogend = Lighting_upvr.FogEnd;
	}
end
local InternalConfig_upvr = require(script.Parent.InternalConfig)
local HashLib_upvr = require(script.Parent.HashLib)
function module_upvr.getGameStats(arg1) -- Line 42
	--[[ Upvalues[4]:
		[1]: InternalConfig_upvr (readonly)
		[2]: ConfigReader_upvr (readonly)
		[3]: HashLib_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	return {
		bloxbiz_version = InternalConfig_upvr.SDK_VERSION;
		bloxbiz_id = ConfigReader_upvr:read("AccountID");
		raycast_ignore_list = HashLib_upvr.md5(arg1:raycastIgnoreListString());
		game_id = game.GameId;
		creator_id = game.CreatorId;
		place_id = game.PlaceId;
		job_id = game.JobId;
		private_server_id = game.PrivateServerId;
		is_studio = RunService_upvr:IsStudio();
	}
end
function module_upvr.getSurfaceGuiStats(arg1, arg2) -- Line 56
	local AdSurfaceGui = arg2.AdSurfaceGui
	return {
		surface_gui_enabled = AdSurfaceGui.Enabled;
		surface_gui_face = tostring(AdSurfaceGui.Face);
		surface_gui_size_x = AdSurfaceGui.AbsoluteSize.X;
		surface_gui_size_y = AdSurfaceGui.AbsoluteSize.Y;
	}
end
function module_upvr.getPartStats(arg1, arg2) -- Line 66
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: merge_upvr (readonly)
	]]
	return merge_upvr({
		part_name = arg2:GetFullName();
		part_shape = tostring(arg2.Shape);
		part_size = tostring(arg2.Size);
		part_color = tostring(arg2.Color);
		part_orientation = tostring(arg2.Orientation);
		part_position = tostring(arg2.Position);
	}, module_upvr:getSurfaceGuiStats(arg2))
end
function module_upvr.getPlayerCountryCode(arg1, arg2) -- Line 81
	--[[ Upvalues[1]:
		[1]: LocalizationService_upvr (readonly)
	]]
	local _, pcall_result2 = pcall(function() -- Line 82
		--[[ Upvalues[2]:
			[1]: LocalizationService_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		return LocalizationService_upvr:GetCountryRegionForPlayerAsync(arg2)
	end)
	return pcall_result2
end
local PolicyService_upvr = game:GetService("PolicyService")
function module_upvr.getPlayerPolicyInfo(arg1, arg2) -- Line 89
	--[[ Upvalues[1]:
		[1]: PolicyService_upvr (readonly)
	]]
	local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 90
		--[[ Upvalues[2]:
			[1]: PolicyService_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		return PolicyService_upvr:GetPolicyInfoForPlayerAsync(arg2)
	end)
	if not pcall_result1_2 then
		return {
			AreAdsAllowed = true;
			ArePaidRandomItemsRestricted = true;
			AllowedExternalLinkReferences = {};
			IsPaidItemTradingAllowed = false;
			IsSubjectToChinaPolicies = true;
		}
	end
	return pcall_result2_3
end
local Workspace_upvr = game:GetService("Workspace")
function module_upvr.getClientResolution(arg1) -- Line 107
	--[[ Upvalues[2]:
		[1]: Workspace_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local CurrentCamera = Workspace_upvr.CurrentCamera
	local _ = {
		client_resolution_x = 0;
		client_resolution_y = 0;
	}
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 45. Error Block 19 start (CF ANALYSIS FAILED)
	local _ = {
		client_resolution_x = CurrentCamera.ViewportSize.X;
		client_resolution_y = CurrentCamera.ViewportSize.Y;
	}
	-- KONSTANTERROR: [61] 45. Error Block 19 end (CF ANALYSIS FAILED)
end
function module_upvr.getSubsetClientPlayerStatsFallback(arg1) -- Line 141
	return {
		client_resolution = {
			client_resolution_x = 0;
			client_resolution_y = 0;
		};
		system_locale_id = "unknown";
		is_ten_foot_interface = false;
		accelerometer_enabled = false;
		gamepad_enabled = false;
		gyroscope_enabled = false;
		keyboard_enabled = false;
		mouse_enabled = false;
		touch_enabled = false;
		vr_enabled = false;
	}
end
function module_upvr.getSubsetClientPlayerStats(arg1) -- Line 156
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
	]]
	if not RunService_upvr:IsClient() then return end
	local UserInputService = game:GetService("UserInputService")
	return {
		client_resolution = arg1:getClientResolution();
		system_locale_id = LocalizationService_upvr.SystemLocaleId;
		is_ten_foot_interface = game:GetService("GuiService"):IsTenFootInterface() or false;
		accelerometer_enabled = UserInputService.AccelerometerEnabled;
		gamepad_enabled = UserInputService.GamepadEnabled;
		gyroscope_enabled = UserInputService.GyroscopeEnabled;
		keyboard_enabled = UserInputService.KeyboardEnabled;
		mouse_enabled = UserInputService.MouseEnabled;
		touch_enabled = UserInputService.TouchEnabled;
		vr_enabled = UserInputService.VREnabled;
	}
end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
function module_upvr.getClientPlayerStats(arg1, arg2, arg3) -- Line 178
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: merge_upvr (readonly)
	]]
	local any_getPlayerPolicyInfo_result1 = arg1:getPlayerPolicyInfo(arg2)
	local tbl = {}
	if RunService_upvr:IsClient() then
		tbl = arg1:getSubsetClientPlayerStats()
	else
		local var44_upvw
		local var45_upvw
		local getSubsetClientPlayerStats_2_upvr = ReplicatedStorage_upvr.BloxbizRemotes:WaitForChild("getSubsetClientPlayerStats")
		task.spawn(function() -- Line 200
			--[[ Upvalues[4]:
				[1]: var44_upvw (read and write)
				[2]: var45_upvw (read and write)
				[3]: getSubsetClientPlayerStats_2_upvr (readonly)
				[4]: arg2 (readonly)
			]]
			local pcall_result1, pcall_result2_2 = pcall(function() -- Line 201
				--[[ Upvalues[2]:
					[1]: getSubsetClientPlayerStats_2_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				return getSubsetClientPlayerStats_2_upvr:InvokeClient(arg2)
			end)
			var44_upvw = pcall_result1
			var45_upvw = pcall_result2_2
		end)
		while tick() - tick() < (arg3 or 10) and var44_upvw == nil do
			task.wait()
		end
		if var44_upvw then
			tbl = var45_upvw
		else
			tbl = arg1:getSubsetClientPlayerStatsFallback()
		end
	end
	getSubsetClientPlayerStats_2_upvr = merge_upvr({
		country_code = arg1:getPlayerCountryCode(arg2);
		allowed_external_link_references = any_getPlayerPolicyInfo_result1.AllowedExternalLinkReferences;
		are_ads_allowed = any_getPlayerPolicyInfo_result1.AreAdsAllowed;
		player_membership_type = arg2.MembershipType.Value;
	}, tbl)
	return getSubsetClientPlayerStats_2_upvr
end
function module_upvr.getPlayerStats(arg1, arg2) -- Line 220
	return {
		player_id = arg2.UserId;
		player_age = arg2.AccountAge;
		player_locale_id = arg2.LocaleId;
	}
end
function module_upvr.getPlayerStatsWithClientStatsYielding(arg1, arg2) -- Line 231
	--[[ Upvalues[2]:
		[1]: Player_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local var52 = Player_upvr.playerStats[arg2.UserId]
	if not var52 then
		repeat
			var52 = Player_upvr.playerStats[arg2.UserId]
			task.wait()
		until var52 and 3 < tick() - tick()
		if not var52 then
			return nil
		end
	end
	return Utils_upvr.deepCopy(var52)
end
local Players_upvr = game:GetService("Players")
function module_upvr.getAllPlayerStatsWithClientStats(arg1) -- Line 251
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: Player_upvr (readonly)
		[3]: Utils_upvr (readonly)
	]]
	for _, v_2 in pairs(Players_upvr:GetPlayers()) do
		local var59 = Player_upvr.playerStats[v_2.UserId]
		if var59 then
			({})[v_2.UserId] = var59
			table.insert({}, Utils_upvr.deepCopy(var59))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return module_upvr