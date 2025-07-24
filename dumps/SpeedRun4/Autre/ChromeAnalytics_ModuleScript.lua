-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:45
-- Luau version 6, Types version 3
-- Time taken: 0.013069 seconds

local ChromeShared = script:FindFirstAncestor("ChromeShared")
local CorePackages = game:GetService("CorePackages")
local Service_upvr = require(ChromeShared.Service)
local Constants_upvr = require(ChromeShared.Unibar.Constants)
local FFlagIntegrationsChromeShortcutTelemetry_upvr = require(ChromeShared.Parent.Flags.FFlagIntegrationsChromeShortcutTelemetry)
local tbl_6_upvr = {
	INACTIVE = 0;
	ACTIVE = 1;
}
local tbl_9_upvr = {
	NONE = 0;
	STARTED = 1;
	DRAGGED = 2;
}
local module_upvr = {}
module_upvr.__index = module_upvr
local class_PlayerGui_upvr = game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui")
local UserInputService_upvr = game:GetService("UserInputService")
local function getDynamicEventProps_upvr() -- Line 97, Named "getDynamicEventProps"
	--[[ Upvalues[3]:
		[1]: class_PlayerGui_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	local var11 = "Unknown"
	if class_PlayerGui_upvr then
		local var12 = Constants_upvr.ANALYTICS.SCREEN_ORIENTATION_MAP[class_PlayerGui_upvr.CurrentScreenOrientation]
		if not var12 then
			var12 = tostring(class_PlayerGui_upvr.CurrentScreenOrientation)
		end
		var11 = var12
	end
	var12 = Constants_upvr.ANALYTICS.INPUT_TYPE_MAP[UserInputService_upvr:GetLastInputType()]
	local var13 = var12
	if not var13 then
		var13 = tostring(UserInputService_upvr:GetLastInputType())
	end
	return {
		screen_orientation = var11;
		last_input_device = var13;
	}
end
local function _(arg1, arg2) -- Line 114, Named "getTrackerName"
	return arg1..arg2
end
local function _(arg1) -- Line 118, Named "getIntegration"
	--[[ Upvalues[1]:
		[1]: Service_upvr (readonly)
	]]
	return Service_upvr:integrations()[arg1]
end
local function _(arg1) -- Line 122, Named "getInteractionSource"
	--[[ Upvalues[1]:
		[1]: Service_upvr (readonly)
	]]
	if Service_upvr:withinCurrentSubmenu(arg1) then
		return Service_upvr:currentSubMenu():get()
	end
	if Service_upvr:withinCurrentTopLevelMenu(arg1) then
		return "unibar"
	end
	return "unknown"
end
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local Tracker_upvr = require(ChromeShared.Analytics.Tracker)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local any_GetFFlagEnableChromeAnalytics_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromeAnalytics()
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local GuiService_upvr = game:GetService("GuiService")
function module_upvr.new() -- Line 133
	--[[ Upvalues[11]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: Tracker_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: game_GetEngineFeature_result1_upvr (readonly)
		[5]: any_GetFFlagEnableChromeAnalytics_result1_upvr (readonly)
		[6]: Service_upvr (readonly)
		[7]: tbl_6_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: getDynamicEventProps_upvr (readonly)
		[10]: GuiService_upvr (readonly)
		[11]: FFlagIntegrationsChromeShortcutTelemetry_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local setmetatable_result1_upvr = setmetatable({
		_target = "client";
		_context = "chrome";
		_defaultProps = {
			screen_width = 0;
			screen_height = 0;
			universeid = tostring(game.GameId);
			placeid = tostring(game.PlaceId);
			sessionid = RbxAnalyticsService_upvr:GetSessionId();
			is_game_menu_opened = false;
		};
		_tracker = Tracker_upvr.new();
	}, module_upvr)
	if game_GetEngineFeature_result1_upvr then
		setmetatable_result1_upvr._defaultProps.playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	if not any_GetFFlagEnableChromeAnalytics_result1_upvr then
		return setmetatable_result1_upvr
	end
	function setmetatable_result1_upvr._observeIntegration(arg1) -- Line 158
		--[[ Upvalues[3]:
			[1]: Service_upvr (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
			[3]: tbl_6_upvr (copied, readonly)
		]]
		local var33_upvr = Service_upvr:integrations()[arg1]
		if var33_upvr and var33_upvr.windowSize then
			setmetatable_result1_upvr._tracker:set("window_size_"..arg1, var33_upvr.windowSize:get())
			var33_upvr.windowSize:connect(function(arg1_2) -- Line 167
				--[[ Upvalues[4]:
					[1]: var33_upvr (readonly)
					[2]: setmetatable_result1_upvr (copied, readonly)
					[3]: arg1 (readonly)
					[4]: tbl_6_upvr (copied, readonly)
				]]
				if typeof(arg1_2) ~= "UDim2" then
				else
					local any_get_result1_2 = var33_upvr.windowSize:get()
					local var36 = "window_size_"..arg1
					if setmetatable_result1_upvr._tracker:get("window_status_"..arg1) == tbl_6_upvr.ACTIVE then
						if setmetatable_result1_upvr._tracker:get(var36) then
							setmetatable_result1_upvr:onWindowResize(arg1, any_get_result1_2)
						end
						setmetatable_result1_upvr._tracker:set(var36, any_get_result1_2)
					end
				end
			end)
		end
	end
	function setmetatable_result1_upvr._resetWindowTrackers(arg1) -- Line 190
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr._tracker:reset("window_dposition_"..arg1)
		setmetatable_result1_upvr._tracker:reset("window_position_"..arg1)
		setmetatable_result1_upvr._tracker:reset("window_size_"..arg1)
		setmetatable_result1_upvr._tracker:reset("window_drag_"..arg1)
		setmetatable_result1_upvr._tracker:reset("window_status_"..arg1)
	end
	function setmetatable_result1_upvr._defaultWindowTrackers(arg1) -- Line 198
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: tbl_6_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr._resetWindowTrackers(arg1)
		setmetatable_result1_upvr._tracker:startTime("window_time_"..arg1)
		setmetatable_result1_upvr._tracker:set("window_status_"..arg1, tbl_6_upvr.ACTIVE)
	end
	function setmetatable_result1_upvr._sendEvent(arg1, arg2) -- Line 204
		--[[ Upvalues[4]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: getDynamicEventProps_upvr (copied, readonly)
			[3]: setmetatable_result1_upvr (readonly)
			[4]: RbxAnalyticsService_upvr (copied, readonly)
		]]
		local var40 = arg2
		if not var40 then
			var40 = {}
		end
		RbxAnalyticsService_upvr:SendEventDeferred(setmetatable_result1_upvr._target, setmetatable_result1_upvr._context, arg1, Cryo_upvr.Dictionary.join(getDynamicEventProps_upvr(), setmetatable_result1_upvr._defaultProps, var40))
	end
	function setmetatable_result1_upvr._calculateWindowAbsolutePosition(arg1, arg2) -- Line 209
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		return Vector2.new(arg1.X.Scale * setmetatable_result1_upvr._defaultProps.screen_width + arg1.X.Offset - arg2.Width.Offset / 2, arg1.Y.Scale * setmetatable_result1_upvr._defaultProps.screen_height + arg1.Y.Offset - arg2.Height.Offset / 2)
	end
	function setmetatable_result1_upvr._setWindowLastPosition(arg1, arg2) -- Line 218
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr._tracker:set("window_position_"..arg1, arg2)
	end
	GuiService_upvr.MenuOpened:Connect(function() -- Line 222
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr._defaultProps.is_game_menu_opened = not setmetatable_result1_upvr._defaultProps.is_game_menu_opened
	end)
	for _, v in Service_upvr:integrations() do
		setmetatable_result1_upvr._observeIntegration(v.id)
	end
	Service_upvr:onIntegrationRegistered():connect(function(arg1) -- Line 230
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr._observeIntegration(arg1)
	end)
	Service_upvr:onIntegrationActivated():connect(function(arg1, arg2) -- Line 235
		--[[ Upvalues[2]:
			[1]: FFlagIntegrationsChromeShortcutTelemetry_upvr (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
		]]
		if FFlagIntegrationsChromeShortcutTelemetry_upvr then
			setmetatable_result1_upvr:onIconActivated(arg1, arg2)
		else
			setmetatable_result1_upvr:onIconActivated(arg1)
		end
	end)
	Service_upvr:onIntegrationStatusChanged():connect(function(arg1, arg2) -- Line 243
		--[[ Upvalues[2]:
			[1]: Service_upvr (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
		]]
		local var50 = Service_upvr:integrations()[arg1]
		if var50 and var50.components.Window then
			if arg2 == Service_upvr.IntegrationStatus.Window then
				setmetatable_result1_upvr:onWindowOpened(arg1)
				return
			end
			setmetatable_result1_upvr:onWindowClosed(arg1)
		end
	end)
	return setmetatable_result1_upvr
end
function module_upvr.setPin(arg1, arg2, arg3, arg4) -- Line 257
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Service_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	if arg3 then
	else
	end
	local tbl_3 = {}
	tbl_3.integration_id = arg2
	if Service_upvr:withinCurrentSubmenu(arg2) then
		-- KONSTANTWARNING: GOTO [41] #32
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 24. Error Block 20 start (CF ANALYSIS FAILED)
	if Service_upvr:withinCurrentTopLevelMenu(arg2) then
	else
	end
	tbl_3.source = "unknown"
	tbl_3.user_pins = table.concat(arg4, ',')
	arg1._sendEvent(Constants_upvr.ANALYTICS.PIN_REMOVED, tbl_3)
	do
		return nil
	end
	-- KONSTANTERROR: [32] 24. Error Block 20 end (CF ANALYSIS FAILED)
end
function module_upvr.setScreenSize(arg1, arg2) -- Line 268
	arg1._defaultProps.screen_width = arg2.X
	arg1._defaultProps.screen_height = arg2.Y
	return nil
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnabledChromeIntegrationIsActivated", false)
function module_upvr.onIconActivated(arg1, arg2, arg3) -- Line 274
	--[[ Upvalues[4]:
		[1]: Service_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: FFlagIntegrationsChromeShortcutTelemetry_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var53 = Service_upvr:integrations()[arg2]
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 33 start (CF ANALYSIS FAILED)
	if var53.notification:get().type == "count" then
	end
	if var53.isActivated and game_DefineFastFlag_result1_upvr then
	else
	end
	;({}).integration_id = arg2
	if Service_upvr:withinCurrentSubmenu(arg2) then
		-- KONSTANTWARNING: GOTO [67] #51
	end
	-- KONSTANTERROR: [6] 6. Error Block 33 end (CF ANALYSIS FAILED)
end
function module_upvr.onIconTouchBegan(arg1, arg2) -- Line 301
	--[[ Upvalues[1]:
		[1]: tbl_9_upvr (readonly)
	]]
	arg1._tracker:set("icon_drag_"..arg2, tbl_9_upvr.STARTED)
	return nil
end
function module_upvr.onIconDrag(arg1, arg2) -- Line 306
	--[[ Upvalues[3]:
		[1]: tbl_9_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Service_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var55 = "icon_drag_"..arg2
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 14 start (CF ANALYSIS FAILED)
	arg1._tracker:set(var55, tbl_9_upvr.DRAGGED)
	;({}).integration_id = arg2
	if Service_upvr:withinCurrentSubmenu(arg2) then
		-- KONSTANTWARNING: GOTO [56] #42
	end
	-- KONSTANTERROR: [14] 11. Error Block 14 end (CF ANALYSIS FAILED)
end
function module_upvr.onIconTouchEnded(arg1, arg2, arg3, arg4) -- Line 319
	--[[ Upvalues[3]:
		[1]: Service_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	local var56 = "icon_drag_"..arg2
	local var57 = Service_upvr:integrations()[arg2]
	if var57 and var57.windowSize and arg1._tracker:get(var56) == tbl_9_upvr.DRAGGED then
		arg1._tracker:reset(var56)
		arg1._setWindowLastPosition(arg2, arg3)
		local any_get_result1 = var57.windowSize:get()
		local var59 = Constants_upvr
		local tbl_7 = {}
		tbl_7.integration_id = arg2
		if Service_upvr:withinCurrentSubmenu(arg2) then
			var59 = Service_upvr:currentSubMenu():get()
		elseif Service_upvr:withinCurrentTopLevelMenu(arg2) then
			var59 = "unibar"
		else
			var59 = "unknown"
		end
		tbl_7.source = var59
		tbl_7.window_position_x = arg3.X
		tbl_7.window_position_y = arg3.Y
		tbl_7.window_width = any_get_result1.Width.Offset
		tbl_7.window_height = any_get_result1.Height.Offset
		tbl_7.will_reposition = arg4
		arg1._sendEvent(var59.ANALYTICS.ICON_DRAG_END, tbl_7)
	end
	return nil
end
local GetFFlagChromeTrackWindowPosition_upvr = require(ChromeShared.Parent.Flags.GetFFlagChromeTrackWindowPosition)
function module_upvr.onWindowOpened(arg1, arg2) -- Line 346
	--[[ Upvalues[5]:
		[1]: Service_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: GetFFlagChromeTrackWindowPosition_upvr (readonly)
		[4]: tbl_9_upvr (readonly)
		[5]: Constants_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [117] 88. Error Block 18 start (CF ANALYSIS FAILED)
	local tbl = {}
	tbl.integration_id = arg2
	arg1._sendEvent(Constants_upvr.ANALYTICS.WINDOW_OPENED, tbl)
	-- KONSTANTERROR: [117] 88. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [128] 95. Error Block 19 start (CF ANALYSIS FAILED)
	do
		return nil
	end
	-- KONSTANTERROR: [128] 95. Error Block 19 end (CF ANALYSIS FAILED)
end
function module_upvr.onWindowClosed(arg1, arg2) -- Line 393
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	if arg1._tracker:get("window_status_"..arg2) == tbl_6_upvr.ACTIVE then
		local tbl_2 = {}
		tbl_2.integration_id = arg2
		tbl_2.total_open_time = arg1._tracker:finishTime("window_time_"..arg2)
		arg1._sendEvent(Constants_upvr.ANALYTICS.WINDOW_CLOSED, tbl_2)
		arg1._resetWindowTrackers(arg2)
	end
	return nil
end
function module_upvr.onWindowTouchBegan(arg1, arg2, arg3) -- Line 406
	--[[ Upvalues[2]:
		[1]: Service_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
	]]
	local var64 = Service_upvr:integrations()[arg2]
	if var64 and var64.windowSize then
		arg1._tracker:set("window_drag_"..arg2, tbl_9_upvr.STARTED)
	end
	return nil
end
function module_upvr.onWindowDrag(arg1, arg2, arg3) -- Line 414
	--[[ Upvalues[3]:
		[1]: Service_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	local var65 = "window_drag_"..arg2
	local var66 = Service_upvr:integrations()[arg2]
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local var68
		local any_get_result1_9 = arg1._tracker:get("window_position_"..arg2)
		return any_get_result1_9
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		local vector2 = Vector2.new(arg3.X - any_get_result1_9.X, arg3.Y - any_get_result1_9.Y)
		return vector2.X ~= 0
	end
	if var66 and var66.windowSize and arg1._tracker:get(var65) == tbl_9_upvr.STARTED and INLINED() and (INLINED_2() or vector2.Y ~= 0) then
		arg1._tracker:set(var65, tbl_9_upvr.DRAGGED)
		local any_get_result1_7 = var66.windowSize:get()
		var68 = arg2
		var68 = Constants_upvr
		local tbl_8 = {}
		tbl_8.integration_id = arg2
		var68 = any_get_result1_9.X
		tbl_8.position_x = var68
		var68 = any_get_result1_9.Y
		tbl_8.position_y = var68
		var68 = any_get_result1_7.Width.Offset
		tbl_8.width = var68
		var68 = any_get_result1_7.Height.Offset
		tbl_8.height = var68
		if arg1._tracker:get("window_dposition_"..var68) ~= any_get_result1_9 then
			var68 = false
		else
			var68 = true
		end
		tbl_8.is_starting_position = var68
		arg1._sendEvent(var68.ANALYTICS.WINDOW_DRAG_START, tbl_8)
	end
	return nil
end
function module_upvr.onWindowTouchEnded(arg1, arg2, arg3, arg4) -- Line 447
	--[[ Upvalues[3]:
		[1]: Service_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	local var72 = Service_upvr:integrations()[arg2]
	if arg1._tracker:get("icon_drag_"..arg2) == tbl_9_upvr.DRAGGED then
		return arg1:onIconTouchEnded(arg2, arg3, arg4)
	end
	local var73 = "window_drag_"..arg2
	if var72 and var72.windowSize and arg1._tracker:get(var73) == tbl_9_upvr.DRAGGED then
		local any_get_result1_8 = var72.windowSize:get()
		arg1._tracker:reset(var73)
		arg1._setWindowLastPosition(arg2, arg3)
		local tbl_10 = {}
		tbl_10.integration_id = arg2
		tbl_10.position_x = arg3.X
		tbl_10.position_y = arg3.Y
		tbl_10.width = any_get_result1_8.Width.Offset
		tbl_10.height = any_get_result1_8.Height.Offset
		tbl_10.will_autoposition = arg4
		arg1._sendEvent(Constants_upvr.ANALYTICS.WINDOW_DRAG_END, tbl_10)
	end
	return nil
end
function module_upvr.setWindowDefaultPosition(arg1, arg2, arg3) -- Line 479
	arg1._tracker:set("window_dposition_"..arg2, arg3)
	arg1._setWindowLastPosition(arg2, arg3)
	return nil
end
function module_upvr.onWindowResize(arg1, arg2, arg3) -- Line 485
	--[[ Upvalues[2]:
		[1]: Service_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var82 = Service_upvr:integrations()[arg2]
	if var82 then
		local var83
		if var82.windowSize then
			local var84 = "window_size_"..arg2
			var83 = var84
			local any_get_result1_5 = arg1._tracker:get(var83)
			local any_get_result1_3 = arg1._tracker:get("window_position_"..arg2)
			var83 = nil
			if any_get_result1_3 then
				var83 = Vector2.new(any_get_result1_3.X + (any_get_result1_5.Width.Offset - arg3.Width.Offset) / 2, any_get_result1_3.Y + (any_get_result1_5.Height.Offset - arg3.Height.Offset) / 2)
			end
			if var83 then
				arg1._setWindowLastPosition(arg2, var83)
			end
			arg1._tracker:set(var84, arg3)
			local tbl_4 = {}
			tbl_4.integration_id = arg2
			if not any_get_result1_3 or not any_get_result1_3.X then
			end
			tbl_4.previous_position_x = nil
			if not any_get_result1_3 or not any_get_result1_3.Y then
			end
			tbl_4.previous_position_y = nil
			if not any_get_result1_5 or not any_get_result1_5.Width.Offset then
			end
			tbl_4.previous_width = nil
			if not any_get_result1_5 or not any_get_result1_5.Height.Offset then
			end
			tbl_4.previous_height = nil
			if not var83 or not var83.X then
			end
			tbl_4.current_position_x = nil
			if not var83 or not var83.Y then
			end
			tbl_4.current_position_y = nil
			tbl_4.current_width = arg3.Width.Offset
			tbl_4.current_height = arg3.Height.Offset
			arg1._sendEvent(Constants_upvr.ANALYTICS.WINDOW_RESIZE, tbl_4)
		end
	end
	return nil
end
module_upvr.default = module_upvr.new()
return module_upvr