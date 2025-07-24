-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:19
-- Luau version 6, Types version 3
-- Time taken: 0.005247 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local HttpService_upvr = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local InGameMenu = RobloxGui.Modules.InGameMenu
local isNewInGameMenuEnabled_upvr = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local Constants_upvr_2 = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Constants
local Constants_upvr = require(InGameMenu.Resources.Constants)
local GetFFlagEnableInGameMenuDurationLogger = script.Parent.Flags.GetFFlagEnableInGameMenuDurationLogger
local var10_upvr = require(GetFFlagEnableInGameMenuDurationLogger)()
if game:GetService("Stats") then
	GetFFlagEnableInGameMenuDurationLogger = game:GetService("Stats"):FindFirstChild("FrameRateManager")
else
	GetFFlagEnableInGameMenuDurationLogger = nil
end
if GetFFlagEnableInGameMenuDurationLogger then
	local _ = GetFFlagEnableInGameMenuDurationLogger:FindFirstChild("RenderAverage")
else
end
local function _() -- Line 26, Named "getCurrentMenuVersion"
	--[[ Upvalues[1]:
		[1]: isNewInGameMenuEnabled_upvr (readonly)
	]]
	if isNewInGameMenuEnabled_upvr() then
		return 2
	end
	return 1
end
local function _(arg1) -- Line 33, Named "getMenuAnimationTime"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if arg1 then
		return Constants_upvr.ShieldOpenAnimationTweenTime
	end
	return Constants_upvr.ShieldCloseAnimationTweenTime
end
local function _() -- Line 40, Named "getMonoTimeSec"
	return os.clock()
