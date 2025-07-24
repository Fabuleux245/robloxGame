-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:41
-- Luau version 6, Types version 3
-- Time taken: 0.002377 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local UserInputService_upvr = game:GetService("UserInputService")
local InputTypeMap_upvr = Constants_upvr.InputTypeMap
local FFlagIEMSettingsAddPlaySessionID_upvr = require(Parent.Parent.Settings.Flags).FFlagIEMSettingsAddPlaySessionID
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
return function(arg1, arg2, arg3, arg4, arg5) -- Line 16
	--[[ Upvalues[6]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: InputTypeMap_upvr (readonly)
		[5]: FFlagIEMSettingsAddPlaySessionID_upvr (readonly)
		[6]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	if arg5 == nil then
	end
	if arg4 == true then
	end
	if not (function() -- Line 22, Named "reportSettingsForAnalytics"
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local GameSettings = UserSettings().GameSettings
		local module = {}
		local var11
		if UserInputService_upvr.TouchEnabled then
			var11 = GameSettings.TouchCameraMovementMode
			module.camera_mode_touch = tostring(var11)
		else
			var11 = GameSettings.ComputerCameraMovementMode
			module.camera_mode_desktop = tostring(var11)
		end
		var11 = UserInputService_upvr
		if var11.TouchEnabled then
			var11 = GameSettings.TouchMovementMode
			module.movement_mode_touch = tostring(var11)
		else
			var11 = GameSettings.ComputerMovementMode
			module.movement_mode_desktop = tostring(var11)
		end
		var11 = UserInputService_upvr
		if var11.MouseEnabled then
			if GameSettings.ControlMode ~= Enum.ControlMode.MouseLockSwitch then
				var11 = false
			else
				var11 = true
			end
			module.shift_lock_enabled = tostring(var11)
		end
		var11 = UserInputService_upvr
		if var11.GamepadEnabled and GameSettings.IsUsingGamepadCameraSensitivity then
			var11 = "%.2f"
			module.camera_sensitivity_gamepad = string.format(var11, GameSettings.GamepadCameraSensitivity)
		end
		var11 = UserInputService_upvr
		if var11.MouseEnabled then
			var11 = "%.2f"
			module.camera_sensitivity_mouse = string.format(var11, GameSettings.MouseSensitivityFirstPerson.X)
		end
		var11 = GameSettings.CameraYInverted
		module.camera_y_inverted = tostring(var11)
		var11 = GameSettings.PerformanceStatsVisible
		module.show_performance_stats = tostring(var11)
		var11 = math.floor(GameSettings.MasterVolume * 10 + 0.5)
		module.volume = tostring(var11)
		var11 = settings().Rendering.QualityLevel
		module.gfx_quality_level = tostring(var11)
		var11 = GameSettings:InFullScreen()
		module.fullscreen_enabled = tostring(var11)
		var11 = GameSettings.OnScreenProfilerEnabled
		module.microprofiler_enabled = tostring(var11)
		var11 = GameSettings.MicroProfilerWebServerEnabled
		module.microprofiler_webserver_enabled = tostring(var11)
		return module
	end)() then
		local tbl = {}
	end
	tbl.universeid = tostring(game.GameId)
	if not InputTypeMap_upvr[UserInputService_upvr:GetLastInputType()] then
	end
	tbl.inputDevice = tostring(UserInputService_upvr:GetLastInputType())
	if FFlagIEMSettingsAddPlaySessionID_upvr and tbl.playsessionid == nil and game_GetEngineFeature_result1_upvr then
		tbl.playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	RbxAnalyticsService_upvr:SetRBXEventStream(Constants_upvr.AnalyticsTargetName, Constants_upvr.AnalyticsInGameMenuName, Constants_upvr.AnalyticsSettingsChangeName, tbl)
end