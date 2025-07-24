-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:54
-- Luau version 6, Types version 3
-- Time taken: 0.001541 seconds

local function _(arg1, arg2) -- Line 28, Named "mapProp"
	if arg1 ~= nil then
		return arg2(arg1)
	end
	return nil
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 36
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({}, module_upvr)
end
local FFlagGamepadMenuActionTelemetry_upvr = require(script.Parent.Parent.Flags.FFlagGamepadMenuActionTelemetry)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("GamepadMenuActionThrottleHundrethsPercent", 0)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TelemetryServicePlaySessionInfoEnabled")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local TelemetryService_upvr = game:GetService("TelemetryService")
function module_upvr.onOptionSelected(arg1) -- Line 41
	--[[ Upvalues[5]:
		[1]: FFlagGamepadMenuActionTelemetry_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
		[3]: game_GetEngineFeature_result1_upvr (readonly)
		[4]: RbxAnalyticsService_upvr (readonly)
		[5]: TelemetryService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var8
	if not FFlagGamepadMenuActionTelemetry_upvr then
	else
		local tbl_2 = {}
		var8 = "coreui_gamepad_menu_action"
		tbl_2.eventName = var8
		var8 = {}
		var8[1] = "EventIngest"
		tbl_2.backends = var8
		var8 = game_DefineFastInt_result1_upvr
		tbl_2.throttlingPercentage = var8
		var8 = {}
		var8[1] = 25
		var8[2] = 4
		var8[3] = 30
		tbl_2.lastUpdated = var8
		var8 = "Event fired from the client every time GamepadMenu Options are Selected"
		tbl_2.description = var8
		var8 = "https://github.rbx.com/Roblox/proto-schemas/pull/5803"
		tbl_2.links = var8
		var8 = {}
		var8[1] = "addPlaceId"
		var8[2] = "addUniverseId"
		var8[3] = "addSessionInfo"
		local tbl = {}
		local menuOptionName = arg1.menuOptionName
		tbl.menu_option_name = menuOptionName
		local usedShortcut = arg1.usedShortcut
		if usedShortcut ~= nil then
			menuOptionName = tostring(usedShortcut)
		else
			menuOptionName = nil
		end
		tbl.used_shortcut = menuOptionName
		if arg1.isToggleOpen ~= nil then
			-- KONSTANTWARNING: GOTO [70] #50
		end
		-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [69] 49. Error Block 25 start (CF ANALYSIS FAILED)
		tbl.is_toggle_open = nil
		if game_GetEngineFeature_result1_upvr then
			table.insert(var8, "addPlaySessionId")
		else
			var8 = {"addPlaceId", "addUniverseId", "addSessionInfo"}
			tbl.playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId()
		end
		TelemetryService_upvr:LogEvent(tbl_2, {
			standardizedFields = var8;
			customFields = tbl;
		})
		-- KONSTANTERROR: [69] 49. Error Block 25 end (CF ANALYSIS FAILED)
	end
end
module_upvr.default = module_upvr.new()
return module_upvr