end
local var12_upvr
local os_clock_result1_upvw_2 = os.clock()
local os_clock_result1_upvw = os.clock()
local var15_upvw
local var16_upvw
local var17_upvw = false
local var18_upvw = false
local var19_upvw = 0
local default_upvr = require(CorePackages.Workspace.Packages.LoggingProtocol).default
local SendAnalytics_upvr = require(InGameMenu.Utility.SendAnalytics)
local function sendEvent_upvr(arg1, arg2) -- Line 63, Named "sendEvent"
	--[[ Upvalues[6]:
		[1]: var12_upvr (readonly)
		[2]: isNewInGameMenuEnabled_upvr (readonly)
		[3]: var10_upvr (readonly)
		[4]: default_upvr (readonly)
		[5]: SendAnalytics_upvr (readonly)
		[6]: Constants_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var22
	if var12_upvr then
		var22 = 1000 / var12_upvr:GetValue()
	else
		var22 = nil
	end
	arg2.fps = var22
	if isNewInGameMenuEnabled_upvr() then
		var22 = 2
	else
		var22 = 1
	end
	arg2.menu_version = var22
	var22 = var10_upvr
	if var22 then
		var22 = arg1
		local var23 = var22.."_v"..arg2.menu_version
	end
	var22 = arg2.menu_session
	if var22 then
		var22 = var10_upvr
		if var22 then
			var22 = default_upvr:logEvent
			var22(var23, arg2)
			return
		end
		var22 = SendAnalytics_upvr
		var22(Constants_upvr_2.AnalyticsInGameMenuName, var23, arg2)
	end
end
local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID()
local function sendMenuOpening_upvr() -- Line 89, Named "sendMenuOpening"
	--[[ Upvalues[7]:
		[1]: var10_upvr (readonly)
		[2]: Constants_upvr_2 (readonly)
		[3]: var15_upvw (read and write)
		[4]: any_GenerateGUID_result1_upvr (readonly)
		[5]: var19_upvw (read and write)
		[6]: var17_upvw (read and write)
		[7]: sendEvent_upvr (readonly)
	]]
	local var25
	if var10_upvr then
		var25 = Constants_upvr_2.AnalyticsGameMenuOpenStart
	else
		var25 = Constants_upvr_2.AnalyticsPerfMenuOpening
	end
	local tbl_4 = {
		menu_session = var15_upvw;
		game_session = any_GenerateGUID_result1_upvr;
		count = var19_upvw;
		interrupted_closing = var17_upvw;
	}
	if var10_upvr then
		sendEvent_upvr(Constants_upvr_2.AnalyticsGameMenuFlowStart, tbl_4)
	end
	sendEvent_upvr(var25, tbl_4)
end
local function _(arg1, arg2) -- Line 105, Named "sendMenuStarted"
	--[[ Upvalues[4]:
		[1]: var10_upvr (readonly)
		[2]: Constants_upvr_2 (readonly)
		[3]: sendEvent_upvr (readonly)
		[4]: var15_upvw (read and write)
	]]
	local var27
	if var10_upvr then
		var27 = Constants_upvr_2.AnalyticsGameMenuOpenEnd
	else
		var27 = Constants_upvr_2.AnalyticsPerfMenuStarted
	end
	local tbl_2 = {
		menu_session = var15_upvw;
	}
	tbl_2.transition_time_total = arg1
	tbl_2.transition_time_normalized = arg2
	sendEvent_upvr(var27, tbl_2)
end
local function sendMenuClosed_upvr(arg1, arg2) -- Line 114, Named "sendMenuClosed"
	--[[ Upvalues[4]:
		[1]: var10_upvr (readonly)
		[2]: Constants_upvr_2 (readonly)
		[3]: var16_upvw (read and write)
		[4]: sendEvent_upvr (readonly)
	]]
	local var29
	if var10_upvr then
		var29 = Constants_upvr_2.AnalyticsGameMenuCloseEnd
	else
		var29 = Constants_upvr_2.AnalyticsPerfMenuClosed
	end
	local tbl_3 = {
		menu_session = var16_upvw;
	}
	tbl_3.transition_time_total = arg1
	tbl_3.transition_time_normalized = arg2
	sendEvent_upvr(var29, tbl_3)
	if var10_upvr then
		sendEvent_upvr(Constants_upvr_2.AnalyticsGameMenuFlowEnd, tbl_3)
	end
end
local function _(arg1, arg2) -- Line 128, Named "sendMenuEnding"
	--[[ Upvalues[5]:
		[1]: var10_upvr (readonly)
		[2]: Constants_upvr_2 (readonly)
		[3]: sendEvent_upvr (readonly)
		[4]: var15_upvw (read and write)
		[5]: var18_upvw (read and write)
	]]
	if arg2 then
	else
	end
	if var10_upvr then
	else
	end
	local tbl = {
		menu_session = var15_upvw;
	}
	tbl.session_time = arg1
	tbl.reason = "resume"
	tbl.interrupted_opening = var18_upvw
	sendEvent_upvr(Constants_upvr_2.AnalyticsPerfMenuEnding, tbl)
end
return {
	menuOpenBegin = function() -- Line 140, Named "menuOpenBegin"
		--[[ Upvalues[7]:
			[1]: var15_upvw (read and write)
			[2]: var19_upvw (read and write)
			[3]: os_clock_result1_upvw_2 (read and write)
			[4]: HttpService_upvr (readonly)
			[5]: sendMenuOpening_upvr (readonly)
			[6]: var18_upvw (read and write)
			[7]: var17_upvw (read and write)
		]]
		if var15_upvw then
		else
			var19_upvw += 1
			os_clock_result1_upvw_2 = os.clock()
			var15_upvw = HttpService_upvr:GenerateGUID()
			sendMenuOpening_upvr()
			var18_upvw = true
			var17_upvw = false
		end
	end;
	menuOpenComplete = function() -- Line 152, Named "menuOpenComplete"
		--[[ Upvalues[7]:
			[1]: os_clock_result1_upvw_2 (read and write)
			[2]: Constants_upvr (readonly)
			[3]: var10_upvr (readonly)
			[4]: Constants_upvr_2 (readonly)
			[5]: sendEvent_upvr (readonly)
			[6]: var15_upvw (read and write)
			[7]: var18_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var33 = os.clock() - os_clock_result1_upvw_2
		local var34
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
		var34 = Constants_upvr.ShieldCloseAnimationTweenTime
		-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 10. Error Block 10 start (CF ANALYSIS FAILED)
		if var10_upvr then
			var34 = Constants_upvr_2.AnalyticsGameMenuOpenEnd
		else
			var34 = Constants_upvr_2.AnalyticsPerfMenuStarted
		end
		sendEvent_upvr(var34, {
			menu_session = var15_upvw;
			transition_time_total = var33;
			transition_time_normalized = var33 - var34;
		})
		var34 = false
		var18_upvw = var34
		-- KONSTANTERROR: [12] 10. Error Block 10 end (CF ANALYSIS FAILED)
	end;
	menuClose = function() -- Line 159, Named "menuClose"
		--[[ Upvalues[9]:
			[1]: os_clock_result1_upvw (read and write)
			[2]: os_clock_result1_upvw_2 (read and write)
			[3]: var10_upvr (readonly)
			[4]: Constants_upvr_2 (readonly)
			[5]: sendEvent_upvr (readonly)
			[6]: var15_upvw (read and write)
			[7]: var18_upvw (read and write)
			[8]: var16_upvw (read and write)
			[9]: var17_upvw (read and write)
		]]
		os_clock_result1_upvw = os.clock()
		local var36 = os_clock_result1_upvw
		if var10_upvr then
			var36 = Constants_upvr_2.AnalyticsGameMenuCloseStart
		else
			var36 = Constants_upvr_2.AnalyticsPerfMenuEnding
		end
		sendEvent_upvr(var36, {
			menu_session = var15_upvw;
			session_time = var36 - os_clock_result1_upvw_2;
			reason = "resume";
			interrupted_opening = var18_upvw;
		})
		var16_upvw = var15_upvw
		var15_upvw = nil
		var18_upvw = false
		var17_upvw = true
	end;
	menuCloseComplete = function() -- Line 168, Named "menuCloseComplete"
		--[[ Upvalues[5]:
			[1]: os_clock_result1_upvw (read and write)
			[2]: Constants_upvr (readonly)
			[3]: sendMenuClosed_upvr (readonly)
			[4]: var16_upvw (read and write)
			[5]: var17_upvw (read and write)
		]]
		local var38 = os.clock() - os_clock_result1_upvw
		sendMenuClosed_upvr(var38, var38 - Constants_upvr.ShieldCloseAnimationTweenTime)
		var16_upvw = nil
		var17_upvw = false
	end;
	leavingGame = function() -- Line 176, Named "leavingGame"
		--[[ Upvalues[6]:
			[1]: os_clock_result1_upvw_2 (read and write)
			[2]: var10_upvr (readonly)
			[3]: Constants_upvr_2 (readonly)
			[4]: sendEvent_upvr (readonly)
			[5]: var15_upvw (read and write)
			[6]: var18_upvw (read and write)
		]]
		local var39 = os_clock_result1_upvw_2
		if var10_upvr then
			var39 = Constants_upvr_2.AnalyticsGameMenuCloseStart
		else
			var39 = Constants_upvr_2.AnalyticsPerfMenuEnding
		end
		sendEvent_upvr(var39, {
			menu_session = var15_upvw;
			session_time = os.clock() - var39;
			reason = "leaving";
			interrupted_opening = var18_upvw;
		})
		var15_upvw = nil
	end;
	getFps = function() -- Line 44, Named "getFps"
		--[[ Upvalues[1]:
			[1]: var12_upvr (readonly)
		]]
		if var12_upvr then
			return 1000 / var12_upvr:GetValue()
		end
		return nil
	end;
}