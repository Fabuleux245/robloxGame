-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:46
-- Luau version 6, Types version 3
-- Time taken: 0.003439 seconds

local AppLaunchTracker = script:FindFirstAncestor("AppLaunchTracker")
local DiscoveryAppLaunchEvents_upvr = require(AppLaunchTracker.DiscoveryAppLaunchEvents)
local Flags_upvw = require(AppLaunchTracker.Flags)
if math.random(10000) > Flags_upvw.FIntAppLaunchTrackerEnableHundredthsPercent then
	Flags_upvw = false
else
	Flags_upvw = true
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.isEnabled() -- Line 45
	--[[ Upvalues[1]:
		[1]: Flags_upvw (read and write)
	]]
	return Flags_upvw
end
function module_upvr.disable() -- Line 49
	--[[ Upvalues[1]:
		[1]: Flags_upvw (read and write)
	]]
	Flags_upvw = false
end
local game_DefineFastString_result1_upvr = game:DefineFastString("LuaAppLaunchTrackerMilestones", "lua_app_starter_script_requires_begin,lua_app_starter_script_requires_end,startup_page_did_mount,fetch_homepage_data_begin,home_page_container_init,fetch_homepage_data_end,home_page_interactive_legacy,home_page_interactive")
local RoduxPerfTracker_upvr = require(AppLaunchTracker.RoduxPerfTracker)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppShouldTrackTopThunks", false)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("LuaAppLaunchTrackerTimeoutSec", 60)
function module_upvr.new(arg1) -- Line 53
	--[[ Upvalues[7]:
		[1]: game_DefineFastString_result1_upvr (readonly)
		[2]: DiscoveryAppLaunchEvents_upvr (readonly)
		[3]: RoduxPerfTracker_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: game_DefineFastInt_result1_upvr (readonly)
		[7]: Flags_upvw (read and write)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 54
		--[[ Upvalues[1]:
			[1]: game_DefineFastString_result1_upvr (copied, readonly)
		]]
		local module = {}
		for i in game_DefineFastString_result1_upvr:gmatch("([A-Za-z0-9_]+)"), nil do
			module[i] = true
		end
		return module
	end)
	if not pcall_result1 then
		DiscoveryAppLaunchEvents_upvr.reportError(arg1, "Failed to parse FStringLuaAppLaunchTrackerMilestones")
	end
	local tbl = {
		roduxTracker = RoduxPerfTracker_upvr.new(true, game_DefineFastFlag_result1_upvr, true);
		numTileRenders = 0;
		numTilesInit = 0;
		numFeedRenders = 0;
		numFeedItems = 0;
		totalSduiDuration = 0;
		previousMilestone = "";
	}
	local var16 = 0
	tbl.previousMilestoneTime = var16
	tbl.loggingProtocol = arg1
	if pcall_result1 then
		var16 = pcall_result2
	else
		var16 = {}
	end
	tbl.supportedMilestones = var16
	local setmetatable_result1_upvr = setmetatable(tbl, module_upvr)
	if 0 < game_DefineFastInt_result1_upvr then
		task.delay(game_DefineFastInt_result1_upvr, function() -- Line 82
			--[[ Upvalues[5]:
				[1]: Flags_upvw (copied, read and write)
				[2]: DiscoveryAppLaunchEvents_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: setmetatable_result1_upvr (readonly)
				[5]: module_upvr (copied, readonly)
			]]
			if Flags_upvw then
				DiscoveryAppLaunchEvents_upvr.reportError(arg1, `Timeout after previousMilestone: {setmetatable_result1_upvr.previousMilestone}`)
				setmetatable_result1_upvr.roduxTracker:stopTracking()
				module_upvr.disable()
			end
		end)
	end
	return setmetatable_result1_upvr
end
function module_upvr.trackTileRender(arg1) -- Line 97
	arg1.numTileRenders += 1
end
function module_upvr.trackTileInit(arg1) -- Line 100
	arg1.numTilesInit += 1
end
function module_upvr.trackFeedRender(arg1) -- Line 103
	arg1.numFeedRenders += 1
end
function module_upvr.trackNumFeedItems(arg1, arg2) -- Line 106
	arg1.numFeedItems = arg2
end
function module_upvr.trackSduiDuration(arg1, arg2) -- Line 110
	arg1.totalSduiDuration += arg2
end
function module_upvr.onMilestoneChanged(arg1, arg2) -- Line 114
	--[[ Upvalues[2]:
		[1]: Flags_upvw (read and write)
		[2]: DiscoveryAppLaunchEvents_upvr (readonly)
	]]
	if not Flags_upvw then
	else
		if not arg1.supportedMilestones[arg2] then return end
		local os_clock_result1 = os.clock()
		if 0 < arg1.previousMilestoneTime then
			DiscoveryAppLaunchEvents_upvr.reportStatsforMilestone(arg1.loggingProtocol, arg2, arg1.previousMilestone, (os_clock_result1 - arg1.previousMilestoneTime) * 1000, arg1.roduxTracker:getStats(), arg1.numTilesInit, arg1.numTileRenders, arg1.numFeedItems, arg1.numFeedRenders, arg1.totalSduiDuration)
		end
		arg1.roduxTracker:clear()
		arg1.numFeedRenders = 0
		arg1.numTilesInit = 0
		arg1.numTileRenders = 0
		arg1.totalSduiDuration = 0
		arg1.previousMilestone = arg2
		arg1.previousMilestoneTime = os_clock_result1
	end
end
function module_upvr.stopTracking(arg1) -- Line 152
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.roduxTracker:stopTracking()
	module_upvr.disable()
end
function module_upvr.createDefault(...) -- Line 157
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.default = module_upvr.new(...)
end
return module_upvr