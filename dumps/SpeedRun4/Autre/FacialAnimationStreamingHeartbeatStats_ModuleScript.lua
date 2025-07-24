-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:23
-- Luau version 6, Types version 3
-- Time taken: 0.007054 seconds

local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec)
local module = {}
local var4_upvw = false
local tbl_4_upvr = {
	None = 0;
	AudioOnly = 1;
	VideoOnly = 2;
	AudioVideo = 3;
}
local None_upvw = tbl_4_upvr.None
local tbl_3_upvr = {}
local var8_upvw
local tbl_2_upvr = {}
local tbl_upvr = {
	VideoAnimationEnabled = "videoAnimationEnabled";
	AudioAnimationEnabled = "audioAnimationEnabled";
}
local function _() -- Line 41, Named "updateTrackingTimes"
	--[[ Upvalues[3]:
		[1]: var8_upvw (read and write)
		[2]: tbl_3_upvr (readonly)
		[3]: None_upvw (read and write)
	]]
	local os_clock_result1 = os.clock()
	if var8_upvw then
		local var12 = tbl_3_upvr
		local var13 = None_upvw
		var12[var13] += os_clock_result1 - var8_upvw
	end
	var8_upvw = os_clock_result1
end
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local Players_upvr = game:GetService("Players")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local default_upvr = require(game:GetService("CorePackages").Workspace.Packages.LoggingProtocol).default
local AvatarChatHeartbeatStats_upvr = require(script.Parent.RobloxTelemetryConfigs.AvatarChatHeartbeatStats)
local function reportHeartbeat_upvr() -- Line 52, Named "reportHeartbeat"
	--[[ Upvalues[8]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: game_GetEngineFeature_result1_upvr (readonly)
		[4]: None_upvw (read and write)
		[5]: var8_upvw (read and write)
		[6]: tbl_3_upvr (readonly)
		[7]: default_upvr (readonly)
		[8]: AvatarChatHeartbeatStats_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {
		pid = tostring(game.PlaceId);
		sessionid = RbxAnalyticsService_upvr:GetSessionId();
		userid = tostring(Players_upvr.LocalPlayer.UserId);
		universeid = tostring(game.GameId);
	}
	if game_GetEngineFeature_result1_upvr then
		tbl.playSessionId = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	tbl.trackingMode = None_upvw
	local os_clock_result1_3 = os.clock()
	if var8_upvw then
		local var29 = tbl_3_upvr
		local var30 = None_upvw
		var29[var30] += os_clock_result1_3 - var8_upvw
	end
	var8_upvw = os_clock_result1_3
	for i, v in tbl_3_upvr do
		tbl[tostring(i)] = v
		tbl_3_upvr[i] = 0
	end
	default_upvr:logRobloxTelemetryEvent(AvatarChatHeartbeatStats_upvr, nil, tbl)
end
local function _() -- Line 76, Named "startHeartbeat"
	--[[ Upvalues[3]:
		[1]: GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec_upvr (readonly)
		[2]: var4_upvw (read and write)
		[3]: reportHeartbeat_upvr (readonly)
	]]
	local var2_result1_upvr_2 = GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec_upvr()
	if 0 < var2_result1_upvr_2 and not var4_upvw then
		var4_upvw = true
		task.spawn(function() -- Line 80
			--[[ Upvalues[3]:
				[1]: var4_upvw (copied, read and write)
				[2]: reportHeartbeat_upvr (copied, readonly)
				[3]: var2_result1_upvr_2 (readonly)
			]]
			while var4_upvw do
				reportHeartbeat_upvr()
				task.wait(var2_result1_upvr_2)
			end
			var4_upvw = false
		end)
	end
end
local function _() -- Line 90, Named "updateTrackingMode"
	--[[ Upvalues[5]:
		[1]: var8_upvw (read and write)
		[2]: tbl_3_upvr (readonly)
		[3]: None_upvw (read and write)
		[4]: FaceAnimatorService_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
	]]
	local os_clock_result1_2 = os.clock()
	if var8_upvw then
		local var34 = tbl_3_upvr
		local var35 = None_upvw
		var34[var35] += os_clock_result1_2 - var8_upvw
	end
	var8_upvw = os_clock_result1_2
	if FaceAnimatorService_upvr.VideoAnimationEnabled and FaceAnimatorService_upvr.AudioAnimationEnabled then
		None_upvw = tbl_4_upvr.AudioVideo
	else
		if FaceAnimatorService_upvr.VideoAnimationEnabled then
			None_upvw = tbl_4_upvr.VideoOnly
			return
		end
		if FaceAnimatorService_upvr.AudioAnimationEnabled then
			None_upvw = tbl_4_upvr.AudioOnly
			return
		end
		None_upvw = tbl_4_upvr.None
	end
end
function module.Initialize() -- Line 104
	--[[ Upvalues[10]:
		[1]: GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: FaceAnimatorService_upvr (readonly)
		[7]: var8_upvw (read and write)
		[8]: None_upvw (read and write)
		[9]: var4_upvw (read and write)
		[10]: reportHeartbeat_upvr (readonly)
	]]
	if GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec_upvr() <= 0 then
	else
		for _, v_2 in tbl_4_upvr do
			tbl_3_upvr[v_2] = 0
		end
		tbl_2_upvr[tbl_upvr.VideoAnimationEnabled] = FaceAnimatorService_upvr:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(function() -- Line 113
			--[[ Upvalues[5]:
				[1]: var8_upvw (copied, read and write)
				[2]: tbl_3_upvr (copied, readonly)
				[3]: None_upvw (copied, read and write)
				[4]: FaceAnimatorService_upvr (copied, readonly)
				[5]: tbl_4_upvr (copied, readonly)
			]]
			local os_clock_result1_5 = os.clock()
			if var8_upvw then
				local var40 = tbl_3_upvr
				local var41 = None_upvw
				var40[var41] += os_clock_result1_5 - var8_upvw
			end
			var8_upvw = os_clock_result1_5
			if FaceAnimatorService_upvr.VideoAnimationEnabled and FaceAnimatorService_upvr.AudioAnimationEnabled then
				None_upvw = tbl_4_upvr.AudioVideo
			else
				if FaceAnimatorService_upvr.VideoAnimationEnabled then
					None_upvw = tbl_4_upvr.VideoOnly
					return
				end
				if FaceAnimatorService_upvr.AudioAnimationEnabled then
					None_upvw = tbl_4_upvr.AudioOnly
					return
				end
				None_upvw = tbl_4_upvr.None
			end
		end)
		tbl_2_upvr[tbl_upvr.AudioAnimationEnabled] = FaceAnimatorService_upvr:GetPropertyChangedSignal("AudioAnimationEnabled"):Connect(function() -- Line 117
			--[[ Upvalues[5]:
				[1]: var8_upvw (copied, read and write)
				[2]: tbl_3_upvr (copied, readonly)
				[3]: None_upvw (copied, read and write)
				[4]: FaceAnimatorService_upvr (copied, readonly)
				[5]: tbl_4_upvr (copied, readonly)
			]]
			local os_clock_result1_6 = os.clock()
			if var8_upvw then
				local var44 = tbl_3_upvr
				local var45 = None_upvw
				var44[var45] += os_clock_result1_6 - var8_upvw
			end
			var8_upvw = os_clock_result1_6
			if FaceAnimatorService_upvr.VideoAnimationEnabled and FaceAnimatorService_upvr.AudioAnimationEnabled then
				None_upvw = tbl_4_upvr.AudioVideo
			else
				if FaceAnimatorService_upvr.VideoAnimationEnabled then
					None_upvw = tbl_4_upvr.VideoOnly
					return
				end
				if FaceAnimatorService_upvr.AudioAnimationEnabled then
					None_upvw = tbl_4_upvr.AudioOnly
					return
				end
				None_upvw = tbl_4_upvr.None
			end
		end)
		local os_clock_result1_4 = os.clock()
		if var8_upvw then
			local var47 = tbl_3_upvr
			local var48 = None_upvw
			var47[var48] += os_clock_result1_4 - var8_upvw
		end
		var8_upvw = os_clock_result1_4
		if FaceAnimatorService_upvr.VideoAnimationEnabled and FaceAnimatorService_upvr.AudioAnimationEnabled then
			None_upvw = tbl_4_upvr.AudioVideo
		elseif FaceAnimatorService_upvr.VideoAnimationEnabled then
			None_upvw = tbl_4_upvr.VideoOnly
		elseif FaceAnimatorService_upvr.AudioAnimationEnabled then
			None_upvw = tbl_4_upvr.AudioOnly
		else
			None_upvw = tbl_4_upvr.None
		end
		local var2_result1_upvr = GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec_upvr()
		if 0 < var2_result1_upvr and not var4_upvw then
			var4_upvw = true
			task.spawn(function() -- Line 80
				--[[ Upvalues[3]:
					[1]: var4_upvw (copied, read and write)
					[2]: reportHeartbeat_upvr (copied, readonly)
					[3]: var2_result1_upvr (readonly)
				]]
				while var4_upvw do
					reportHeartbeat_upvr()
					task.wait(var2_result1_upvr)
				end
				var4_upvw = false
			end)
		end
	end
end
function module.Cleanup() -- Line 125
	--[[ Upvalues[3]:
		[1]: GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: var4_upvw (read and write)
	]]
	if GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec_upvr() <= 0 then
	else
		for _, v_3 in pairs(tbl_2_upvr) do
			if v_3 then
				v_3:Disconnect()
			end
		end
		table.clear(tbl_2_upvr)
		var4_upvw = false
	end
end
return module