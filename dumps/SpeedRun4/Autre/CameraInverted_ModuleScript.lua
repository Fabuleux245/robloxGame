-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:50
-- Luau version 6, Types version 3
-- Time taken: 0.001984 seconds

local GameSettings_upvr = UserSettings().GameSettings
local SettingsService = require(game:GetService("CorePackages").Workspace.Packages.SettingsService)
local ValueChangedSignal_upvr = SettingsService.ValueChangedSignal
local AvailabilitySignal_upvr = SettingsService.AvailabilitySignal
local function _() -- Line 22, Named "CameraInvertedValue"
	--[[ Upvalues[2]:
		[1]: ValueChangedSignal_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
	]]
	local any_new_result1 = ValueChangedSignal_upvr.new(GameSettings_upvr.CameraYInverted)
	any_new_result1:connect(function(arg1) -- Line 25
		--[[ Upvalues[1]:
			[1]: GameSettings_upvr (copied, readonly)
		]]
		if GameSettings_upvr.CameraYInverted == arg1 then
		else
			GameSettings_upvr.CameraYInverted = arg1
		end
	end, true)
	return any_new_result1
end
local function _() -- Line 36, Named "CameraInvertedAvailability"
	--[[ Upvalues[2]:
		[1]: AvailabilitySignal_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
	]]
	local any_new_result1_upvr = AvailabilitySignal_upvr.new(GameSettings_upvr.IsUsingCameraYInverted)
	GameSettings_upvr.Changed:Connect(function(arg1) -- Line 39
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (readonly)
			[2]: GameSettings_upvr (copied, readonly)
		]]
		if arg1 == "IsUsingCameraYInverted" then
			any_new_result1_upvr:set(GameSettings_upvr.IsUsingCameraYInverted)
		end
	end)
	return any_new_result1_upvr
end
local module = {
	id = "camera-inverted";
	field_type = SettingsService.FieldType.Toggle;
	label = "CoreScripts.InGameMenu.GameSettings.InvertedCamera";
	alreadyLocalized = false;
}
local any_new_result1_3 = ValueChangedSignal_upvr.new(GameSettings_upvr.CameraYInverted)
any_new_result1_3:connect(function(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: GameSettings_upvr (readonly)
	]]
	if GameSettings_upvr.CameraYInverted == arg1 then
	else
		GameSettings_upvr.CameraYInverted = arg1
	end
end, true)
module.onChanged = any_new_result1_3
local any_new_result1_2_upvr = AvailabilitySignal_upvr.new(GameSettings_upvr.IsUsingCameraYInverted)
GameSettings_upvr.Changed:Connect(function(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: any_new_result1_2_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
	]]
	if arg1 == "IsUsingCameraYInverted" then
		any_new_result1_2_upvr:set(GameSettings_upvr.IsUsingCameraYInverted)
	end
end)
module.availability = any_new_result1_2_upvr
module.layoutOrder = require(script:FindFirstAncestor("Settings").Integrations.Constants).GAMESETTINGS.LAYOUT_ORDER.CameraInvertedFrame
return module