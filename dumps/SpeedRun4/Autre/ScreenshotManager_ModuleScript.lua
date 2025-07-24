-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:01
-- Luau version 6, Types version 3
-- Time taken: 0.002828 seconds

local function _() -- Line 6
	local game_GetEngineFeature_result1 = game:GetEngineFeature("ReportAnythingScreenshot")
	if game_GetEngineFeature_result1 then
		game_GetEngineFeature_result1 = game:GetEngineFeature("ReportAnythingScreenshotUploadedSignal")
	end
	return game_GetEngineFeature_result1
end
local module = {}
module.__index = module
local tbl_upvr = {}
local tbl_upvr_2 = {}
local var6_upvw = false
local tbl_2_upvr = {
	RAABTestReason = "RAABTest";
}
local function var8_upvr(arg1) -- Line 27
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var6_upvw (read and write)
	]]
	arg1.ScreenshotUploaded:Connect(function(arg1_2, arg2) -- Line 28
		--[[ Upvalues[1]:
			[1]: tbl_upvr (copied, readonly)
		]]
		local var10 = tbl_upvr[arg1_2]
		if not var10 then
		else
			var10(arg2)
			table.remove(tbl_upvr, arg1_2)
		end
	end)
	arg1.ScreenshotContentReady:Connect(function(arg1_3, arg2) -- Line 37
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (copied, readonly)
		]]
		local var12 = tbl_upvr_2[arg1_3]
		if not var12 then
		else
			var12(arg2)
			table.remove(tbl_upvr_2, arg1_3)
		end
	end)
	var6_upvw = true
end
local GetFFlagEnableInAppBugReporting_upvr = require(script:FindFirstAncestor("TnSScreenshot").Parent.SharedFlags).GetFFlagEnableInAppBugReporting
function module.TakeScreenshotWithCallback(arg1, arg2, arg3, arg4) -- Line 59
	--[[ Upvalues[6]:
		[1]: GetFFlagEnableInAppBugReporting_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: var6_upvw (read and write)
		[6]: var8_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local game_GetEngineFeature_result1_2 = game:GetEngineFeature("ReportAnythingScreenshot")
	if game_GetEngineFeature_result1_2 then
		game_GetEngineFeature_result1_2 = game:GetEngineFeature("ReportAnythingScreenshotUploadedSignal")
	end
	if not game_GetEngineFeature_result1_2 then
		return false
	end
	local SafetyService = game:GetService("SafetyService")
	if arg3 ~= nil then
	else
	end
	local tbl = {
		registerContent = 0;
	}
	if GetFFlagEnableInAppBugReporting_upvr() then
		if not arg4 then
			-- KONSTANTWARNING: GOTO [42] #33
		end
	else
	end
	tbl.reason = tbl_2_upvr.RAABTestReason
	local any_TakeScreenshot_result1 = SafetyService:TakeScreenshot(tbl)
	tbl_upvr[any_TakeScreenshot_result1] = arg2
	tbl_upvr_2[any_TakeScreenshot_result1] = arg3
	if not var6_upvw then
		var8_upvr(SafetyService)
	end
	return true
end
return module